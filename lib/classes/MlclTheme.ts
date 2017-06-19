import "reflect-metadata";

import {init, MlclCore} from "@molecuel/core";
import {di, injectable, singleton} from "@molecuel/di";
import * as fs from "fs";
import * as Handlebars from "handlebars";
import * as HandlebarsHelpers from "handlebars-helpers";
import * as path from "path";
import * as recursiveReaddir from "recursive-readdir";

@injectable
export class MlclTheme {

    public static getStore() {
        const store = di.getStore("MlclTheme");
        return store;
    }

    public static getThemes() {
        return Object.keys(MlclTheme.getStore());
    }

    protected static getClass(name) {
        const store = MlclTheme.getStore();
        return store[name].class;
    }

    protected name: string;
    protected store: any;
    private themes: any;
    private templatePath: string;
    private handlebars: any;

    public constructor(name, options) {
        options = options || {};
        this.name = name;
        this.templatePath = options.templatePath;
    }

    public getInstance(name) {
        const store = MlclTheme.getStore();
        if (store[name] && store[name].class) {
            return new store[name].class(name);
        } else {
            return undefined;
        }
    }

    public async render(data) {
        const templates = await this.loadTemplates();
        return templates["views\\index.html"](data);
    }

    protected getTemplates() {
        const store = MlclTheme.getStore();
        return store[this.name].templates;
    }

    protected getEngine() {
        const store = MlclTheme.getStore()[this.name];
        if (!store.handlebars) {
            store.handlebars = Handlebars.create();
            HandlebarsHelpers({handlebars: store.handlebars});
        }
        return store.handlebars;
    }

    protected async loadTemplates() {
        const templates = this.getTemplates();
        if (!Object.keys(templates).length) {
            const files = await recursiveReaddir(this.templatePath);
            for (const p of files) {
                const filename = path.relative(this.templatePath, p);
                templates[filename] = this.getEngine().compile(fs.readFileSync(p, "utf-8"));
            }
        }
        return templates;
    }

}

export function theme(themeName: string) {
    return (target: any) => {
        const store = MlclTheme.getStore();
        store[themeName] = {class: target, templates: {}, handlebars: undefined};
    };
}
