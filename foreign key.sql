ALTER TABLE emp DROP FOREIGN KEY fk_emp_dept;
DROP TABLE
IF
	EXISTS emp;
CREATE TABLE emp ( id INT PRIMARY KEY auto_increment, NAME VARCHAR ( 20 ), age INT, dep_id INT );
alter table emp add column job_id int not null;


alter table emp modify job_id int(4) null;
CREATE TABLE job ( id INT PRIMARY KEY auto_increment, job_name VARCHAR ( 20 ), dep_id INT );
INSERT INTO job ( job_name, dep_id)values
('read',2),
('write',1),
('draw',4),
('paint',3);

alter table job add CONSTRAINT fk_job_dept foreign key(dep_id) REFERENCES dept(id);
alter table emp add CONSTRAINT fk_emp_job foreign key(job_id) REFERENCES job(id);
ALTER TABLE emp DROP FOREIGN KEY fk_emp_job;
ALTER TABLE job DROP FOREIGN KEY fk_job_dept;
CREATE TABLE divided ( id INT PRIMARY KEY auto_increment, degree VARCHAR ( 20 ), low int, high int );
INSERT INTO divided ( degree, low, high)values
('young',10,16),
('middle',17,20),
('old',20,50);

select * from emp INNER JOIN divided on emp.age >= divided.low and emp.age <= divided.high;

update divided set low = 21 where id = 3;
select * from emp LEFT JOIN dept on emp.dep_id = dept.id;
select * from emp INNER JOIN dept on emp.dep_id=dept.id INNER JOIN job on emp.job_id = job.id order by emp.id asc;
select * from emp INNER JOIN dept on emp.dep_id=dept.id INNER JOIN job on emp.job_id = job.id;

select * from emp LEFT JOIN dept on emp.dep_id=dept.id LEFT JOIN job on emp.job_id = job.id order by emp.id asc;

select dep_id, count(dep_id) from emp GROUP BY dep_id;
select dept.id, dep_name,dept.addr, dc.cdi from dept left join (select dep_id, count(dep_id) as cdi from emp GROUP BY dep_id) as dc on dept.id = dc.dep_id;

SELECT
	emp.id,
	emp.name,
	emp.age,
	divided.degree,
	divided.low,
	divided.high,
	dept.dep_name,
	job.job_name
FROM
	emp
	LEFT JOIN dept ON emp.dep_id = dept.id
	LEFT JOIN job ON emp.job_id = job.id 
  INNER JOIN divided on emp.age >= divided.low and emp.age <= divided.high
ORDER BY
	emp.id ASC;
VALUES
	( 'fork', 20, NULL ),
	( 'thanks', 11, 2 );
	
INSERT INTO dept ( dep_name, addr )
VALUES
	( 'fourth', 'chengdu' );
	
INSERT INTO emp ( NAME, age, dep_id )
VALUES
	( 'fork', 20, NULL ),
	( 'thanks', 11, 2 );
INSERT INTO emp ( NAME, age, dep_id, job_id )
VALUES
	( 'test', 20, NULL,NULL );
ALTER TABLE emp ADD CONSTRAINT fk_emp_dept FOREIGN KEY ( dep_id ) REFERENCES dept ( id );
SELECT
	* 
FROM
	emp;
SELECT
	* 
FROM
	dept;
SELECT
	* 
FROM
	emp,
	dept 
WHERE
	emp.dep_id = dept.id 
ORDER BY
	emp.id ASC;
SELECT
	* 
FROM
	emp
	INNER JOIN dept ON emp.dep_id = dept.id 
ORDER BY
	emp.id ASC;
SELECT
	* 
FROM
	emp
	LEFT JOIN dept ON emp.dep_id = dept.id 
ORDER BY
	emp.id ASC;
	
SELECT
	* 
FROM
	dept
	LEFT JOIN emp ON emp.dep_id = dept.id 
ORDER BY
	dept.id ASC;
	
select id from dept where addr = 'shanghai' or addr = 'hangzhou';
select * from emp where dep_id in (select id from dept where addr = 'shanghai' or addr = 'hangzhou');

select * from emp where age>15;
SELECT
	* 
FROM
	( SELECT * FROM emp WHERE age > 15 ) AS te
	LEFT JOIN dept ON te.dep_id = dept.id;