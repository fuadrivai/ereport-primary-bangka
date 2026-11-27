ALTER TABLE `t_nilai`
MODIFY COLUMN `jenis` ENUM('h', 't', 'a', 'p', 'b', 'c') NOT NULL;

CREATE TABLE IF NOT EXISTS `t_nilai_buzz_detail` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `id_guru_mapel` INT NOT NULL,
    `id_siswa` INT NOT NULL,
    `tasm` VARCHAR(5) NOT NULL,
    `item_id` VARCHAR(191) NOT NULL,
    `item_title` VARCHAR(255) NOT NULL,
    `nilai` DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_t_nilai_buzz_detail_item` (`id_guru_mapel`, `id_siswa`, `tasm`, `item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
