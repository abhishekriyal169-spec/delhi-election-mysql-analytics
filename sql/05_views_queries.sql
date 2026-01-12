CREATE VIEW district_wise_turnout AS
SELECT
     d.district_name,
     COUNT(v.vote_id) AS votes_cast
FROM votes v
JOIN voters vr ON v.voter_id = vr.voter_id
JOIN constituencies c ON vr.constituency_id = c.constituency_id
JOIN districts d ON c.district_id = d.district_id
GROUP BY d.district_name;

-- Sample analytical query
SELECT
    c.constituency_name,
    COUNT(v.vote_id) AS votes_cast
FROM votes v
JOIN voters vr ON v.voter_id = vr.voter_id
JOIN constituencies c ON vr.constituency_id = c.constituency_id
GROUP BY c.constituency_name;