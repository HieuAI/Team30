-- Truy vấn sử dụng INNER JOIN: Lấy tên phim và rạp chiếu tương ứng
SELECT Phim.TenPhim, Rap.TenRap
FROM Phim
INNER JOIN LichChieu ON Phim.MaPhim = LichChieu.MaPhim
INNER JOIN Phong ON LichChieu.MaPhong = Phong.MaPhong
INNER JOIN Rap ON Phong.MaRap = Rap.MaRap;


-- Truy vấn sử dụng OUTER JOIN: Lấy tất cả các phim và suất chiếu, bao gồm các phim không có suất chiếu
SELECT Phim.TenPhim, LichChieu.ThoiGianBatDau
FROM Phim
LEFT OUTER JOIN LichChieu ON Phim.MaPhim = LichChieu.MaPhim;


-- Truy vấn với subquery dùng WHERE:


-- Truy vấn với subquery dùng FROM


-- Truy vấn sử dụng GROUP BY và hàm tổng hợp: Tổng số vé bán được cho mỗi phim
SELECT Phim.TenPhim, COUNT(Ve.MaVe) AS TotalTickets
FROM Phim
JOIN LichChieu ON Phim.MaPhim = LichChieu.MaPhim
JOIN Ve ON LichChieu.MaLichChieu = Ve.MaLichChieu
GROUP BY Phim.TenPhim;
