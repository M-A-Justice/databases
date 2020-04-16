CREATE DATABASE chat;

USE chat;

/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  /* Describe your table here.*/
  id INT NOT NULL,
  PRIMARY KEY(id),
  username VARCHAR(12)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY(id),
  usermessage VARCHAR(255),
  FOREIGN KEY (user_id)
    REFERENCES users(id)
  --   ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE rooms (
  id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY(id),
  roomname VARCHAR(12),
  FOREIGN KEY (user_id)
    REFERENCES users(id)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

