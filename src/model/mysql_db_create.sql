-- MySQL database create for ChicagoBoss_MySQL_App

-- Connect with 'mysql -u root'
-- This database is not locked down in anyway

-- CREATE the new database/schema
CREATE DATABASE cb_mysql;

-- CREATE the new user by GRANTing full access
GRANT ALL ON cb_mysql.* TO cb_mysql@'localhost' IDENTIFIED BY 'cb_mysql';

-- CREATE our my_todos table
CREATE TABLE cb_mysql.my_todos (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  todo VARCHAR(255),
  created TIMESTAMP
  );
