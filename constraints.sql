-- Tạo primary key
ALTER TABLE Rap
    MODIFY COLUMN MaRap INT AUTO_INCREMENT,
    ADD PRIMARY KEY (MaRap);

-- Tạo foreign key
ALTER TABLE Phong
    ADD CONSTRAINT FOREIGN KEY (MaRap) REFERENCES Rap(MaRap) ON DELETE CASCADE;
ALTER TABLE NhanVien
	ADD CONSTRAINT FOREIGN KEY (MaRap) REFERENCES Rap(MaRap) ON DELETE CASCADE;
ALTER TABLE CaLamViec
	ADD CONSTRAINT FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien) ON DELETE CASCADE;
    
-- Ràng buộc Unique để đảm bảo ghế không trùng lặp trong cùng một suất chiếu
ALTER TABLE Ve
ADD CONSTRAINT ve UNIQUE (MaLichChieu, MaGhe);

-- Ràng buộc tạo giao dịch
ALTER TABLE Ve ENGINE = InnoDB;

