-- Synthetic voter data (for analytics only)

INSERT INTO voters (age, gender, constituency_id, registered_on) VALUES
(25, 'Male', 1, '2019-01-10'),
(42, 'Female', 1, '2018-07-22'),
(33, 'Male', 2, '2019-02-14'),
(29, 'Female', 3, '2019-05-18'),
(51, 'Male', 4, '2018-11-30'),
(38, 'Female', 5, '2019-06-12'),
(46, 'Male', 6, '2018-08-20'),
(22, 'Female', 7, '2019-01-03');

-- Synthetic vote records
INSERT INTO votes (voter_id, election_id, voted_at) VALUES
(1, 3, '2025-02-05 09:30:00'),
(2, 3, '2025-02-05 10:10:00'),
(3, 3, '2025-02-05 11:45:00'),
(4, 3, '2025-02-05 13:20:00');