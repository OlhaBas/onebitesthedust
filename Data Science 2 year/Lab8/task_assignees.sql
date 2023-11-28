SET NAMES utf8;
SET time_zone = `+00:00`;
SET foreign_key_checks = 0;
SET sql_mode = `NO_AUTO_VALUE_ON_ZERO`;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS users_projects;
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS user_tasks;
DROP TABLE IF EXISTS task_assignees;
DROP TABLE IF EXISTS files;


CREATE TABLE users 
  (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE projects 
  (
    project INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(255) NOT NULL
);

CREATE TABLE users_projects
  (
   project_id INT(256) UNSIGNED NOT NULL,
   user_id INT(256) UNSIGNED NOT NULL  
  );

CREATE TABLE tasks 
  (
    id INT PRIMARY KEY AUTO_INCREMENT,
    task_mame VARCHAR(255) NOT NULL,
    description TEXT,
    author INT,
    project INT,
    FOREIGN KEY (author) REFERENCES users(id),
    FOREIGN KEY (project) REFERENCES projects(project)
);

CREATE TABLE user_tasks 
  (
   user_id INT,
   task_id INT,
   PRIMARY KEY (user_id, task_id),
   FOREIGN KEY (user_id) REFERENCES  users(id),
   FOREIGN KEY (task_id) REFERENCES  tasks(id)
  );

CREATE TABLE files 
  (
    file INT PRIMARY KEY AUTO_INCREMENT,
    file_name VARCHAR(255) NOT NULL,
    file_path VARCHAR(255) NOT NULL,
    task INT,
    project INT,
    FOREIGN KEY (task) REFERENCES tasks(task),
    FOREIGN KEY (project) REFERENCES projects(project)
);
