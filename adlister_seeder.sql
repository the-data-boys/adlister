USE adlister_db;

TRUNCATE users;

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


INSERT INTO categories(name)
VALUES ('Space and Time'),
       ('Humor'),
       ('Office Life'),
       ('Hitchiker''s Guide to the Galaxy');



INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 2), (1, 3), (2, 4), (3, 1),
       (3, 2), (3, 3), (3, 4), (4, 2), (5, 1);





