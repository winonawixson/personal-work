DROP DATABASE IF EXISTS PersonalWebsite;

CREATE DATABASE PersonalWebsite;

Use PersonalWebsite;

CREATE TABLE Lists (
	id int(11) NOT NULL AUTO_INCREMENT,
	title varchar(50) NOT NULL,
	PRIMARY KEY (id)	
)ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE Items (
	id int(11) NOT NULL AUTO_INCREMENT,
	itemName varchar(50) NOT NULL,
	PRIMARY KEY (id)	
)ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE ListItems (
	listId int(11) NOT NULL ,
	itemId int(11) NOT NULL,
	FOREIGN KEY(listId) REFERENCES Lists(id) ON DELETE CASCADE,
	FOREIGN KEY(itemId) REFERENCES Items(id) ON DELETE CASCADE
);

INSERT INTO Lists (title) VALUES ('Travel');
INSERT INTO Lists (title) VALUES ('Remember');

INSERT INTO Items (itemName) VALUES ('Southeast Asia');
INSERT INTO Items (itemName) VALUES ('Uruguay');
INSERT INTO Items (itemName) VALUES ('Grand Canyon');
INSERT INTO Items (itemName) VALUES ('Email peeps');
INSERT INTO Items (itemName) VALUES ('Have fun!');

INSERT INTO ListItems (listId, itemId) VALUES (1, 1);
INSERT INTO ListItems (listId, itemId) VALUES (1, 2);
INSERT INTO ListItems (listId, itemId) VALUES (1, 3);
INSERT INTO ListItems (listId, itemId) VALUES (2, 4);
INSERT INTO ListItems (listId, itemId) VALUES (2, 5);


--
-- Table structure for table `users`
--
CREATE TABLE IF NOT EXISTS `users` (
 `user_id` int(11) NOT NULL AUTO_INCREMENT,
 `username` varchar(20) NOT NULL,
 `password` varchar(20) NOT NULL,
 `enabled` tinyint(1) NOT NULL,
 PRIMARY KEY (`user_id`),
 KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
--
-- Dumping data for table `users`
--
INSERT INTO `users` (`user_id`, `username`, `password`, `enabled`) VALUES
(1, 'test', 'password', 1),
(2, 'test2', 'password', 1);
--
-- Table structure for table `authorities`
--
CREATE TABLE IF NOT EXISTS `authorities` (
 `username` varchar(20) NOT NULL,
 `authority` varchar(20) NOT NULL,
 KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `authorities`
--
INSERT INTO `authorities` (`username`, `authority`) VALUES
('test', 'ROLE_ADMIN'),
('test', 'ROLE_USER'),
('test2', 'ROLE_USER');
--
-- Constraints for table `authorities`
--
ALTER TABLE `authorities`
 ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

