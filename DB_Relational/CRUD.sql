CREATE DATABASE mapdonalds;
USE mapdonalds;
SELECT DATABASE(); -- Current DB
DROP DATABASE mapdonalds;

CREATE TABLE burgers (
	id INTEGER, -- OR id INTEGER PRIMARY KEY,
  name VARCHAR(50),
  price INTEGER,
  gram INTEGER,
  kcal INTEGER,
  protein INTEGER,
  PRIMARY KEY (id)
);

DESC burgers; -- Shows the table structure

INSERT INTO burgers (id, name, price, gram, kcal, protein)
VALUES (1, 'Bigman', 5300, 223, 583, 27);

SELECT *
FROM burgers;

INSERT INTO burgers (id, name, price, gram, kcal, protein)
VALUES
	(2, 'Bacon Deluxe Burger', 6200, 242, 545, 27),
  (3, 'Spicy Chicken Burger', 5300, 235, 494, 20),
  (4, 'Cheese Burger', 6200, 269, 563, 21),
  (5, 'Double Quarter Pound', 7700, 275, 770, 50);
    
SELECT name, price
FROM burgers;

SET SQL_SAFE_UPDATES = 1;

UPDATE burgers
SET price = 1000;

SELECT *
FROM burgers;

UPDATE burgers
SET price = 500
WHERE id = 1;

DELETE FROM burgers
WHERE id = 4;

DROP TABLE burgers;

SHOW DATABASES;