-- Bắt đầu giao dịch
START TRANSACTION;

-- Thêm một vé mới vào bảng Ve
INSERT INTO Ve (MaLichChieu, MaGhe, MaKhachHang, ThoiGianDatVe)
VALUES (1, 5, 2, NOW());

-- Tạo một điểm lưu sau khi thêm vé thành công
SAVEPOINT SauKhiThemVe;

-- Thử thêm một vé trùng (sẽ gây lỗi do ràng buộc UNIQUE trên MaLichChieu và MaGhe)
INSERT INTO Ve (MaLichChieu, MaGhe, MaKhachHang, ThoiGianDatVe)
VALUES (1, 5, 2, NOW());

-- Nếu xảy ra lỗi, quay lại điểm lưu
ROLLBACK TO SauKhiThemVe;

-- Tiếp tục giao dịch và thêm một vé hợp lệ khác
INSERT INTO Ve (MaLichChieu, MaGhe, MaKhachHang, ThoiGianDatVe)
VALUES (1, 6, 3, NOW());
-- Kết thúc và lưu giao dịch
COMMIT;
