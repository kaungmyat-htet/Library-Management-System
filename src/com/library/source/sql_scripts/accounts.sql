SELECT * FROM categories;

INSERT INTO accounts (id, cid, password, status) VALUES ('MU10001', '220-03-9840', crypt('password', gen_salt('bf')), 1);