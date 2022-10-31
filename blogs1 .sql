CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "authors" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "category" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "comment" varchar
);

CREATE TABLE "blogs" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "user_id" int,
  "author_id" int,
  "comment_id" int,
  "category_id" int,
  "content" text
);

ALTER TABLE "blogs" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "blogs" ADD FOREIGN KEY ("author_id") REFERENCES "authors" ("id");

ALTER TABLE "blogs" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

ALTER TABLE "blogs" ADD FOREIGN KEY ("comment_id") REFERENCES "comments" ("id");

insert into users (name , email, password, age) values
('Jhon Espitia', 'Jhon@mail.com', '7450', 32),
('Luisa Machado', 'Luisa@mail.com', '2706', 30),
('Sofia Vergara', 'Sofi@mail.com', '1234', 28),
('Erika Rocha', 'Erika@mail.com', '4567', 29),
('Karen Hernandez', 'Karen@mail.com', '9876', 30);


insert into authors  (name) values
('Pepita Perez'),
('Camila Marin'),
('Sara Molinaro'),
('Alexandra Sexy');


insert into category (name) values
('General'),
('Action'),
('Crimen'),
('Cars'),
('Food');


insert into comments (comment) values
('Really Bad'),
('Bad'),
('Good'),
('Really Good'),
('Excellent');


insert into blogs (user_id , author_id, category_id, comment_id, title, description, content) values 
(1, 1, 4, 5, 'Bad Drivers', 'How to identify Bad Drivers', 'Are you a bad driver? find out here'),
(2, 2, 5, 1, 'Fast Food', 'Information about Fast Food', 'Where yo can find restaturants'),
(1, 2, 1, 3, 'Phones', 'Necessary or  not really?', 'Prices and Models');

