USE codeup_test_db;
DROP TABLE IF EXISTS quote_topic;
CREATE TABLE quote_topic
(
    quote_id INTEGER UNSIGNED NOT NULL,
    topic_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (quote_id) REFERENCES quotes (id),
    FOREIGN KEY (topic_id) REFERENCES topics (id)
);


INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 2),
       (1, 3),
       (2, 4),
       (3, 1),
       (3, 2),
       (3, 3),
       (3, 4),
       (4, 2),
       (5, 1);