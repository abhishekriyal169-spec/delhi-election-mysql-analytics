DELIMITER $$

CREATE TRIGGER validate_vote_time
BEFORE INSERT ON votes
FOR EACH ROW 
BEGIN
     IF DATE(NEW.voted_at) NOT BETWEEN '2025-02-05' AND '2025-02-05' THEN
         SIGNAL SQLSTATE '45000'
         SET MESSAGE_TEXT = 'Voting not allowed outside election date';
     END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE constituency_turnout()
BEGIN
     SELECT
        c.constituency_name,
        COUNT(DISTINCT v.vote_id) AS votes_cast,
        COUNT(DISTINCT vr.voter_id) AS total_voters,
        ROUND(
              COUNT(DISTINCT v.vote_id) / COUNT(DISTINCT vr.voter_id) * 100, 3
        ) AS turnout_percentage
     FROM voters vr
     LEFT JOIN votes v ON vr.voter_id = v.voter_id
     JOIN constituencies c ON vr.constituency_id = c.constituency_id
     GROUP BY c.constituency_name;
END$$

DELIMITER ;