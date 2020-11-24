-- pizza id, navn, pris, size, ingredients

DROP TABLE IF EXISTS pizzaer;
CREATE TABLE pizzaer(
    pid int NOT NULL AUTO_INCREMENT,
    navn varchar(50) NOT NULL,
    pris double NOT NULL,
    PRIMARY KEY(pid)
    );

DROP TABLE IF EXISTS toppings;
CREATE TABLE toppings(
tid int NOT NULL AUTO_INCREMENT,
    navn varchar(30) NOT NULL,
    pris double NOT NULL,
    PRIMARY KEY(tid)
);

DROP TABLE IF EXISTS pizza_recipies;
CREATE TABLE pizza_recipies (
    prid int NOT NULL AUTO_INCREMENT,
    pid int NOT NULL,
    tid int NOT NULL,
    PRIMARY KEY(prid)
);

SELECT toppings.navn 
FROM pizzaer, toppings, pizza_recipies
WHERE 
    pizzaer.pid = pizza_recipies.pid
AND
    toppings.tid = pizza_recipies.tid;

INSERT INTO pizza_recipies (pid, tid) VALUES 
(1, 1), (1, 2), (1, 3), (1, 4),                                 -- 1
(2, 1), (2, 2), (2, 5), (2, 4),                                 -- 2
(3, 1), (3, 2), (3, 6), (3, 4),                                 -- 3
(4, 1), (4, 2), (4, 7), (4, 8), (4, 9), (4, 4),                 -- 4
(5, 1), (5, 2), (5, 10), (5, 4),                                -- 5
(6, 1), (6, 2), (6, 10), (6, 4),                                -- 6
(7, 1), (7, 2), (7, 6), (7, 12), (7, 11), (7, 13), (7, 4),      -- 7
(8, 1), (8, 2), (8, 3), (8, 14), (8, 16), (8, 11), (8, 4),      -- 8
(9, 1), (9, 2), (9, 3), (8, 10), (8, 17), (9, 4),               -- 9
(10, 1), (10, 2), (10, 3), (10, 16), (10, 4),                   -- 10
(11, 1), (11, 2), (11, 3), (11, 14), (11, 4),                   -- 11
(12, 1), (12, 2), (12, 3), (12, 15), (12, 4),                   -- 12
(13, 1), (13, 2), (13, 3), (13, 10), (13, 4),                   -- 13
(14, 1), (14, 2), (14, 6), (14, 10), (14, 11), (14, 4)          -- 14
;

INSERT INTO toppings (navn, pris) VALUES ("Tomatsauce", 5);     -- 1
INSERT INTO toppings (navn, pris) VALUES ("Ost", 5);            -- 2
INSERT INTO toppings (navn, pris) VALUES ("Skinke", 5);         -- 3
INSERT INTO toppings (navn, pris) VALUES ("Oregano", 5);        -- 4
INSERT INTO toppings (navn, pris) VALUES ("Oksefars", 5);       -- 5
INSERT INTO toppings (navn, pris) VALUES ("Pepperoni", 5);      -- 6
INSERT INTO toppings (navn, pris) VALUES ("Kødsauce", 5);       -- 7
INSERT INTO toppings (navn, pris) VALUES ("Spaghetti", 5);      -- 8
INSERT INTO toppings (navn, pris) VALUES ("Cocktailpølser", 5); -- 9
INSERT INTO toppings (navn, pris) VALUES ("Bacon", 5);          -- 10
INSERT INTO toppings (navn, pris) VALUES ("Løg", 5);            -- 11
INSERT INTO toppings (navn, pris) VALUES ("Rød Peber", 5);      -- 12
INSERT INTO toppings (navn, pris) VALUES ("Oliven", 5);         -- 13
INSERT INTO toppings (navn, pris) VALUES ("Ananas", 5);         -- 14
INSERT INTO toppings (navn, pris) VALUES ("Rejer", 5);          -- 15
INSERT INTO toppings (navn, pris) VALUES ("Champignon", 5);     -- 16
INSERT INTO toppings (navn, pris) VALUES ("Kebab", 5);          -- 17
INSERT INTO toppings (navn, pris) VALUES ("Chili", 5);          -- 18

INSERT INTO pizzaer (navn, pris) VALUES ("Vesuvio", 57), 
("Amerikaner", 53), ("Cacciatora", 57), ("Carbona", 63), ("Dennis", 65), 
("Bertil", 57), ("Silvia", 61), ("Victoria", 61), ("Toronfo", 61),
("Capricciosa", 61), ("Hawaii", 61), ("Le Blissola", 61),
("Venezia", 61), ("Mafia", 61);

