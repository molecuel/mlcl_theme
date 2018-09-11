"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const core_1 = require("@molecuel/core");
const di_1 = require("@molecuel/di");
const lib_1 = require("./lib");
const fs = require("fs");
const koa = require("koa");
const path = require("path");
const app = new koa();
let theme;
app.use((context) => __awaiter(this, void 0, void 0, function* () {
    yield theme.registerTheme("mydriver", { path: path.resolve(__dirname, "mydriver") });
    const data = JSON.parse(fs.readFileSync("confirmation.json", "utf-8"));
    if (data && data.booking && data.booking.selectedPickup && data.booking.selectedPickup.address) {
        data.booking.selectedPickup.address = data.booking.selectedPickup.address.split(", ");
    }
    const html = yield theme.render(data, { name: "mydriver", file: "views/index_confirmation" });
    context.body = html;
}));
function init() {
    return __awaiter(this, void 0, void 0, function* () {
        di_1.di.bootstrap(core_1.MlclCore, lib_1.MlclTheme);
        theme = di_1.di.getInstance("MlclTheme");
        const core = di_1.di.getInstance("MlclCore");
        yield core.init();
        app.listen(3000);
    });
}
init();
//# sourceMappingURL=index.js.map