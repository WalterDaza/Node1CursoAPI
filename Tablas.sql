CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "password" varchar,
  "age" int,
  "roles_id" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "description" text,
  "level_id" int,
  "categories_id" int
);

CREATE TABLE "user_course" (
  "id" uuid,
  "user_id" uuid,
  "course_id" uuid
);

CREATE TABLE "level" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "courses_id" uuid
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "users" ADD FOREIGN KEY ("roles_id") REFERENCES "roles" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level_id") REFERENCES "level" ("id");

ALTER TABLE "user_course" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_course" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");
