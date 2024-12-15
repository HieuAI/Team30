-- Ràng buộc Unique để đảm bảo ghế không trùng lặp trong cùng một suất chiếu
ALTER TABLE Ve
ADD CONSTRAINT ve UNIQUE (MaLichChieu, MaGhe);