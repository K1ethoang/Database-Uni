DROP DATABASE IF EXISTS QuanLyCongTrinh;
CREATE DATABASE QuanLyCongTrinh;
USE QuanLyCongTrinh;
CREATE TABLE CongTrinh(
	MaCT INT PRIMARY KEY AUTO_INCREMENT,
    TenCT VARCHAR(100) NOT NULL UNIQUE,
    DiaDiem VARCHAR(100) NOT NULL UNIQUE,
    NgayCapGP DATE NOT NULL,
    NgayKC DATE NOT NULL,
    NgayHT DATE NOT NULL
);

CREATE TABLE PhongBan(
	MaPB TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    TenPB VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE NhanVien(
	MaNV INT PRIMARY KEY AUTO_INCREMENT,
    HoTen VARCHAR(50),
    NgaySinh DATE CHECK(NgaySinh <= sysdate()),
    Phai BIT DEFAULT 0,
    DiaChi VARCHAR(100),
    MaPB TINYINT UNSIGNED,
    FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB)
);

CREATE TABLE PhanCong(
	MaCT INT  ,
    MaNV INT ,
    SLNgayCong INT,
    FOREIGN KEY (MaCT) REFERENCES CongTrinh(MaCT),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
	PRIMARY KEY (MaCT, MaNV)
);


-- chen du lieu

insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (1, 'Pasararba', 'Indonesia', '2022-12-22', '2022-09-19', '2022-06-22');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (2, 'Kipen’', 'Russia', '2022-12-05', '2022-07-22', '2023-01-18');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (3, 'Katima Mulilo', 'Namibia', '2022-03-27', '2022-12-26', '2022-08-23');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (4, 'Safi', 'Jordan', '2022-12-04', '2022-11-12', '2023-01-04');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (5, 'Ronglong', 'China', '2022-12-30', '2022-03-26', '2022-03-25');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (6, 'Hamanoichi', 'Japan', '2022-06-30', '2022-07-06', '2022-11-04');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (7, 'Chrysoúpolis', 'Greece', '2023-03-07', '2022-06-29', '2022-09-16');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (8, 'Kashima', 'Japan1', '2023-02-25', '2023-01-16', '2022-10-15');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (9, 'Efeng', 'China1', '2022-03-24', '2022-10-29', '2022-12-17');
insert into CongTrinh (MaCT, TenCT, DiaDiem, NgayCapGP, NgayKC, NgayHT) values (10, 'Zaqatala', 'Azerbaijan', '2022-07-23', '2022-07-31', '2022-09-12');

insert into PhongBan (MaPB, TenPB) values (1, 'Research and Development');
insert into PhongBan (MaPB, TenPB) values (2, 'Services');
insert into PhongBan (MaPB, TenPB) values (3, 'Support');
insert into PhongBan (MaPB, TenPB) values (4, 'Human Resources');
insert into PhongBan (MaPB, TenPB) values (5, 'Engineering');
insert into PhongBan (MaPB, TenPB) values (6, 'Training');
insert into PhongBan (MaPB, TenPB) values (7, 'Human Resources1');
insert into PhongBan (MaPB, TenPB) values (8, 'Training1');
insert into PhongBan (MaPB, TenPB) values (9, 'Sales');
insert into PhongBan (MaPB, TenPB) values (10, 'Support1');


insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (1, 'Fancie Chellam', '2022-04-25', 0, '774 Huxley Drive', 1);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (2, 'Luisa Stiggers', '2023-01-02', 1, '0246 Portage Circle', 2);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (3, 'Rasla Schuck', '2023-02-26', 1, '4 Karstens Trail', 3);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (4, 'Guthrey Chretien', '2023-03-09', 0, '13 Crownhardt Alley', 4);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (5, 'Eleonora Carcass', '2022-07-15', 0, '30 Maryland Point', 5);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (6, 'Carmel Muggach', '2022-08-01', 1, '26994 Roth Plaza', 6);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (7, 'Rubin Rulf', '2023-01-03', 0, '3428 Surrey Pass', 7);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (8, 'Elsinore Colliar', '2022-03-26', 1, '6708 Dawn Street', 8);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (9, 'Anabella Whapham', '2022-12-20', 0, '7 Dawn Alley', 9);
insert into NhanVien (MaNV, HoTen, NgaySinh, Phai, DiaChi, MaPB) values (10, 'Keith Pagen', '2022-11-17', 1, '376 Del Sol Hill', 10);


insert into PhanCong (MaCT, MaNV, SLNgayCong) values (6, 7, 46);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (8, 7, 40);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (9, 7, 49);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (9, 10, 20);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (9, 4, 83);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (1, 5, 92);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (3, 2, 9);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (2, 9, 62);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (2, 5, 64);
insert into PhanCong (MaCT, MaNV, SLNgayCong) values (3, 10, 5);

