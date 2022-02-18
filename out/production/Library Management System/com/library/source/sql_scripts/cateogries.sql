CREATE TABLE categories (
    id SMALLINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (name));

INSERT INTO categories (name) VALUES ('Arts & Photography');
INSERT INTO categories (name) VALUES ('Biographies & Memoirs');
INSERT INTO categories (name) VALUES ('Business & Money');
INSERT INTO categories (name) VALUES ('Calendars');
INSERT INTO categories (name) VALUES ('Children''s Books');
INSERT INTO categories (name) VALUES ('Christian Books & Bibles');
INSERT INTO categories (name) VALUES ('Comics & Graphic Novels');
INSERT INTO categories (name) VALUES ('Computers & Technology');
INSERT INTO categories (name) VALUES ('Cookbooks, Food & Wine');
INSERT INTO categories (name) VALUES ('Crafts, Hobbies & Home');
INSERT INTO categories (name) VALUES ('Education & Teaching');
INSERT INTO categories (name) VALUES ('Engineering & Transportation');
INSERT INTO categories (name) VALUES ('Health, Fitness & Dieting');
INSERT INTO categories (name) VALUES ('History');
INSERT INTO categories (name) VALUES ('Humor & Entertainment');
INSERT INTO categories (name) VALUES ('Law');
INSERT INTO categories (name) VALUES ('LGBTQ+ Books');
INSERT INTO categories (name) VALUES ('Literature & Fiction');
INSERT INTO categories (name) VALUES ('Medical Books');
INSERT INTO categories (name) VALUES ('Mystery, Thriller & Suspense');
INSERT INTO categories (name) VALUES ('Parenting & Relationships');
INSERT INTO categories (name) VALUES ('Politics & Social Sciences');
INSERT INTO categories (name) VALUES ('Reference');
INSERT INTO categories (name) VALUES ('Religion & Spirituality');
INSERT INTO categories (name) VALUES ('Romance');
INSERT INTO categories (name) VALUES ('Science & Math');
INSERT INTO categories (name) VALUES ('Science Fiction & Fantasy');
INSERT INTO categories (name) VALUES ('Self-Help');
INSERT INTO categories (name) VALUES ('Sports & Outdoors');
INSERT INTO categories (name) VALUES ('Teen & Young Adult');
INSERT INTO categories (name) VALUES ('Test Preparation');
INSERT INTO categories (name) VALUES ('Travel');


SELECT * FROM categories;