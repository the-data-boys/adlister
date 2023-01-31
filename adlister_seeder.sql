USE adlister_db;

TRUNCATE users;

INSERT INTO users(email, password) VALUES
                                               ('joe@gmail', '11dszd1'),
                                               ('moe@gmail', '234ed4'),
                                               ('sally@gmail', '42fss');


#Seeds INSERT INTO quotes (author_id, content)VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),        'I love deadlines. I love the whooshing noise they make as they go by.');
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





