use quanlycongtrinh;

-- lọc ra thông tin nhân viên
SELECT *
FROM NhanVien;

-- lọc ra họ tên và phái của nhân viên 	
SELECT HoTen, Phai
FROM NhanVien;

-- lọc ra thông tin phái của nhân viên
SELECT Phai
FROM NhanVien;

-- lọc ra thông tin phái của nhân viên không trùng lặp
SELECT DISTINCT Phai AS 'Giới tính'
FROM NhanVien NV;

-- lọc ra thông tin nhân viên là nữ
SELECT * 
FROM NhanVien WHERE (
phai = 0
);

-- lọc ra nhân viên có ngày sinh trước "1/1/2023"
SELECT *
FROM NhanVien 
WHERE (
NgaySinh < "2023-1-1"
);

-- đặt tên viết tắt cho bảng
SELECT *
FROM NhanVien NV, PhongBan PB
WHERE (
	NV.MaPB = PB.MaPB
);

-- tính lương nhân viên
SELECT NV.MaNV, HoTen, NgaySinh, MaPB, SLNgayCong*200 AS "Lương"
FROM NhanVien NV, PhanCong PC
WHERE(
	NV.MaNV = PC.MaNV
);

-- Lọc ra nhân viên có tên là "Rubin Rulf"
SELECT *
FROM NhanVien
WHERE(
	HoTen = "Rubin Rulf"
);

-- Lọc ra nhân viên chứa từ có họ tên là "Rubin"
SELECT *
FROM NhanVien
WHERE(
	HoTen LIKE '%Rubin%'
);

-- lọc ra nhân viên thuộc phòng ban 1, 2, 3
SELECT *
FROM NhanVien
WHERE(
	MaPB IN(1,2,3)
);

-- bai tap
-- Lọc ra thông tin phòng ban
SELECT *
FROM PhongBan;
-- Lọc ra nhân viên có lương >= 10000
SELECT *, SLNgayCong*200 AS "Lương"
FROM NhanVien NV, PhanCong PC
WHERE(
	NV.MaNV = PC.MaNV AND
    PC.SLNgayCong*200 >= 10000
);
-- lọc ra công trình tại china
SELECT *
FROM CongTrinh
WHERE (
	DiaDiem = "china"
);
-- lọc ra công trình có ngày khởi công sau ngày 1-1-2022
SELECT *
FROM CongTrinh
WHERE(
	NgayKC > "2022-1-1"
);
-- lọc ra thông tin phòng ban 1, 2, 3
SELECT *
FROM PhongBan
WHERE(
	MaPB IN (1,2,3)
);

-- sắp xếp
SELECT *
FROM PhongBan
ORDER BY MaPB DESC, TenPB ASC;
-- đầu tiên sắp xếp theo MaPB nếu MaPB nào trùng nhau thì sắp xếp theo TenPB

-- lọc ra thông tin nhân viên
SELECT *
FROM NhanVien
ORDER BY Phai ASC, MaPB DESC
LIMIT 2 OFFSET 5;

--                                                         COUNT
-- COUNT(*) : Đếm qua tất cả các dòng, chỉ cần 1 cột trong đó khác NULL thì đếm
-- COUNT(1) <Nhanh hơn về tốc độ> : Chèn thêm 1 cột và đếm trên cột đó
-- COUNT(COL) : Đếm theo cột mình truyền vào, khác NULL thì đếm
-- COUNT(DISTINCT COL) : Đếm nhưng loại trùng nếu cột đó có dữ liệu trùng thì đếm là 1

--                                                        GROUP BY
-- GROUP_CONCAT(COL) : Hiển thị ra thông tin của từng nhóm
-- Đếm số nhân viên theo giới tính
SELECT Phai, count(*) as "Số lượng NV", GROUP_CONCAT(MaNV)
FROM NhanVien
GROUP BY Phai
HAVING COUNT(*) >= 5;

-- bài tập
-- Đếm số công trình của nhân viên tham gia
SELECT PC.MaNV, COUNT(*) AS 'Số công trình'
FROM PhanCong PC
GROUP BY PC.MaNV;
-- Hiển thị mã nhân viên làm từ 2 công trình trở lên
SELECT MaNV, COUNT(*) AS 'Số công trình'
FROM PhanCong PC
GROUP BY PC.MaNV
HAVING COUNT(*) >= 2;


