ALTER TABLE m_mapel
    ADD COLUMN kategori_penilaian ENUM(
        'without_written',
        'with_performance',
        'without_performance'
    ) NOT NULL DEFAULT 'without_performance';

UPDATE m_mapel
SET kategori_penilaian = CASE
    WHEN UPPER(kd_singkat) IN ('SBDP', 'PJOK', 'BTQ') THEN 'without_written'
    WHEN UPPER(kd_singkat) IN ('ENG', 'SC', 'GC') THEN 'with_performance'
    ELSE 'without_performance'
END;
