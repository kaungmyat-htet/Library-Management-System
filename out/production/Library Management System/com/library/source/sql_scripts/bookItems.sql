CREATE TABLE book_items (
    barcode VARCHAR(12),
    isbn VARCHAR(13) NOT NULL,
    price REAL NOT NULL,
    format_id SMALLINT NOT NULL,
    status SMALLINT NOT NULL,
    date_of_purchased DATE NOT NULL,
    publication_date DATE NOT NULL,
    PRIMARY KEY (barcode),
    FOREIGN KEY (isbn) REFERENCES books(isbn),
    FOREIGN KEY (status) REFERENCES book_status(id),
    FOREIGN KEY (format_id) REFERENCES book_formats(id));


SELECT * FROM book_items;


insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2146170662', '9780439785969', 390.01, 5, 1, '2020-06-22', '7/12/2016');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('5354626455', '9780439358071', 51.0, 11, 1, '2002-04-15', '11/6/2011');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('0187930686', '9780439554893', 277.74, 1, 1, '2002-10-08', '5/29/2008');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3230952502', '9780439655484', 323.17, 3, 1, '2012-08-16', '7/21/2018');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('7166222859', '9780439682589', 104.06, 3, 1, '2008-02-28', '3/23/2009');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('6870715866', '9780976540601', 71.25, 6, 1, '2008-06-09', '6/1/2013');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2656523427', '9780439827607', 323.92, 11, 1, '2021-04-15', '6/1/2020');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('8018175306', '9780517226957', 227.61, 5, 1, '2006-09-27', '10/2/2002');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('5161799765', '9780345453747', 285.11, 7, 1, '2003-01-16', '12/1/2007');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('4132594408', '9781400052929', 150.59, 3, 1, '2010-02-12', '5/1/2008');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('9069942402', '9780739322208', 35.23, 1, 1, '2004-03-15', '6/12/2005');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2178622038', '9780517149256', 379.0, 5, 1, '2022-01-08', '11/22/2003');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3739943750', '9780767908184', 30.37, 8, 1, '2004-05-11', '4/27/2011');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2696943400', '9780767915069', 36.76, 11, 1, '2012-10-16', '4/20/2018');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('6658035660', '9780767910439', 108.12, 11, 1, '2003-01-15', '8/23/2008');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3683787414', '9780767903868', 123.91, 6, 1, '2013-01-31', '10/17/2001');

insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('1842240951', 'xcb', 359.12, 4, 1, '2019-06-21', '9/12/2007');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('0808431552', 'ulp', 80.65, 2, 1, '2015-08-16', '8/2/2000');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('7484459607', 'rdb', 37.46, 10, 1, '2003-01-11', '12/13/2005');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('8079683298', 'asb', 9.27, 6, 1, '2011-12-13', '12/4/2005');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('0873903560', 'qlc', 155.68, 10, 1, '2008-09-23', '10/4/2020');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('7143389579', 'lgo', 73.58, 4, 1, '2002-10-15', '3/12/2016');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3868450742', 'xwt', 36.25, 5, 1, '2006-05-25', '7/11/2001');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3642731805', 'bex', 221.5, 3, 1, '2015-04-07', '6/7/2002');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('8762370715', 'kfy', 372.99, 3, 1, '2016-08-21', '10/10/2019');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('9290954922', 'zju', 262.85, 6, 1, '2002-11-22', '9/19/2005');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2565966563', 'itv', 358.54, 9, 1, '2012-08-29', '9/17/2018');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('9286876734', 'pks', 196.29, 3, 1, '2006-10-31', '3/20/2008');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2163142086', 'pkm', 393.99, 11, 1, '2002-05-29', '7/18/2003');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3433516200', 'tth', 135.52, 9, 1, '2001-11-26', '10/23/2006');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('6232151860', 'ijj', 357.83, 6, 1, '2019-10-31', '1/5/2010');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('7072186093', 'blr', 130.34, 2, 1, '2016-12-23', '8/20/2000');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('7694656565', 'lyl', 201.07, 4, 1, '2013-03-03', '8/5/2017');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('5025932270', 'tcb', 289.93, 10, 1, '2019-08-18', '9/15/2011');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('1092665730', 'vbe', 70.39, 7, 1, '2003-11-24', '6/3/2020');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('5232683292', 'qri', 6.41, 2, 1, '2014-12-22', '1/30/2017');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2853608387', 'hhu', 306.1, 7, 1, '2015-04-01', '4/4/2012');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('0639460801', 'kfq', 261.49, 1, 1, '2006-04-15', '4/22/2016');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('4701307793', 'xdn', 276.71, 9, 1, '2020-11-24', '2/1/2015');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3033562086', 'ecr', 21.99, 3, 1, '2001-07-29', '10/9/2006');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2239500271', 'dac', 126.65, 3, 1, '2012-12-26', '5/13/2018');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2049960646', 'njq', 177.4, 10, 1, '2009-06-04', '1/19/2021');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('1840156562', 'wpk', 296.1, 3, 1, '2013-08-28', '9/20/2016');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('5306420249', 'krw', 333.66, 10, 1, '2021-10-15', '1/1/2001');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('2949396399', 'fjo', 307.16, 7, 1, '2006-03-06', '1/15/2009');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('6977670398', 'may', 350.6, 8, 1, '2014-05-07', '7/25/2005');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3436999431', 'gxf', 376.1, 9, 1, '2016-11-13', '2/13/2014');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('3470039798', 'aga', 52.73, 6, 1, '2011-08-12', '2/8/2002');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('4041844959', 'qex', 313.35, 3, 1, '2002-02-28', '12/12/2003');
insert into book_items (barcode, isbn, price, format_id, status, date_of_purchased, publication_date) values ('8875266115', 'ukv', 27.74, 2, 1, '2001-01-12', '8/30/2003');
