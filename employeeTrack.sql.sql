drop database if exists employeeTrack_db;
create database employeeTrack_db;
use employeeTrack_db;

create table department (
    ID int not null AUTO_INCREMENT,
    Name varchar(30) not null,
    primary key (ID)
);

create table roles (
    ID int not null AUTO_INCREMENT,
	Department_ID int not null,
    Title varchar(30) not null,
    Salary decimal not null,
    primary key (ID)
);

create table employee (
    ID int not null AUTO_INCREMENT,
    First_Name varchar(30) not null,
    Last_Name varchar (30) not null,
    Role_ID int not null,
    Manager_ID int null,
    primary key (ID)
);


INSERT INTO department(name) VALUES ("RSR"), ("Jackpot"), ("Problem Solve"), ("PA"), ("Inbound"), ("Outbound");

INSERT INTO roles (department_id, title, salary) VALUES (1, "RSR Lead", 60000), (2, "Jackpot Lead", 50000), (3, "Problem Solve QB", 50000), (4, "LB", 50000), (5, "Manager", 70000), (5, "IB Docks", 60000), (5, "Stow", 40000), (6, "Picker", 60000), (6, "OB Docks", 50000), (6, "Counter", 30000);

INSERT INTO employee (First_name, last_name, role_id, manager_id) VALUES ("Daniel", "Huckabaa", 5, NULL), ("Oscar", "Hernandez", 4, 1), ("Chris", "Gonzales", 1, 1), ("Maya", "Hayashi", 7, 1), ("Will", "Yorty", 3, 1), ("Bridget", "Peterson", 8, 1), ("Marcos", "Flores", 8, 1), ("Thomas", "Gutierrez", 10, 1), ("Ashley", "Watts", 7, 1), ("Bree", "Brown", 2, 1), ("Alex", "Sioux", 8, 1), ("Alexis", "Lopez", 6, 1), ("Ryan", "White", 3, 1), ("Q", "Cho", 9, 1), ("Isela", "Guttierez", 9, 1), ("Steven", "Vega", 10, 1), ("Ramandeep", "Urias", 10, 1);

