use diesel::Queryable;


#[derive(Queryable,Debug)]
pub struct Users {
    pub id: i32,
    pub u_name: String,
    pub u_sirname: String,
}