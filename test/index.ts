import * as chai from "chai";
import * as fs from "fs";
import * as path from "path";
import "reflect-metadata";
const should = chai.should;
const expect = chai.expect;
const assert = chai.assert;

import {MlclCore} from "@molecuel/core";
import {di, injectable} from "@molecuel/di";
import {MlclTheme} from "../lib";

describe("mlcl_theme", () => {
    before(async () => {
        di.bootstrap(MlclCore, MlclTheme);
        const core: MlclCore = di.getInstance("MlclCore");
        await core.init();
    });

    it("should render some html", async () => {
        const theme = di.getInstance("MlclTheme");
        console.log(theme);
        await theme.registerTheme("demo", {path: path.resolve(__dirname, "..", "templates")});
        console.log(theme);
        /*
        const data = {
            content: "<h1>The message is the key</h1><p>The key is missing</p>",
            links: ["a.css", "c.css"],
            title: "Demo site!",
            name: {
                firstname: "Alex",
                lastname: "Knapstein",
            },
            menu: {
                items: [{
                    class: "item__class",
                    title: "menu item title",
                    items: [{
                        class: "sub_item__class",
                        title: "I am a subitem",
                    }],
                },
                {
                    class: "item__class active",
                    title: "second item title",
                }],
            },
        };
        const helo = await theme.render(data, {name: "demo", file: "views/index"});
        const expectedResult = fs.readFileSync(__dirname + "/index.html", "utf-8");
        assert(helo === expectedResult);*/
    });
}); // test end
