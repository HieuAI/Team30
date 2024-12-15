
-- Trigger để tự động cập nhật trạng thái ghế khi vé được đặt --
DELIMITER //
CREATE TRIGGER DatVe
AFTER INSERT ON Ve
FOR EACH ROW
BEGIN
    UPDATE Ghe
    SET TrangThai = 'DaDat'
    WHERE MaGhe = NEW.MaGhe;
END;
// DELIMITER ;


-- Trigger kiểm tra thời gian kết thúc lịch chiếu trước khi tạo vé --
DELIMITER //
CREATE TRIGGER kiem_tra_thoi_gian_lich_chieu
BEFORE INSERT ON Ve
FOR EACH ROW
BEGIN
    -- Kiểm tra thời gian kết thúc lịch chiếu
    IF (SELECT ThoiGianKetThuc FROM LichChieu WHERE MaLichChieu = NEW.MaLichChieu) < NEW.ThoiGianDatVe THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Lịch chiếu đã kết thúc, không thể tạo vé.';
    END IF;
END //

DELIMITER ;
