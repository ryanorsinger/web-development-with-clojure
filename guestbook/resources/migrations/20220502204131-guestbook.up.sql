CREATE TABLE guestbook (
    id integer primary key auto_increment, 
    name varchar(30),
    message varchar(200),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP);