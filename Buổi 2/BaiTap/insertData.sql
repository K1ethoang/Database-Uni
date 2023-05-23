use quan_ly_sinh_vien;

insert into KHOA (makhoa, tenkhoa) values (5, 'CNTT');
insert into KHOA (makhoa, tenkhoa) values (3, 'QTKD');
insert into KHOA (makhoa, tenkhoa) values (1, 'KTXD');
insert into KHOA (makhoa, tenkhoa) values (2, 'OTO');
insert into KHOA (makhoa, tenkhoa) values (4, 'TKDH');

insert into MONHOC (MAMH, TENMH, SOTC) values (1, 'Mastercard Incorporated', 1);
insert into MONHOC (MAMH, TENMH, SOTC) values (3, 'First Busey Corporation', 4);
insert into MONHOC (MAMH, TENMH, SOTC) values (4, 'Saul Centers, Inc.', 3);
insert into MONHOC (MAMH, TENMH, SOTC) values (2, 'American Electric Technologies, Inc.', 3);
insert into MONHOC (MAMH, TENMH, SOTC) values (5, 'Oncobiologics, Inc.', 5);

insert into GIANGVIEN (MAGV, HOTENGV, HOCVI, CHUYENNGANH, MAKHOA) values (1, 'Ruben O Corren', 'Stronghold', 'CNTT', 2);
insert into GIANGVIEN (MAGV, HOTENGV, HOCVI, CHUYENNGANH, MAKHOA) values (2, 'Annissa Greenhead', 'Span', 'QTKD', 4);
insert into GIANGVIEN (MAGV, HOTENGV, HOCVI, CHUYENNGANH, MAKHOA) values (3, 'Giuditta Beacham', 'Gembucket', 'CNTT', 5);
insert into GIANGVIEN (MAGV, HOTENGV, HOCVI, CHUYENNGANH, MAKHOA) values (4, 'Merwyn Romanet', 'Ventosanzap', 'KT', 2);
insert into GIANGVIEN (MAGV, HOTENGV, HOCVI, CHUYENNGANH, MAKHOA) values (5, 'Philippine Laste', 'Greenlam', 'AF', 5);

insert into lop (malop, tenlop, makhoa) values (1, 'A', 4);
insert into lop (malop, tenlop, makhoa) values (2, 'B', 2);
insert into lop (malop, tenlop, makhoa) values (3, 'C', 2);
insert into lop (malop, tenlop, makhoa) values (4, 'D', 4);
insert into lop (malop, tenlop, makhoa) values (5, 'E', 4);
insert into lop (malop, tenlop, makhoa) values (6, 'F', 5);

insert into sinhvien (masv, hoten, gt, ngaysinh, noisinh, tinh, malop) values (1, 'Brock Tuting', 1, '2022-12-12', 'Pinoma', 'São Paio Merelim', 2);
insert into sinhvien (masv, hoten, gt, ngaysinh, noisinh, tinh, malop) values (2, 'Rosaleen Hamnett', 0, '2022-12-12', 'La Unión', 'Tembongraja', 5);
insert into sinhvien (masv, hoten, gt, ngaysinh, noisinh, tinh, malop) values (3, 'Roda Endicott', 0, '2022-12-12', 'Har Nur', 'Gosen', 2);
insert into sinhvien (masv, hoten, gt, ngaysinh, noisinh, tinh, malop) values (4, 'Aurel Swindell', 1, '2022-12-12', 'Liugong', 'Wanmingang', 5);
insert into sinhvien (masv, hoten, gt, ngaysinh, noisinh, tinh, malop) values (5, 'Danita Neath', 0, '2022-12-12', 'Telnice', 'Krasnyy Klyuch', 2);
insert into sinhvien (masv, hoten, gt, ngaysinh, noisinh, tinh, malop) values (6, 'DUY', 1, '2022-12-12', 'Liugong', 'Wanmingang', 6);

insert into KETQUA (MAMH, MASV, LANTHI, DIEMTHI) values (5, 5, 2, 3);
insert into KETQUA (MAMH, MASV, LANTHI, DIEMTHI) values (1, 4, 1, 1);
insert into KETQUA (MAMH, MASV, LANTHI, DIEMTHI) values (3, 4, 2, 6);
insert into KETQUA (MAMH, MASV, LANTHI, DIEMTHI) values (5, 2, 2, 7);
insert into KETQUA (MAMH, MASV, LANTHI, DIEMTHI) values (2, 5, 1, 7);

insert into PHANCONG (MAMH, MAGV, MALOP) values (1, 1, 4);
insert into PHANCONG (MAMH, MAGV, MALOP) values (1, 3, 1);
insert into PHANCONG (MAMH, MAGV, MALOP) values (5, 5, 1);
insert into PHANCONG (MAMH, MAGV, MALOP) values (3, 2, 2);
insert into PHANCONG (MAMH, MAGV, MALOP) values (3, 5, 2);