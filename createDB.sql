CREATE DATABASE CINEMA;
USE CINEMA;

-- Bảng Rạp chiếu
CREATE TABLE Rap (
    MaRap INT,
    TenRap VARCHAR(40) NOT NULL,
    KhuVuc VARCHAR(40) NOT NULL
);

-- Bảng Phòng chiếu
CREATE TABLE Phong (
    MaPhong INT PRIMARY KEY AUTO_INCREMENT,
    TenPhong VARCHAR(20) NOT NULL,
    MaRap INT
);

-- Bảng Phim
CREATE TABLE Phim (
    MaPhim INT PRIMARY KEY AUTO_INCREMENT,
    TenPhim VARCHAR(30) NOT NULL,
    TheLoai VARCHAR(30) NOT NULL,
    ThoiLuong INT NOT NULL,
    NgayChieu DATE NOT NULL
);

-- Bảng Lịch chiếu
CREATE TABLE LichChieu(
    MaLichChieu INT PRIMARY KEY AUTO_INCREMENT,
    MaPhim INT NOT NULL,
    MaPhong INT NOT NULL,
    ThoiGianBatDau DATETIME NOT NULL,
    ThoiGianKetThuc DATETIME NOT NULL,
    Gia DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (MaPhim) REFERENCES Phim(MaPhim),
    FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong)
);

-- Bảng Ghế ngồi
CREATE TABLE Ghe (
    MaGhe INT PRIMARY KEY AUTO_INCREMENT,
    MaPhong INT NOT NULL,
    HangGhe CHAR(1) NOT NULL,
    SoGhe INT NOT NULL, 
    TrangThai ENUM('ConGhe', 'DaDat') NOT NULL DEFAULT 'ConGhe',
    FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong)
);

-- Bảng Khách hàng
CREATE TABLE KhachHang (
    MaKhachHang INT PRIMARY KEY AUTO_INCREMENT,
    HoTen VARCHAR(40) NOT NULL,
    Email VARCHAR(40) UNIQUE NOT NULL,
    SoDienThoai VARCHAR(10) UNIQUE NOT NULL,
    DiaChi VARCHAR(255) NOT NULL,
    NgaySinh DATE NOT NULL,
    MatKhau VARCHAR(255) NOT NULL,
    NgayDangKy DATE NOT NULL
);

-- Bảng Vé
CREATE TABLE Ve (
    MaVe INT PRIMARY KEY AUTO_INCREMENT,
    MaLichChieu INT NOT NULL,
    MaGhe INT NOT NULL,
    MaKhachHang INT NOT NULL,
    ThoiGianDatVe DATETIME NOT NULL,
    FOREIGN KEY (MaLichChieu) REFERENCES LichChieu(MaLichChieu),
    FOREIGN KEY (MaGhe) REFERENCES Ghe(MaGhe),
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang)
);

-- Bảng nhân viên
CREATE TABLE NhanVien (
    MaNhanVien INT PRIMARY KEY AUTO_INCREMENT,
    HoTen VARCHAR(40) NOT NULL,
    Email VARCHAR(40) UNIQUE NOT NULL,
    SoDienThoai VARCHAR(10) UNIQUE NOT NULL,
    ChucVu ENUM('QuanLy', 'ThuNgan', 'KyThuatVien', 'VeSinh') NOT NULL,
    Luong DECIMAL(10, 2) NOT NULL,
    MaRap INT NOT NULL,
    NgayVaoLam DATE NOT NULL
);

-- Bảng Ca làm việc
CREATE TABLE CaLamViec (
    MaCa INT PRIMARY KEY AUTO_INCREMENT,
    MaNhanVien INT NOT NULL,
    NgayLam DATE NOT NULL,
    ThoiGianBatDau TIME NOT NULL,
    ThoiGianKetThuc TIME NOT NULL
);

