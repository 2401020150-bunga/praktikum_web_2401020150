USE praktikum_web_2401020150;


INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Perkapalan'),
    ('Teknik Mesin');

INSERT INTO mahasiswa
 (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020153', 'Devina Rindumasha',
    'dedep@example.com', 20, 1),
    ('2401010002', 'Amira',
    'miwa@example.com', 19, 1),
    ('2401020001', 'Siti Muharramah',
    'sititi@example.com', 21, 2),
    ('2201020099', 'Data Sementara',
     'sementara@example.com', 18, 2);

UPDATE mahasiswa
SET email = 'devinanana@example.com'
WHERE nim = '2401020153';

DELETE FROM mahasiswa
WHERE nim = '2201020099';

SELECT m.nim, m.nama, m.email, m.usia,
        p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
        ON p.id = m.program_studi_id
ORDER BY m.nim;