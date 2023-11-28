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
    User INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);

CREATE TABLE projects 
  (
    Project INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(255) NOT NULL
);

CREATE TABLE users_projects
  (
   Project_id INT(256) UNSIGNED NOT NULL,
   User_id INT(256) UNSIGNED NOT NULL  
  );

CREATE TABLE tasks 
  (
    Task INT PRIMARY KEY AUTO_INCREMENT,
    TaskName VARCHAR(255) NOT NULL,
    Description TEXT,
    Author INT,
    Project INT,
    FOREIGN KEY (Author) REFERENCES Users(User),
    FOREIGN KEY (Project) REFERENCES Projects(Project)
);

CREATE TABLE user_tasks 
  (
   user_id INT,
   task_id INT,
   PRIMARY KEY (user_id, task_id),
   FOREIGN KEY (user_id) REFERENCES  users(user),
   FOREIGN KEY (task_id) REFERENCES  tasks(task)
  );

CREATE TABLE task_assignees 
  (
    TaskAssignee INT PRIMARY KEY AUTO_INCREMENT,
    Task INT,
    User INT,
    FOREIGN KEY (Task) REFERENCES Tasks(Task),
    FOREIGN KEY (User) REFERENCES Users(User)
);

CREATE TABLE files 
  (
    File INT PRIMARY KEY AUTO_INCREMENT,
    FileName VARCHAR(255) NOT NULL,
    FilePath VARCHAR(255) NOT NULL,
    Task INT,
    Project INT,
    FOREIGN KEY (Task) REFERENCES Tasks(Task),
    FOREIGN KEY (Project) REFERENCES Projects(Project)
);
