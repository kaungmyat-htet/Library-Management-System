CREATE TABLE book_formats (
    id SMALLINT GENERATED ALWAYS AS IDENTITY,
    format VARCHAR(40),
    PRIMARY KEY (id));

INSERT INTO book_formats (format) VALUES ('Paperback');
INSERT INTO book_formats (format) VALUES ('Hardcover');
INSERT INTO book_formats (format) VALUES ('Kindle Edition');
INSERT INTO book_formats (format) VALUES ('Large Print');
INSERT INTO book_formats (format) VALUES ('Audible Audiobook');
INSERT INTO book_formats (format) VALUES ('Printed Access Code');
INSERT INTO book_formats (format) VALUES ('Digital Access Code');
INSERT INTO book_formats (format) VALUES ('Loose Leaf');
INSERT INTO book_formats (format) VALUES ('Audio CD');
INSERT INTO book_formats (format) VALUES ('Board Book');
INSERT INTO book_formats (format) VALUES ('Spiral-bound');
INSERT INTO book_formats (format) VALUES ('');


SELECT * FROM book_formats;












