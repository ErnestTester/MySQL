Create database sampledb1;
Use sampledb1;

CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (member_id)
);

CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (committee_id)
);

-- INNER JOIN
SELECT
 m.member_id,
 m.name,
 c.committee_id
FROM members m
INNER JOIN  committees c on c.name=m.name;

-- LEFT JOIN
SELECT
 m.member_id,
 m.name,
 c.committee_id
FROM members m
LEFT JOIN  committees c on c.name=m.name;