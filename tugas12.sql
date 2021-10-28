DROP TABLE IF EXISTS nilai_mahasiswa; 
CREATE TABLE nilai_mahasiswa ( 
nim CHAR(8) PRIMARY KEY, 
nama VARCHAR(50), 
semester_1 DECIMAL(4,2), 
semester_2 DECIMAL(4,2), 
semester_3 DECIMAL(4,2) 
) ENGINE = INNODB; 

INSERT INTO nilai_mahasiswa VALUES 
('17090113', 'Riana Putria', 3.12, 2.98, 3.45), 
('17140143', 'Rudi Permana', 2.56, 3.14, 3.22), 
('17080305', 'Rina Kumala Sari', 3.45, 2.56, 3.67), 
('17140119', 'Sandri Fatmala', 2.12, 2.78, 2.56),
('17090308', 'Christine Wijaya', 3.78, 3.23, 3.11);

1. CREATE VIEW nilai_ipk AS 
SELECT 
mahasiswa_niomic.`nim`,
mahasiswa_niomic.`nama`,
nilai_mahasiswa.`semester_1`+nilai_mahasiswa.`semester_2` + nilai_mahasiswa.`semester_3` AS ipk
FROM mahasiswa_niomic 
INNER JOIN nilai_mahasiswa
ON mahasiswa_niomic.`nim` = nilai_mahasiswa.`nim`

SELECT * FROM nilai_ipk

2. CREATE VIEW  nilai_ipk_format AS
SELECT 
CONCAT (nilai_ipk.`nama`,'(',nilai_ipk.`ipk`,')' )AS 'Nama dan IPK'
FROM nilai_ipk	


SELECT*FROM nilai_ipk_format

3. INSERT INTO mahasiswa_niomic VALUES('178998','Yuli Prihati','Purworejo','Manajemen','322')


4. SELECT * FROM nilai_ipk_format
   WHERE nilai_ipk_format.`Nama dan IPK` LIKE "%R%"
    	
5. DROP VIEW nilai_ipk , nilai_ipk_format
	
