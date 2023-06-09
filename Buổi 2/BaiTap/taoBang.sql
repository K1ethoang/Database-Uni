CREATE DATABASE IF NOT EXISTS quan_ly_sinh_vien;
USE quan_ly_sinh_vien;

CREATE TABLE KHOA(
MAKHOA INT PRIMARY KEY ,
TENKHOA VARCHAR(50)
);

CREATE TABLE LOP(
MALOP INT PRIMARY KEY,
TENLOP VARCHAR(50),
MAKHOA INT,
FOREIGN KEY(MAKHOA) REFERENCES KHOA(MAKHOA)
);

CREATE TABLE SINHVIEN(
MASV INT PRIMARY KEY,
HOTEN VARCHAR(50),
GT BIT,
NGAYSINH DATE,
NOISINH VARCHAR(50),
TINH VARCHAR(50),
MALOP INT ,
FOREIGN KEY(MALOP) REFERENCES LOP(MALOP) 
);

CREATE TABLE MONHOC(
MAMH INT PRIMARY KEY,
TENMH VARCHAR(50),
SOTC INT
);

CREATE TABLE GIANGVIEN (
MAGV INT PRIMARY KEY,
HOTENGV VARCHAR(50),
HOCVI VARCHAR(50),
CHUYENNGANH VARCHAR(50),
MAKHOA INT,
FOREIGN KEY(MAKHOA) REFERENCES KHOA(MAKHOA)
);

CREATE TABLE KETQUA(
MASV INT,
FOREIGN KEY(MASV) REFERENCES SINHVIEN(MASV),
MAMH INT,
FOREIGN KEY(MAMH) REFERENCES MONHOC(MAMH),
LANTHI INT,
DIEMTHI INT,
PRIMARY KEY(MASV,MAMH)
);

CREATE TABLE PHANCONG(
MALOP INT,
FOREIGN KEY(MALOP) REFERENCES LOP(MALOP),
MAMH INT,
FOREIGN KEY(MAMH) REFERENCES MONHOC(MAMH),
MAGV INT,
PRIMARY KEY(MALOP,MAMH,MAGV)
);

