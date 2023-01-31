USE adlister_db;

SELECT email
FROM users
WHERE id IN (SELECT users_id
             FROM ads
             WHERE title = 'Fast greyhound for sale');

SELECT name
FROM categories
WHERE id IN (SELECT category_id
             FROM ad_category
             WHERE ad_id IN (SELECT id
                             FROM ads
                             WHERE title = 'Fast greyhound for sale'));


SELECT title
FROM ads
WHERE id IN (SELECT ad_id
             FROM ad_category
             WHERE category_id IN (SELECT id
                                   FROM categories
                                   WHERE name = 'Dogs'));


SELECT title
from ads
WHERE users_id IN (SELECT id
                   from users
                   WHERE email = 'joe@gmail');

