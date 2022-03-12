#[macro_use] extern crate rocket;


use rocket::fs::{FileServer, relative,NamedFile};
use rocket::shield::Shield;


pub mod api;
pub use api::test::test;



#[get("/<_>")]
async fn default() -> Option<NamedFile> {
    NamedFile::open("static/index.html").await.ok()
}

#[launch]
fn rocket() -> rocket::Rocket<rocket::Build> {
    rocket::build()
        .mount("/", FileServer::from(relative!("/static")))
        .mount("/", routes![default,])
        .mount("/api", routes![test,])
        .attach(Shield::new())
}

