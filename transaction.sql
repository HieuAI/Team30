START TRANSACTION;

-- Thêm vé cho khách hàng vào bảng Ve
INSERT INTO Ve (MaLichChieu, MaGhe, MaKhachHang, ThoiGianDatVe)
VALUES (1, 5, 2, NOW());

UPDATE Ghe
SET TrangThai = 'DaDat'
WHERE MaGhe = 5 AND TrangThai = 'ConGhe';

-- Kiểm tra nếu ghế đã bị đặt (Trường hợp lỗi: ví dụ ghế đã được đặt trước đó)
IF ROW_COUNT() = 0 THEN
    -- Nếu không có ghế nào được cập nhật, có thể ghế đã bị đặt trước đó, rollback giao dịch
    ROLLBACK;
    SELECT 'Lỗi: Ghế đã bị đặt trước đó, giao dịch bị hủy!';
    LEAVE;
END IF;

COMMIT;

