-- Truy vấn sử dụng INNER JOIN: Lấy tên phim và rạp chiếu tương ứng
SELECT distinct Phim.TenPhim, Rap.TenRap
FROM Phim
INNER JOIN LichChieu ON Phim.MaPhim = LichChieu.MaPhim
INNER JOIN Phong ON LichChieu.MaPhong = Phong.MaPhong
INNER JOIN Rap ON Phong.MaRap = Rap.MaRap
order by Phim.TenPhim;


-- Truy vấn sử dụng OUTER JOIN: Lấy tất cả các phim và suất chiếu, bao gồm các phim không có suất chiếu
SELECT Phim.TenPhim, LichChieu.ThoiGianBatDau
FROM Phim
LEFT OUTER JOIN LichChieu ON Phim.MaPhim = LichChieu.MaPhim;


-- Truy vấn với subquery dùng WHERE: Lấy nhân viên làm việc ở Cinema A
SELECT NhanVien.HoTen AS TenNhanVien, NhanVien.ChucVu
FROM NhanVien
WHERE NhanVien.MaRap = 
    (SELECT MaRap
     FROM Rap
     WHERE TenRap = 'Cinema A');

-- Truy vấn với subquery dùng FROM : Khách hàng và số tiền họ mua vé
SELECT KhachHang.HoTen AS TenKhachHang,
       (SELECT SUM(LichChieu.Gia)
        FROM Ve
        JOIN LichChieu ON Ve.MaLichChieu = LichChieu.MaLichChieu
        WHERE Ve.MaKhachHang = KhachHang.MaKhachHang) AS SoTienDaTra
FROM KhachHang;



-- Truy vấn sử dụng GROUP BY và hàm tổng hợp: Tổng số vé bán được cho mỗi phim
SELECT Phim.TenPhim, COUNT(Ve.MaVe) AS TongVeDaBan
FROM Phim
JOIN LichChieu ON Phim.MaPhim = LichChieu.MaPhim
JOIN Ve ON LichChieu.MaLichChieu = Ve.MaLichChieu
GROUP BY Phim.TenPhim;
