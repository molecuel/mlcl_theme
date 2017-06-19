import * as chai from "chai";
import "reflect-metadata";
const should = chai.should;
const expect = chai.expect;
const assert = chai.assert;

import {MlclCore} from "@molecuel/core";
import {di, injectable} from "@molecuel/di";

import {TestTheme} from "./TestTheme";

// tslint:disable:no-console

describe("mlcl_theme", () => {
    before(async () => {
        di.bootstrap(MlclCore);
        const core: MlclCore = di.getInstance("MlclCore");
        await core.init();
    });

    it("should render some helo", async () => {
        const theme = di.getInstance("MlclTheme").getInstance("myTheme"); // .getTheme("test");
        const data = {
            content: "<h1>The message is the key</h1><p>The key is missing</p>",
            links: ["a.css", "c.css"],
            title: "Daniela Donna is great!",
        };
        const helo = await theme.render(data);
        console.log(helo);
    });
}); // test end
