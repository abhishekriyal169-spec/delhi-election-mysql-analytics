CREATE DATABASE delhi_election_db;
USE delhi_election_db;

CREATE TABLE districts (
   district_id INT AUTO_INCREMENT PRIMARY KEY,
   district_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE constituencies (
    constituency_id INT AUTO_INCREMENT PRIMARY KEY,
    constituency_name VARCHAR(100) NOT NULL,
    district_id INT NOT NULL,
    FOREIGN KEY (district_id) REFERENCES districts(district_id)
);

CREATE TABLE polling_stations (
    station_id INT AUTO_INCREMENT PRIMARY KEY,
    station_name VARCHAR(150),
    constituency_id INT NOT NULL,
    FOREIGN KEY (constituency_id) REFERENCES constituencies(constituency_id)
);

CREATE TABLE elections (
   election_id INT AUTO_INCREMENT PRIMARY KEY,
   election_year INT NOT NULL,
   election_type VARCHAR(50) DEFAULT 'Delhi Assembly'
);

CREATE TABLE parties(
   party_id INT AUTO_INCREMENT PRIMARY KEY,
   party_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE voters (
    voter_id INT AUTO_INCREMENT PRIMARY KEY,
    age INT CHECK (age >= 18),
    gender ENUM('Male', 'Female', 'Other'),
    constituency_id INT,
    registered_on DATE,
    FOREIGN KEY (constituency_id) REFERENCES constituencies(constituency_id)
);

CREATE TABLE votes (
   vote_id INT AUTO_INCREMENT PRIMARY KEY,
   voter_id INT,
   election_id INT,
   voted_at DATETIME,
   FOREIGN KEY (voter_id) REFERENCES voters(voter_id),
   FOREIGN KEY (election_id) REFERENCES elections(election_id),
   UNIQUE (voter_id, election_id)
);