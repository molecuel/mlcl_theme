import "reflect-metadata";

import * as path from "path";
import {MlclTheme} from "../lib";
import {theme} from "../lib";

@theme("myTheme")
export class TestTheme extends MlclTheme {

    public constructor(name) {
        const options = {
            templatePath: path.resolve(__dirname, "..", "templates"),
        };
        super(name, options);
    }

}
