CREATE TABLE books (
    isbn VARCHAR(13),
    title TEXT NOT NULL,
    authors TEXT NOT NULL,
    publisher TEXT NOT NULL,
    language_code VARCHAR(6) NOT NULL,
    number_of_pages SMALLINT NOT NULL,
    category_id SMALLINT NOT NULL,
    PRIMARY KEY (isbn),
    FOREIGN KEY (category_id) REFERENCES categories(id));

SELECT * FROM books;

DROP TABLE books;

SELECT
    books.isbn,
    books.title,
    books.authors,
    books.publisher,
    books.language_code,
    books.number_of_pages,
    categories.name AS category
FROM books
         JOIN categories
              ON books.category_id = categories.id;


INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780439785969,'Harry Potter and the Half-Blood Prince (Harry Potter  #6)','J.K. Rowling/Mary GrandPré','Scholastic Inc.','eng',652,27);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780439358071,'Harry Potter and the Order of the Phoenix (Harry Potter  #5)','J.K. Rowling/Mary GrandPré','Scholastic Inc.','eng',870,8);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780439554893,'Harry Potter and the Chamber of Secrets (Harry Potter  #2)','J.K. Rowling','Scholastic','eng',352,12);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780439655484,'Harry Potter and the Prisoner of Azkaban (Harry Potter  #3)','J.K. Rowling/Mary GrandPré','Scholastic Inc.','eng',435,17);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780439682589,'Harry Potter Boxed Set  Books 1-5 (Harry Potter  #1-5)','J.K. Rowling/Mary GrandPré','Scholastic','eng',2690,7);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780976540601,'Unauthorized Harry Potter Book Seven News: "Half-Blood Prince" Analysis and Speculation','W. Frederick Zimmerman','Nimble Books','en-US',152,12);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780439827607,'Harry Potter Collection (Harry Potter  #1-6)','J.K. Rowling','Scholastic','eng',3342,2);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780517226957,'The Ultimate Hitchhiker''s Guide: Five Complete Novels and One Story (Hitchhiker''s Guide to the Galaxy  #1-5)','Douglas Adams','Gramercy Books','eng',815,6);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780345453747,'The Ultimate Hitchhiker''s Guide to the Galaxy (Hitchhiker''s Guide to the Galaxy  #1-5)','Douglas Adams','Del Rey Books','eng',815,32);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781400052929,'The Hitchhiker''s Guide to the Galaxy (Hitchhiker''s Guide to the Galaxy  #1)','Douglas Adams','Crown','eng',215,11);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780739322208,'The Hitchhiker''s Guide to the Galaxy (Hitchhiker''s Guide to the Galaxy  #1)','Douglas Adams/Stephen Fry','Random House Audio','eng',6,26);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780517149256,'The Ultimate Hitchhiker''s Guide (Hitchhiker''s Guide to the Galaxy  #1-5)','Douglas Adams','Wings Books','eng',815,21);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780767908184,'A Short History of Nearly Everything','Bill Bryson','Broadway Books','eng',544,28);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780767915069,'Bill Bryson''s African Diary','Bill Bryson','Broadway Books','eng',55,15);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780767910439,'Bryson''s Dictionary of Troublesome Words: A Writer''s Guide to Getting It Right','Bill Bryson','Broadway Books','eng',256,5);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780767903868,'In a Sunburned Country','Bill Bryson','Broadway Books','eng',335,19);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780767903820,'I''m a Stranger Here Myself: Notes on Returning to America After Twenty Years Away','Bill Bryson','Broadway Books','eng',304,6);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780060920081,'The Lost Continent: Travels in Small Town America','Bill Bryson','William Morrow Paperbacks','eng',299,19);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780380713806,'Neither Here nor There: Travels in Europe','Bill Bryson','William Morrow Paperbacks','eng',254,14);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780380727506,'Notes from a Small Island','Bill Bryson','William Morrow Paperbacks','eng',324,6);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780380715435,'The Mother Tongue: English and How It Got That Way','Bill Bryson','William Morrow Paperbacks','eng',270,15);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780345538376,'J.R.R. Tolkien 4-Book Boxed Set: The Hobbit and The Lord of the Rings','J.R.R. Tolkien','Ballantine Books','eng',1728,31);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780618517657,'The Lord of the Rings (The Lord of the Rings  #1-3)','J.R.R. Tolkien','Houghton Mifflin Harcourt','eng',1184,7);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780618346257,'The Fellowship of the Ring (The Lord of the Rings  #1)','J.R.R. Tolkien','Houghton Mifflin Harcourt','eng',398,17);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780618260584,'The Lord of the Rings (The Lord of the Rings  #1-3)','J.R.R. Tolkien/Alan  Lee','Houghton Mifflin Harcourt','en-US',1216,20);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780618391004,'The Lord of the Rings: Weapons and Warfare','Chris   Smith/Christopher  Lee/Richard Taylor','Houghton Mifflin Harcourt','eng',218,18);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780618510825,'The Lord of the Rings: Complete Visual Companion','Jude Fisher','Houghton Mifflin Harcourt','eng',224,6);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780976694007,'Agile Web Development with Rails: A Pragmatic Guide','Dave Thomas/David Heinemeier Hansson/Leon Breedt/Mike Clark/Thomas  Fuchs/Andreas  Schwarz','Pragmatic Bookshelf','eng',558,3);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780689840920,'Hatchet (Brian''s Saga  #1)','Gary Paulsen','Atheneum Books for Young Readers: Richard Jackson Books','eng',208,26);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781557344496,'Hatchet: A Guide for Using "Hatchet" in the Classroom','Donna Ickes/Edward Sciranko/Keith Vasconcelles','Teacher Created Resources','eng',48,27);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780385326506,'Guts: The True Stories behind Hatchet and the Brian Books','Gary Paulsen','Delacorte Press','eng',144,3);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781575606248,'Molly Hatchet - 5 of the Best','Molly Hatchet','Cherry Lane Music Company','eng',56,20);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781595580276,'Hatchet Jobs: Writings on Contemporary Fiction','Dale Peck','The New Press','en-US',228,20);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781595962805,'A Changeling for All Seasons (Changeling Seasons #1)','Angela Knight/Sahara Kelly/Judy Mays/Marteeka Karland/Kate Douglas/Shelby Morgen/Lacey Savage/Kate Hill/Willa Okati','Changeling Press','eng',304,4);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780670059676,'Changeling (Changeling  #1)','Delia Sherman','Viking Juvenile','eng',256,17);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780141312620,'The Changeling Sea','Patricia A. McKillip','Firebird','eng',137,7);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780595321803,'The Changeling','Zilpha Keatley Snyder','iUniverse','eng',228,8);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781590301944,'The Changeling','Kate Horsley','Shambhala','eng',339,29);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780449146972,'The Changeling (Daughters of England  #15)','Philippa Carr','Ivy Books','eng',369,1);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780061159176,'The Known World','Edward P. Jones','Amistad','eng',388,19);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780060762735,'The Known World','Edward P. Jones/Kevin R. Free','HarperAudio','en-US',14,21);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780060749910,'The Known World','Edward P. Jones','Harper','eng',576,13);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780273704744,'Traders  Guns & Money: Knowns and Unknowns in the Dazzling World of Derivatives','Satyajit Das','FT Press','eng',334,9);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781932386103,'Artesia: Adventures in the Known World','Mark Smylie','Archaia','eng',352,31);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374517199,'The John McPhee Reader (John McPhee Reader  #1)','John McPhee/William Howarth','Farrar  Straus and Giroux','eng',416,3);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374280390,'Uncommon Carriers','John McPhee','Farrar Straus Giroux','en-US',248,13);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374519742,'Heirs of General Practice','John McPhee','Farrar  Straus and Giroux','eng',128,24);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374522599,'The Control of Nature','John McPhee','Farrar  Straus and Giroux','en-US',288,31);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374518738,'Annals of the Former World','John McPhee','Farrar  Straus and Giroux','eng',720,24);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374522872,'Coming Into the Country','John McPhee','Farrar  Straus and Giroux','eng',448,12);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374519322,'La Place de la Concorde Suisse','John McPhee','Farrar  Straus and Giroux','fre',160,17);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374516000,'Giving Good Weight','John McPhee','Farrar  Straus and Giroux','eng',288,15);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780374520656,'Rising from the Plains','John McPhee','Farrar  Straus and Giroux','eng',208,15);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780822205104,'The Heidi Chronicles','Wendy Wasserstein','Dramatists Play Service','eng',81,29);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780679734994,'The Heidi Chronicles: Uncommon Women and Others & Isn''t It Romantic','Wendy Wasserstein','Vintage','eng',249,6);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781596670235,'Active Literacy Across the Curriculum: Strategies for Reading  Writing  Speaking  and Listening','Heidi Hayes Jacobs','Routledge','eng',138,15);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781581807745,'Simply Beautiful Beaded Jewelry','Heidi Boyd','North Light Books','en-US',128,23);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780800793616,'Always Enough: God''s Miraculous Provision Among the Poorest Children on Earth','Heidi Baker/Rolland Baker','Chosen Books','eng',192,18);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780871202864,'Mapping the Big Picture: Integrating Curriculum & Assessment K-12','Heidi Hayes Jacobs','Association for Supervision & Curriculum Development','en-US',108,17);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780753454947,'Heidi (Heidi  #1-2)','Johanna Spyri/Beverly Cleary/Angelo  Rinaldi','Kingfisher','eng',352,22);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780871209993,'Getting Results with Curriculum Mapping','Heidi Hayes Jacobs','ASCD','eng',192,10);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781852402877,'There''s Always Enough: The Miraculous Move of God in Mozambique','Rolland Baker/Heidi Baker','Sovereign World','eng',192,18);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780761129585,'What to Expect the First Year (What to Expect)','Heidi Murkoff/Sharon Mazel/Arlene Eisenberg/Sandee Hathaway/Mark D. Widome','Workman Publishing Company','eng',832,29);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780972016414,'The Player''s Handbook: The Ultimate Guide on Dating and Relationships','Heidi Fleiss/Libby Keatinge','One Hour Entertainment','eng',123,22);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781581805635,'Simply Beautiful Beading: 53 Quick and Easy Projects','Heidi Boyd','North Light Books','en-US',128,29);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780441294671,'God Emperor of Dune (Dune Chronicles  #4)','Frank Herbert','Ace Books','eng',423,32);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780441102679,'Chapterhouse: Dune (Dune Chronicles #6)','Frank Herbert','Ace Books','eng',436,6);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780441172696,'Dune Messiah (Dune Chronicles #2)','Frank Herbert','Ace Books','eng',331,9);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780765306470,'Dreamer of Dune: The Biography of Frank Herbert','Brian Herbert','Tor Books','en-US',592,29);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780399128981,'Heretics of Dune (Dune Chronicles  #5)','Frank Herbert','Putnam','eng',480,9);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780765353702,'The Road to Dune','Frank Herbert/Brian Herbert/Kevin J. Anderson','Tor Science Fiction','eng',426,22);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780441328000,'Heretics of Dune (Dune Chronicles #5)','Frank Herbert','Ace Books','eng',471,19);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780618212903,'The Lord of the Rings: The Art of the Fellowship of the Ring','Gary Russell','Houghton Mifflin Harcourt','eng',192,14);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780345410054,'The Power of One (The Power of One  #1)','Bryce Courtenay','Ballantine Books','eng',544,5);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780385732543,'The Power of One (The Power of One  #1)','Bryce Courtenay','Delacorte Books for Young Readers','eng',291,17);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780785260059,'The Power of One: One Person  One Rule  One Month','John C. Maxwell/Stephen R. Graves/Thomas G. Addington','Thomas Nelson','en-US',256,8);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780471780939,'Power of an Hour: Business and Life Mastery in One Hour a Week','Dave Lakhani','Wiley','eng',205,6);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780325001531,'The Power of One: The Solo Play for Playwrights  Actors  and Directors','Louis E. Catron','Heinemann Drama','eng',240,19);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780060762872,'How to Buy  Sell & Profit on eBay: Kick-Start Your Home-Based Business in Just Thirty Days','Adam Ginsberg','William Morrow Paperbacks','eng',336,24);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780470045299,'eBay for Dummies','Marsha Collier','Wiley','eng',386,19);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780072262780,'What to Sell on ebay and Where to Get It: The Definitive Guide to Product Sourcing for eBay and Beyond','Chris Malta/Lisa Suttora','McGraw-Hill','eng',260,15);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780764569241,'Starting an eBay Business for Dummies','Marsha Collier','Wiley','eng',384,13);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780471933823,'eBay: Top 100 Simplified Tips & Tricks','Julia Wilkinson','Wiley','eng',260,24);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780764559914,'ebay Timesaving Techniques for Dummies','Marsha Collier','Wiley','en-US',391,30);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780764584381,'eBay Business All-in-One Desk Reference for Dummies','Marsha Collier','Wiley','en-US',864,3);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780596523695,'Ruby Cookbook','Lucas Carlson/Leonard Richardson','O''Reilly Media','eng',873,1);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780806523491,'Ruby Ann''s Down Home Trailer Park Cookbook','Ruby Ann Boxcar','Citadel','eng',240,25);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780806525365,'Ruby Ann''s Down Home Trailer Park BBQin'' Cookbook','Ruby Ann Boxcar','Citadel','eng',206,10);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780596527310,'Rails Cookbook: Recipes for Rapid Web Development with Ruby','Rob Orsini','O''Reilly Media','eng',514,1);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780143035008,'Anna Karenina','Leo Tolstoy/Richard Pevear/Larissa Volokhonsky','Penguin Classics','eng',838,10);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780451528612,'Anna Karenina','Leo Tolstoy/David Magarshack/Priscilla Meyer','Signet','eng',960,7);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780140449174,'Anna Karenina','Leo Tolstoy/Richard Pevear/Larissa Volokhonsky/John Bayley','Penguin Books','eng',837,8);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780822001836,'CliffsNotes on Tolstoy''s Anna Karenina','Marianne Sturman/Leo Tolstoy','Cliffs Notes','eng',80,32);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781593080273,'Anna Karenina','Leo Tolstoy/Amy Mandelker/Constance Garnett','Barnes & Noble Classics','eng',803,26);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780486437965,'Anna Karenina','Leo Tolstoy/Louise Maude/Aylmer Maude','Dover Publications','eng',752,30);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9781593081775,'Anna Karenina','Leo Tolstoy/Constance Garnett/Amy Mandelker','Barnes & Noble','eng',803,21);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780778322276,'Dinner with Anna Karenina','Gloria Goldreich','Mira Books','eng',360,3);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780521313254,'Tolstoy: Anna Karenina','Anthony Thorlby','Cambridge University Press','eng',128,14);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780140183955,'Untouchable','Mulk Raj Anand/E.M. Forster','Penguin Books','eng',160,13);
INSERT INTO books(isbn,title,authors,publisher,language_code,number_of_pages,category_id) VALUES (9780679767473,'The Untouchable','John Banville','Vintage','eng',367,13);
