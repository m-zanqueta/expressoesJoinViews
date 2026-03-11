-- Questão 1
SELECT 
    s.ID, 
    s.name, 
    t.course_id, 
    t.grade
FROM student s
LEFT JOIN takes t ON s.ID = t.ID;

-- Questão 2
SELECT 
    s.ID, 
    s.name, 
    COUNT(t.course_id) AS "Quantidade de cursos"
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY "Quantidade de cursos" DESC;

-- Questão 3
CREATE VIEW civil_eng_students AS
SELECT TOP 100 PERCENT
    s.ID, 
    s.name, 
    COUNT(t.course_id) AS "Quantidade de cursos"
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY "Quantidade de cursos" DESC;
