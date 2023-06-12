CREATE DATABASE demo;

Create Table Particle (ID int, Dt Date);

INSERT INTO Particle (ID, Dt) VALUES (1111, '12.01.2022'), (1111, '10.01.2022'), (1111, '09.01.2022'),(1111, '01.01.2023'), (2222, '01.01.2022'), (2222, '05.01.2022'), (2222, '04.01.2022');

SELECT * FROM Particle;

SELECT ID,Min(Dt) as MinDate FROM Particle GROUP BY ID;

SELECT ID, Dt, ABS(DATEDIFF(MONTH, Dt, MIN(Dt) OVER(PARTITION BY ID))) AS Diff_in_Month FROM Particle;