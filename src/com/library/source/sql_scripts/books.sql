CREATE TABLE books (
    isbn VARCHAR(13),
    title TEXT NOT NULL,
    authors TEXT NOT NULL,
    number_of_pages SMALLINT NOT NULL,
    category_id SMALLINT NOT NULL,
    PRIMARY KEY (isbn),
    FOREIGN KEY (category_id) REFERENCES categories(id));

SELECT * FROM books;

INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780439785969,'Harry Potter and the Half-Blood Prince (Harry Potter  #6)','J.K. Rowling/Mary GrandPré',652,15);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780439358071,'Harry Potter and the Order of the Phoenix (Harry Potter  #5)','J.K. Rowling/Mary GrandPré',870,14);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780439554893,'Harry Potter and the Chamber of Secrets (Harry Potter  #2)','J.K. Rowling',352,11);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780439655484,'Harry Potter and the Prisoner of Azkaban (Harry Potter  #3)','J.K. Rowling/Mary GrandPré',435,23);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780439682589,'Harry Potter Boxed Set  Books 1-5 (Harry Potter  #1-5)','J.K. Rowling/Mary GrandPré',2690,23);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780976540601,'Unauthorized Harry Potter Book Seven News: "Half-Blood Prince" Analysis and Speculation','W. Frederick Zimmerman',152,23);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780439827607,'Harry Potter Collection (Harry Potter  #1-6)','J.K. Rowling',3342,29);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780517226957,'The Ultimate Hitchhiker''s Guide: Five Complete Novels and One Story (Hitchhiker''s Guide to the Galaxy  #1-5)','Douglas Adams',815,17);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780345453747,'The Ultimate Hitchhiker''s Guide to the Galaxy (Hitchhiker''s Guide to the Galaxy  #1-5)','Douglas Adams',815,10);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9781400052929,'The Hitchhiker''s Guide to the Galaxy (Hitchhiker''s Guide to the Galaxy  #1)','Douglas Adams',215,5);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780739322208,'The Hitchhiker''s Guide to the Galaxy (Hitchhiker''s Guide to the Galaxy  #1)','Douglas Adams/Stephen Fry',6,13);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780517149256,'The Ultimate Hitchhiker''s Guide (Hitchhiker''s Guide to the Galaxy  #1-5)','Douglas Adams',815,25);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780767908184,'A Short History of Nearly Everything','Bill Bryson',544,6);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780767915069,'Bill Bryson''s African Diary','Bill Bryson',55,28);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780767910439,'Bryson''s Dictionary of Troublesome Words: A Writer''s Guide to Getting It Right','Bill Bryson',256,14);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780767903868,'In a Sunburned Country','Bill Bryson',335,27);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780767903820,'I''m a Stranger Here Myself: Notes on Returning to America After Twenty Years Away','Bill Bryson',304,23);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780060920081,'The Lost Continent: Travels in Small Town America','Bill Bryson',299,15);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780380713806,'Neither Here nor There: Travels in Europe','Bill Bryson',254,9);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780380727506,'Notes from a Small Island','Bill Bryson',324,13);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780380715435,'The Mother Tongue: English and How It Got That Way','Bill Bryson',270,16);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780345538376,'J.R.R. Tolkien 4-Book Boxed Set: The Hobbit and The Lord of the Rings','J.R.R. Tolkien',1728,28);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780618517657,'The Lord of the Rings (The Lord of the Rings  #1-3)','J.R.R. Tolkien',1184,32);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780618346257,'The Fellowship of the Ring (The Lord of the Rings  #1)','J.R.R. Tolkien',398,14);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780618260584,'The Lord of the Rings (The Lord of the Rings  #1-3)','J.R.R. Tolkien/Alan  Lee',1216,29);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780618391004,'The Lord of the Rings: Weapons and Warfare','Chris   Smith/Christopher  Lee/Richard Taylor',218,16);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780618510825,'The Lord of the Rings: Complete Visual Companion','Jude Fisher',224,26);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780976694007,'Agile Web Development with Rails: A Pragmatic Guide','Dave Thomas/David Heinemeier Hansson/Leon Breedt/Mike Clark/Thomas  Fuchs/Andreas  Schwarz',558,18);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780689840920,'Hatchet (Brian''s Saga  #1)','Gary Paulsen',208,1);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9781557344496,'Hatchet: A Guide for Using "Hatchet" in the Classroom','Donna Ickes/Edward Sciranko/Keith Vasconcelles',48,10);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780385326506,'Guts: The True Stories behind Hatchet and the Brian Books','Gary Paulsen',144,3);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9781575606248,'Molly Hatchet - 5 of the Best','Molly Hatchet',56,3);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9781595580276,'Hatchet Jobs: Writings on Contemporary Fiction','Dale Peck',228,6);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9781595962805,'A Changeling for All Seasons (Changeling Seasons #1)','Angela Knight/Sahara Kelly/Judy Mays/Marteeka Karland/Kate Douglas/Shelby Morgen/Lacey Savage/Kate Hill/Willa Okati',304,31);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780670059676,'Changeling (Changeling  #1)','Delia Sherman',256,31);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780141312620,'The Changeling Sea','Patricia A. McKillip',137,8);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780595321803,'The Changeling','Zilpha Keatley Snyder',228,27);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9781590301944,'The Changeling','Kate Horsley',339,28);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780449146972,'The Changeling (Daughters of England  #15)','Philippa Carr',369,13);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780061159176,'The Known World','Edward P. Jones',388,23);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780060762735,'The Known World','Edward P. Jones/Kevin R. Free',14,19);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780060749910,'The Known World','Edward P. Jones',576,27);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780273704744,'Traders  Guns & Money: Knowns and Unknowns in the Dazzling World of Derivatives','Satyajit Das',334,32);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9781932386103,'Artesia: Adventures in the Known World','Mark Smylie',352,30);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780374517199,'The John McPhee Reader (John McPhee Reader  #1)','John McPhee/William Howarth',416,18);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780374280390,'Uncommon Carriers','John McPhee',248,8);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780374519742,'Heirs of General Practice','John McPhee',128,24);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780374522599,'The Control of Nature','John McPhee',288,25);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9780374518738,'Annals of the Former World','John McPhee',720,4);
INSERT INTO books(isbn,title,authors,number_of_pages,category_id) VALUES (9.78E+12,'Coming Into the Country','John McPhee',448,31);


DELETE FROM books WHERE isbn = '9.78044E+12';


SELECT
    books.isbn,
    books.title,
    books.authors,
    books.number_of_pages,
    categories.name
FROM books
         JOIN categories
              ON books.category_id = categories.id