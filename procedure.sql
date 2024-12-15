-- Thủ tục đặt vé nếu ghế chưa đặt --
DELIMITER //

CREATE PROCEDURE DatVe (
    IN p_MaLichChieu INT,
    IN p_MaGhe INT,
    IN p_MaKhachHang INT,
    IN p_ThoiGianDatVe DATETIME,
    OUT p_ThongBao VARCHAR(255)
)
BEGIN
    DECLARE v_TrangThai VARCHAR(20);
    SELECT TrangThai INTO v_TrangThai
    FROM Ghe
    WHERE MaGhe = p_MaGhe;

    IF v_TrangThai = 'DaDat' THEN
        SET p_ThongBao = 'Ghế này đã được đặt!';
        ROLLBACK;
    ELSE
        INSERT INTO Ve (MaLichChieu, MaGhe, MaKhachHang, ThoiGianDatVe)
        VALUES (p_MaLichChieu, p_MaGhe, p_MaKhachHang, p_ThoiGianDatVe);

        UPDATE Ghe
        SET TrangThai = 'DaDat'
        WHERE MaGhe = p_MaGhe;
        SET p_ThongBao = 'Đặt vé thành công!';
    END IF;
END;

//

DELIMITER ;



-- Thủ tục tính doanh thu từ lịch chiếu, mã phim, hoặc tổng doanh thu --
DELIMITER //
CREATE PROCEDURE TinhDoanhThu(MaLichChieu INT, MaPhim INT)
BEGIN
    DECLARE TongTien DECIMAL(10, 2) DEFAULT 0;

    IF MaLichChieu IS NOT NULL THEN
        -- Tính doanh thu cho một buổi chiếu cụ thể
        SELECT IFNULL(SUM(lc.Gia), 0)
        INTO TongTien
        FROM Ve v
        JOIN LichChieu lc ON v.MaLichChieu = lc.MaLichChieu
        WHERE lc.MaLichChieu = MaLichChieu;
    ELSEIF MaPhim IS NOT NULL THEN
        -- Tính doanh thu cho tất cả các buổi chiếu của một phim
        SELECT IFNULL(SUM(lc.Gia), 0)
        INTO TongTien
        FROM Ve v
        JOIN LichChieu lc ON v.MaLichChieu = lc.MaLichChieu
        JOIN Phim p ON lc.MaPhim = p.MaPhim
        WHERE p.MaPhim = MaPhim;
    ELSE
        -- Tính tổng doanh thu từ tất cả các vé đã bán
        SELECT IFNULL(SUM(lc.Gia), 0)
        INTO TongTien
        FROM Ve v
        JOIN LichChieu lc ON v.MaLichChieu = lc.MaLichChieu;
    END IF;
    SELECT TongTien AS 'TongDoanhThu';
END //
DELIMITER ;