import {MlclCore} from "@molecuel/core";
import {di, injectable} from "@molecuel/di";
import {MlclTheme} from "./lib";

import * as fs from "fs";
import * as koa from "koa";
import * as path from "path";

const app = new koa();
let theme: any;

app.use(async (context) => {
  await theme.registerTheme("mydriver", {path: path.resolve(__dirname, "mydriver")});
  const data = JSON.parse(fs.readFileSync("confirmation.json", "utf-8"));
  if (data && data.booking && data.booking.selectedPickup && data.booking.selectedPickup.address) {
    data.booking.selectedPickup.address = data.booking.selectedPickup.address.split(", ");
  }
  const html = await theme.render(data, {name: "mydriver", file: "views/index_confirmation"});
  context.body = html;
});

async function init() {
  di.bootstrap(MlclCore, MlclTheme);
  theme = di.getInstance("MlclTheme");
  const core: MlclCore = di.getInstance("MlclCore");
  await core.init();
  app.listen(3000);
}

init();
