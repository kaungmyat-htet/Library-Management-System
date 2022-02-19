SELECT
    accounts.id,
    accounts.password,
    accounts.status,
    persons.first_name,
    persons.last_name,
    persons.cid,
    persons.dob,
    persons.phone,
    addresses.street,
    addresses.city,
    states.name AS state,
    countries.name AS country
FROM persons
         JOIN addresses
              ON persons.address_id = addresses.id
         JOIN accounts
              ON accounts.cid = persons.cid
         JOIN states
              ON addresses.state_id = states.id
         JOIN countries
              ON states.country_id = countries.id;
INSERT INTO accounts (id, cid, password, status) VALUES ('MU00001', '533-42-0972', crypt('password', gen_salt('bf')), 1);
INSERT INTO accounts (id, cid, password, status) VALUES ('MU00002', '669-28-4653', crypt('password', gen_salt('bf')), 1);
INSERT INTO accounts (id, cid, password, status) VALUES ('MU10001', '220-03-9840', crypt('password', gen_salt('bf')), 1);