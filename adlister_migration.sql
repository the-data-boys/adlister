USE adlister_db;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         email VARCHAR(50) NOT NULL,
                         password  VARCHAR(50) NOT NULL,
                         PRIMARY KEY (id)
);



DROP TABLE IF EXISTS ads;
CREATE TABLE ads
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    users_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);



DROP TABLE IF EXISTS categories;
CREATE TABLE categories
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE user_ad (
                             quote_id INTEGER UNSIGNED NOT NULL,
                             topic_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (quote_id) REFERENCES quotes(id),
                             FOREIGN KEY (topic_id) REFERENCES topics(id)
);




