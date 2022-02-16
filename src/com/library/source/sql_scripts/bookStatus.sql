CREATE TABLE book_status (
    id SMALLINT GENERATED ALWAYS AS IDENTITY,
    status VARCHAR(15) NOT NULL,
    PRIMARY KEY (id));


INSERT INTO book_status (status) VALUES ('Available');
INSERT INTO book_status (status) VALUES ('Reserved');
INSERT INTO book_status (status) VALUES ('Loaned');
INSERT INTO book_status (status) VALUES ('Lost');


SELECT * FROM book_status;