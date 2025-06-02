CREATE TABLE "bg01_blog" (
	"id_blog" INTEGER NOT NULL UNIQUE,
	"tx_title" VARCHAR(255) NOT NULL,
	"md_content" TEXT NOT NULL,
	"tm_createdAt" TIMESTAMP NOT NULL,
	"tm_updatedAt" TIMESTAMP NOT NULL,
	"fk_id_category" INTEGER,
	PRIMARY KEY("id_blog")
);

CREATE TABLE "bg02_tag" (
	"id_tag" INTEGER NOT NULL UNIQUE,
	"tx_nombre" VARCHAR(255) NOT NULL,
	PRIMARY KEY("id_tag")
);

CREATE TABLE "bg03_blog_tag" (
	"id_blog_tag" INTEGER NOT NULL UNIQUE,
	"fk_id_blog" INTEGER NOT NULL,
	"fk_id_tag" INTEGER NOT NULL,
	PRIMARY KEY("id_blog_tag")
);

CREATE TABLE "bg04_category" (
	"id_category" INTEGER NOT NULL UNIQUE,
	"tx_name" VARCHAR(255) NOT NULL,
	PRIMARY KEY("id_category")
);

ALTER TABLE "bg03_blog_tag"
ADD FOREIGN KEY("fk_id_blog") REFERENCES "bg01_blog"("id_blog")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "bg03_blog_tag"
ADD FOREIGN KEY("fk_id_tag") REFERENCES "bg02_tag"("id_tag")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "bg01_blog"
ADD FOREIGN KEY("fk_id_category") REFERENCES "bg04_category"("id_category")
ON UPDATE NO ACTION ON DELETE NO ACTION;