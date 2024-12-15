-- Thêm dữ liệu Rạp
INSERT INTO Rap (TenRap, KhuVuc) VALUES ('Cinema A', 'Hà Nội');
INSERT INTO Rap (TenRap, KhuVuc) VALUES ('Cinema B', 'TP.HCM');
INSERT INTO Rap (TenRap, KhuVuc) VALUES ('Cinema C', 'Đà Nẵng');
INSERT INTO Rap (TenRap, KhuVuc) VALUES ('Cinema D', 'Hải Phòng');
INSERT INTO Rap (TenRap, KhuVuc) VALUES ('Cinema E', 'Cần Thơ');

-- Thêm dữ liệu Phòng chiếu
INSERT INTO Phong (TenPhong, MaRap) VALUES ('Phong 1', 1);
INSERT INTO Phong (TenPhong, MaRap) VALUES ('Phong 2', 1);
INSERT INTO Phong (TenPhong, MaRap) VALUES ('Phong 3', 2);
INSERT INTO Phong (TenPhong, MaRap) VALUES ('Phong 4', 3);
INSERT INTO Phong (TenPhong, MaRap) VALUES ('Phong 5', 4);

-- Thêm dữ liệu Phim
INSERT INTO Phim (TenPhim, TheLoai, ThoiLuong, NgayChieu) 
VALUES ('Avatar 2', 'Khoa học viễn tưởng', 162, '2024-12-20');
INSERT INTO Phim (TenPhim, TheLoai, ThoiLuong, NgayChieu) 
VALUES ('The Hunger Games', 'Hành động', 140, '2024-12-21');
INSERT INTO Phim (TenPhim, TheLoai, ThoiLuong, NgayChieu) 
VALUES ('Titanic', 'Tình cảm', 195, '2024-12-22');
INSERT INTO Phim (TenPhim, TheLoai, ThoiLuong, NgayChieu) 
VALUES ('Avengers: Endgame', 'Hành động', 181, '2024-12-23');
INSERT INTO Phim (TenPhim, TheLoai, ThoiLuong, NgayChieu) 
VALUES ('Frozen 2', 'Hoạt hình', 103, '2024-12-24');

-- Thêm dữ liệu lịch chiếu
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (1, 1, '2024-12-20 18:00:00', '2024-12-20 20:42:00', 150000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (2, 2, '2024-12-21 19:00:00', '2024-12-21 21:20:00', 120000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (3, 3, '2024-12-22 20:00:00', '2024-12-22 22:35:00', 100000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (4, 4, '2024-12-23 17:00:00', '2024-12-23 20:01:00', 140000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (5, 5, '2024-12-24 16:30:00', '2024-12-24 18:13:00', 90000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (1, 2, '2024-12-21 20:00:00', '2024-12-21 22:42:00', 150000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (2, 3, '2024-12-22 18:00:00', '2024-12-22 20:20:00', 120000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (3, 4, '2024-12-23 16:00:00', '2024-12-23 18:35:00', 100000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (4, 5, '2024-12-24 15:00:00', '2024-12-24 18:01:00', 140000);
INSERT INTO LichChieu (MaPhim, MaPhong, ThoiGianBatDau, ThoiGianKetThuc, Gia) 
VALUES (5, 1, '2024-12-20 19:00:00', '2024-12-20 20:43:00', 90000);

-- Thêm dữ liệu Ghế
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'A', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'A', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'A', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'B', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'B', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'B', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'C', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'C', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'C', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'D', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'D', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (1, 'D', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'A', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'A', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'A', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'B', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'B', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'B', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'C', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'C', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'C', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'D', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'D', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (2, 'D', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (3, 'A', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (3, 'A', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (3, 'A', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (3, 'B', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (3, 'B', 2);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (3, 'B', 3);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (3, 'C', 1);
INSERT INTO Ghe (MaPhong, HangGhe, SoGhe) VALUES (3, 'C', 2);


-- Thêm dữ liệu Khách hàng
INSERT INTO KhachHang (HoTen, Email, SoDienThoai, DiaChi, NgaySinh, MatKhau, NgayDangKy)
VALUES
('Nguyen Thi Lan', 'lan.nguyen@gmail.com', '0987654321', 'Hà Nội', '1995-03-25', 'matkhau123', '2024-12-14'),
('Le Minh Tuan', 'minhtuan.le@gmail.com', '0912345678', 'Hồ Chí Minh', '1990-05-15', 'tuan1234', '2024-12-14'),
('Tran Thanh Son', 'son.tran@gmail.com', '0922334455', 'Đà Nẵng', '1988-11-20', 'son12345', '2024-12-14'),
('Phan Thi Thanh', 'thanh.phan@yahoo.com', '0933445566', 'Hải Phòng', '1997-07-09', 'thanh5678', '2024-12-14'),
('Nguyen Hoang Nam', 'nam.nguyen@hotmail.com', '0901122334', 'Cần Thơ', '1994-09-01', 'nam890', '2024-12-14');

-- Thêm dữ liệu Vé
INSERT INTO Ve (MaLichChieu, MaGhe, MaKhachHang, ThoiGianDatVe) 
VALUES 
(1, 1, 1, '2024-12-19 12:00:00'),
(2, 2, 2, '2024-12-20 14:00:00'),
(3, 3, 3, '2024-12-21 16:00:00'),
(4, 4, 4, '2024-12-22 18:00:00'),
(5, 5, 5, '2024-12-23 20:00:00');

-- Thêm dữ liệu Nhân viên
INSERT INTO NhanVien (HoTen, Email, SoDienThoai, ChucVu, Luong, MaRap, NgayVaoLam) 
VALUES 
('Nguyễn Minh A', 'a.nv@example.com', '0976543210', 'ThuNgan', 8000000, 1, '2024-01-01'),
('Trần Thanh B', 'b.nv@example.com', '0987654321', 'QuanLy', 15000000, 2, '2024-01-02'),
('Lê Công C', 'c.nv@example.com', '0998765432', 'KyThuatVien', 10000000, 3, '2024-01-03'),
('Phan Minh D', 'd.nv@example.com', '0912345678', 'ThuNgan', 8500000, 4, '2024-01-04'),
('Vũ Thiên E', 'e.nv@example.com', '0909876543', 'VeSinh', 7000000, 5, '2024-01-05');

-- Thêm dữ liệu Ca làm việc
INSERT INTO CaLamViec (MaNhanVien, NgayLam, ThoiGianBatDau, ThoiGianKetThuc) 
VALUES 
(1, '2024-12-20', '08:00:00', '17:00:00'),
(2, '2024-12-21', '09:00:00', '18:00:00'),
(3, '2024-12-22', '10:00:00', '19:00:00'),
(4, '2024-12-23', '11:00:00', '20:00:00'),
(5, '2024-12-24', '12:00:00', '21:00:00');

