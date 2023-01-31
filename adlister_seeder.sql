USE adlister_db;

TRUNCATE users;
TRUNCATE ads;
TRUNCATE categories;
TRUNCATE ad_category;


INSERT INTO users(email, password) VALUES
                                               ('joe@gmail', '11dszd1'),
                                               ('moe@gmail', '234ed4'),
                                               ('sally@gmail', '42fss');


INSERT INTO ads (title, description, users_id)
VALUES ('Dog for Sale', 'Hairy, howling husky.', (select id from users where email = 'joe@gmail'));

INSERT INTO ads (title, description, users_id)
VALUES ('Husky Puppies', 'Smol husky puppies.', (select id from users where email = 'joe@gmail'));

INSERT INTO ads (title, description, users_id)
VALUES ('Fast greyhound for sale', 'Fast boi.', (select id from users where email = 'sally@gmail'));

INSERT INTO ads (title, description, users_id)
VALUES ('Toyota Truck', 'It runs.', (select id from users where email = 'moe@gmail'));

INSERT INTO ads (title, description, users_id)
VALUES ('Loveseat', 'Black Leather.', (select id from users where email = 'moe@gmail'));

INSERT INTO categories(name)
VALUES ('Pets'),
       ('Animals'),
       ('Dogs'),
       ('Tools'),
       ('Trucks'),
       ('Cars'),
       ('Furniture');

INSERT INTO ad_category(ad_id, category_id)
VALUES (1, 1), (1, 2), (1, 3), (2, 1),
       (2, 2), (2, 3), (3, 2), (3, 3), (4, 5), (4, 6), (5, 7);





