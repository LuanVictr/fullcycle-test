SELECT user FROM mysql.user WHERE user = 'root' AND host = '%';

CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'root';

SELECT user FROM mysql.user WHERE user = 'root' AND host = 'localhost';

CREATE USER IF NOT EXISTS 'root'@'localhost' IDENTIFIED BY 'root';

GRANT ALL PRIVILEGES ON nodedb.* TO 'root'@'%';

FLUSH PRIVILEGES;

use nodedb;

CREATE TABLE IF NOT EXISTS `people` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY(`id`)
);