use backend::*;
use db::models::*;
use diesel::prelude::*;

#[get("/test")]
pub fn test() -> String {
    use backend::db::schema::users::dsl::*;


    let con = establish_connection();

    let res = users.load::<Users>(&con);

    let txt = format!("Setup test, db data:   \n\n\n {:?}",&res);
    return txt;
}
