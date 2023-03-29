-- Xóa database
DROP DATABASE IF EXISTS hoc_csdl;

-- Tạo database có tên "hoc_csdl"
CREATE DATABASE hoc_csdl;

-- Sử dụng database "hoc_csdl"
USE hoc_csdl;

-- Xóa bảng SinhVien
DROP TABLE SinhVien;

CREATE TABLE Lop(
	MaLop INT PRIMARY KEY AUTO_INCREMENT,
    TenLop VARCHAR(50) NOT NULL UNIQUE
);

-- Tạo bảng SinhVien
CREATE TABLE SinhVien(
	MaSV VARCHAR(20),
    HoTen VARCHAR(20) NOT NULL,
    Diem FLOAT NOT NULL CHECK(Diem BETWEEN 0 AND 10),
    GioiTinh BIT DEFAULT 0,
    NgaySinh DATE CHECK(NgaySinh <= sysdate()),
    MaLop INT,
    FOREIGN KEY (MaLop) REFERENCES Lop(MaLop)
);

-- Xóa tất cả dữ liệu trong bảng
TRUNCATE TABLE sinhvien;

INSERT INTO SinhVien (MaSV, HoTen, Diem, NgaySinh) VALUES
("1", "Kiet", 7.5, "2000-01-01"),
("2", "Mii", 5.7, "2024-02-02")
;

SELECT * FROM SinhVien
ORDER BY MaSV ASC;