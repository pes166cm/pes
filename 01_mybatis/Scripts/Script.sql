SELECT * FROM student ORDER BY STUDENT_NO desc;



SELECT COUNT(*) FROM student; 


SELECT * FROM (
	SELECT rownum AS rnum, s.*
		from(
			SELECT * FROM student ORDER BY reg_date DESC 
		) s
)WHERE rnum BETWEEN 6 AND 10;



SELECT rownum, s.* FROM student s
WHERE rownum BETWEEN 1 AND 5;



SELECT COUNT(*) FROM student; 

SELECT * FROM notice;


SELECT * FROM BOARD;


SELECT * FROM notice;
