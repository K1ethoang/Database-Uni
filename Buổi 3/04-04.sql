use quanlycongtrinh;

-- 				INNER JOIN
SELECT *
FROM nhanvien nv
INNER JOIN phongban pb on nv.mapb = pb.mapb;

-- hien thi nhan vien lam viec o phong ban sale
SELECT *
FROM nhanvien nv
JOIN phongban pb on nv.mapb = pb.mapb
WHERE pb.tenpb LIKE 'Sales';

-- hien thi ten nv lam so ngay cong >= 50
SELECT nv.manv, nv.hoten, pc.slngaycong
FROM nhanvien nv
JOIN phancong pc ON nv.manv = pc.manv
WHERE pc.slngaycong >= 50;

		-- cach viet cua sql server
SELECT *
FROM nhanvien nv, phancong pc
WHERE nv.manv = pc.manv AND pc.slngaycong >= 50;

-- 				LEFT JOIN
SELECT *
FROM phongban pb
LEFT JOIN nhanvien nv ON pb.mapb = nv.mapb
ORDER BY pb.mapb DESC;


-- 				RIGHT JOIN
SELECT *
FROM nhanvien nv
RIGHT JOIN phongban pb ON pb.mapb = nv.mapb
ORDER BY pb.mapb DESC;



-- loc ra phong ban chua co nhan vien lam viec
SELECT *
FROM phongban pb
RIGHT JOIN nhanvien nv ON pb.mapb = nv.mapb
WHERE nv.manv IS NULL;



-- C1: loc ra nv chua lam du an nao
SELECT nv.*
FROM nhanvien nv
LEFT JOIN phancong pc ON nv.manv = pc.manv
WHERE pc.manv IS NULL;

-- C2: thong ke so nv cua tung phong ban
SELECT pb.*, COUNT(nv.manv) as 'so luong nhan vien'
FROM nhanvien nv
RIGHT JOIN phongban pb ON nv.mapb = pb.mapb
GROUP BY pb.mapb;

-- C3: hien thi thong tin cong trinh ma nhan vien co ten abc lam viec
SELECT ct.*, nv.hoten
FROM phancong pc, nhanvien nv, congtrinh ct
WHERE pc.mact = ct.mact
AND pc.manv = nv.manv
AND nv.hoten like 'Rub%';

-- subquery: ton thoi gian
-- IN
-- loc ra nhan vien co lam du an
SELECT *
FROM nhanvien nv
WHERE nv.manv IN(
				SELECT DISTINCT pc.manv
				FROM phancong pc);
                
SELECT *
FROM nhanvien nv
WHERE nv.manv > ALL(
				SELECT DISTINCT pc.manv
				FROM phancong pc);