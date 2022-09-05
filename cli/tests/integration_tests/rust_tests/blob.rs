use crate::framework::prelude::*;

#[chisel_macros::test(modules = Deno)]
pub async fn blob_type(c: TestContext) {
    c.chisel.write(
        "models/model.ts",
        r##"
        import { ChiselEntity } from "@chiselstrike/api";
        export class Foo extends ChiselEntity { blob: Blob; }
    "##,
    );
    c.chisel.apply_ok().await;
}