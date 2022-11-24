CREATE TABLE `data_login` (
  `id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(200) NOT NULL
);


INSERT INTO `data_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

CREATE TABLE `data_login_user` (
  `int_npm` int(12) NOT NULL,
  `password` varchar(200) NOT NULL
);


INSERT INTO `data_login_user` (`int_npm`, `password`) VALUES
(17111156, '12dea96fec20593566ab75692c9949596833adc9'),
(17111111, 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(19210687, 'd033e22ae348aeb5660fc2140aec35850c4da997');


CREATE TABLE `data_mahasiswa` (
  `id` int(11) NOT NULL,
  `int_npm` int(12) NOT NULL,
  `str_nama` varchar(100) NOT NULL,
  `str_prodi` varchar(30) NOT NULL,
  `str_kelas` varchar(20) NOT NULL,
  `int_semester` int(2) NOT NULL,
  `gambar` text NOT NULL
);


INSERT INTO `data_mahasiswa` (`id`, `int_npm`, `str_nama`, `str_prodi`, `str_kelas`, `int_semester`, `gambar`) VALUES
(25, 17111114, 'Naufal', 'Desain Komunikasi Visual', 'DKV RM 17 A', 5, 'Logo-avengers-wallpaper-HD-pictures-download5.jpg'),
(26, 17111115, 'Dendi ', 'Teknik Industri', 'TI WK 15 B', 3, 'Logo-avengers-wallpaper-HD-pictures-download6.jpg'),
(27, 17111116, 'Nazira', 'Teknik Informatika', 'TIF RM 17 B', 5, 'Logo-avengers-wallpaper-HD-pictures-download7.jpg'),
(31, 19210687, 'Lion Younes AYP', 'Desain Komunikasi Visual', '19.3A.03', 3, 'BgFyqM7CAAAtfI6.jpg');

ALTER TABLE `data_login`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `data_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
  
ALTER TABLE `data_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;