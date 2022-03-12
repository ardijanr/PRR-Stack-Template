-- Your SQL goes here

CREATE TABLE Users (
  id SERIAL PRIMARY KEY,
  u_name VARCHAR NOT NULL,
  u_sirname VARCHAR NOT NULL
);



INSERT INTO Users(u_name,u_sirname) VALUES ('Thomas','Thomasson');
INSERT INTO Users(u_name,u_sirname) VALUES ('Victor','Victorson');
INSERT INTO Users(u_name,u_sirname) VALUES ('Simen','Simenson');