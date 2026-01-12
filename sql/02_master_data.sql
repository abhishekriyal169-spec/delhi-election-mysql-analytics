INSERT INTO districts (district_name) VALUES
('Central Delhi'),
('East Delhi'),
('New Delhi'),
('North Delhi'),
('North East Delhi'),
('North West Delhi'),
('Shahdara'),
('South Delhi'),
('South East Delhi'),
('South West Delhi'),
('West Delhi');

INSERT INTO constituencies (constituency_name, district_id) VALUES
('Karol Bagh', 1),
('Chandni Chowk', 1),
('Gandhi Nagar', 2),
('Laxmi Nagar', 2),
('Kalkaji', 9),
('Greater Kailash', 9),
('Dwarka', 10),
('Najafgarh', 10);

INSERT INTO elections (election_year) VALUES (2015), (2020), (2025);

INSERT INTO parties (party_name) VALUES
('Aam Aadmi Party'),
('Bharatiya Janata Party'),
('Indian National Congress');