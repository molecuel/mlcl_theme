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

    public async registerTheme(name, options: any) {
        const theme: any = {
            partials: {},
            templates: {},
        };
        if (!options.engine) { // later possibly other engines could be used..
            const handlebars = Handlebars.create();
            HandlebarsHelpers({handlebars});
            theme.handlebars = handlebars;
        }
        const files = await recursiveReaddir(options.path);
        for (const p of files) {
            const relative = path.relative(options.path, p);
            const info = path.parse(p);
            const content = fs.readFileSync(p, "utf-8");
            const parts = relative.split(path.sep);
            const filepart = parts.pop();
            const types = ["partials", "layouts"];
            let top;
            if (parts.length) {
                top = parts[0];
            }
            let filename;
            if (types.indexOf(top) > -1) {
                parts.shift(); // throw away first part
            }
            filename = path.join(parts.join(path.sep), info.name).replace(/\\/g, "/");
            if (theme.handlebars) {
                if (top === "partials") {
                  theme.partials[filename] = content;
                  theme.handlebars.registerPartial(filename, content);
                } else if (top === "helpers") {
                  const helpers = require(p);
                  if (helpers) {
                    for (const helpername of Object.keys(helpers)) {
                      if (typeof helpers[helpername] === "function") {
                        theme.handlebars.registerHelper(helpername, helpers[helpername]);
                      }
                    }
                  }
                } else if (top === "layouts" || top === "views") {
                  theme.templates[filename] = theme.handlebars.compile(content);
                }
            }
        }
        MlclTheme.getStore()[name] = theme;
    }

    public registerHelper(name, helpername, func) {
      const theme = MlclTheme.getStore()[name];
      if (theme.handlebars) {
        theme.handlebars.registerHelper(helpername, func);
      }
    }

    public async render(data, options) {
        const theme = MlclTheme.getStore()[options.name];
        const file = options.file;
        if (!options) {
            throw new Error("options parameter not defined");
        }
        if (!theme) {
            throw new Error("theme " + options.name + " not defined");
        }
        if (!file || !theme.templates[file]) {
            throw new Error("template file " + file + "not defined");
        }
        if (theme && theme.templates[file]) {
            return theme.templates[file](data);
        }
    }
}
