-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_merek` int(11) NOT NULL,
  `id_penjual` int(11) NOT NULL,
  `id_gambar` int(11) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `satuan_barang` varchar(50) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `tgl_harga_stok_barang` date NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `lokasi_barang` varchar(20) NOT NULL,
  `kategori_barang` varchar(20) NOT NULL,
  `deskripsi_barang` text NOT NULL,
  `id_favorite` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_user`, `id_merek`, `id_penjual`, `id_gambar`, `nama_barang`, `stok_barang`, `satuan_barang`, `harga_barang`, `tgl_harga_stok_barang`, `kode_barang`, `lokasi_barang`, `kategori_barang`, `deskripsi_barang`, `id_favorite`) VALUES
(1, 1, 4, 2, 0, 'Lampu Depan V.R New / Supra', 20, 'Kotak', 65000, '2014-07-15', 'KODE', 'LOKASI', 'Automotif', 'Lampu Depan V.R New dengan kualitas prima', 3),
(2, 1, 1, 1, 0, 'Samsung 4K 81 Inch LED TV', 3, 'Unit', 85000000, '2014-11-05', 'KODE', 'LOKASI', 'Elektronik', 'TV dengan ketajaman layar mengagumkan dengan resolusi UHD (4K), rasakan sensasi menonton iMax di rumah Anda.', 3),
(10, 1, 5, 2, 0, 'Lampu Sipion S75', 35, 'Kotak', 75000, '2014-11-15', 'KODE', 'LOKASI', 'Automotif', 'Lampu depan (biasa)', 0),
(11, 1, 2, 2, 0, 'Lampu Depan V.R New Aspira', 16, 'Lusin', 60000, '2014-11-16', 'KODE', 'LOKASI', 'Automotif', 'Lampu Biasa', 0),
(12, 1, 4, 2, 0, 'Pangkon V.R New', 1, 'Kotak', 45000, '2014-11-16', 'KODE', 'LOKASI', 'Automotif', 'Kualitas nomor 1', 0),
(13, 1, 4, 2, 0, 'Batok Depan V.R New (Aspira)', 1, 'Kotak', 46000, '2014-11-16', 'KODE', 'LOKASI', 'Automotif', 'Batok utk motor tipe V.R New', 0),
(28, 1, 17, 2, 0, 'Ban Dalam Artko (Swallow)', 200, 'Kotak', 45000, '2014-11-16', 'KODE', 'LOKASI', 'Automotif', 'Ban Dalam Sorong/Artko Biasa', 1),
(29, 1, 4, 2, 0, 'Kunci Kontak RX King, Asli', 23, 'Kotak', 85000, '2014-11-16', 'KODE', 'LOKASI', 'Automotif', 'Kunci kontak kualitas bagus,\npersamaan utk GL King, Honda, dsb. :v', 0),
(30, 1, 4, 2, 0, 'Kunci Kontak RX King, Seken', 3, 'Kotak', 45000, '2014-11-16', 'KODE', 'LOKASI', 'Automotif', 'Harga Murah', 0),
(32, 1, 2, 2, 0, 'Kol TV 32''''', 25, 'Unit', 8000, '2014-11-17', 'KODE', 'LOKASI', 'Elektronik', 'Test', 0),
(33, 1, 8, 1, 0, 'Lampu LED 50 Watt - Hannocs', 12, 'Kotak', 75000, '2014-11-25', 'KODE', 'LOKASI', 'Elektronik', 'Lampu hemat energy yang tetap terang walau listrik sedang tidak stabil.', 0),
(34, 1, 9, 4, 0, 'Lampu LED 20 Watt - Hannocs', 12, 'Kotak', 60000, '2014-11-25', 'KODE', 'LOKASI', 'Elektronik', 'Lampu hemat energy yang tetap terang walau listrik sedang tidak stabil.', 0),
(39, 1, 4, 2, 0, 'Filter Oil TAP', 12, 'Lusin', 500, '2014-12-10', 'KODE', 'LOKASI', 'Automotif', 'asasa sdsd', 3),
(40, 1, 9, 2, 0, 'Yamalube Matic', 10, 'Botol', 33500, '2014-12-11', 'KODE', 'LOKASI', 'Automotif', 'Oli utk matic', 0),
(42, 1, 5, 2, 0, 'Kunci Busi Sinso Ichidai', 12, 'Kotak', 15000, '2014-12-15', 'KODE', 'LOKASI', 'Automotif', 'Kunci busi dengan kualitas prima sehingga cocok untuk pemakaian jangka panjang. Kunci Busi ini didesain untuk penggunaan pada lingkungan yang lembab, sehingga perangkat tidak akan karatan serta pegangan yang anti licin.', 0),
(43, 1, 16, 2, 0, 'Saringan Hawa Sinso Besar Oregon', 50, 'Kotak', 15000, '2014-12-25', 'KODE', 'LOKASI', 'Automotif', 'Saringan hawa untuk Chainsaw ukuran regular.', 0),
(44, 1, 4, 2, 0, 'Anti Getar Supra Fit', 250, 'Kotak', 50000, '2014-12-25', 'KODE', 'LOKASI', 'Automotif', 'Anti getar utk kreta supra merek Aspira, jaminan kualitas standar Jepang.', 0),
(45, 1, 1, 1, 0, 'Asa Asi Asu', 200, 'Lusin', 123, '2014-12-28', 'KODE', 'LOKASI', 'Automotif', 'asa', 0),
(46, 1, 1, 1, 0, 'Asa 2', 200, 'Lusin', 123, '2014-12-28', 'KODE', 'LOKASI', 'Automotif', 'asa2', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_favorite`
--

CREATE TABLE IF NOT EXISTS `barang_favorite` (
  `id_barang_favorite` int(11) NOT NULL AUTO_INCREMENT,
  `id_favorite` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_favorite` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_barang_favorite`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `barang_favorite`
--

INSERT INTO `barang_favorite` (`id_barang_favorite`, `id_favorite`, `id_barang`, `tgl_favorite`) VALUES
(1, 3, 2, '2014-12-05 09:57:38'),
(3, 3, 1, '2014-12-05 10:01:58');

--
-- Trigger `barang_favorite`
--
DROP TRIGGER IF EXISTS `after_added_barang_favorite`;
DELIMITER //
CREATE TRIGGER `after_added_barang_favorite` AFTER INSERT ON `barang_favorite`
 FOR EACH ROW BEGIN
update barang set id_favorite = NEW.id_favorite where id_barang = NEW.id_barang;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `belanja`
--

CREATE TABLE IF NOT EXISTS `belanja` (
  `id_belanja` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `tgl_belanja` date NOT NULL,
  `status_belanja` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_belanja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorite`
--

CREATE TABLE IF NOT EXISTS `favorite` (
  `id_favorite` int(11) NOT NULL AUTO_INCREMENT,
  `warna_favorite` varchar(10) NOT NULL,
  `nama_favorite` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  PRIMARY KEY (`id_favorite`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `favorite`
--

INSERT INTO `favorite` (`id_favorite`, `warna_favorite`, `nama_favorite`, `deskripsi`) VALUES
(1, '#585858', 'Uncategorized', 'Semua list dalam favorite'),
(2, '#00BA29', 'Jarang Laku', 'Barang-barang yang jarang ada pembeli'),
(3, '#29A7CC', 'Barang Mewah', 'Barang dengan harga yang cukup mahal, jarang laku.'),
(4, '#A800AB', 'Langka', 'Barang-barang yang langka di pasaran.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar_barang`
--

CREATE TABLE IF NOT EXISTS `gambar_barang` (
  `id_gambar` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi_gambar` varchar(200) NOT NULL,
  `deskripsi_gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_gambar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `gambar_barang`
--

INSERT INTO `gambar_barang` (`id_gambar`, `lokasi_gambar`, `deskripsi_gambar`) VALUES
(2, 'http://dev.mysql.com/common/logos/logo-mysql-110x57.png', 'Gambar Lampu Depan V.R New');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_harga`
--

CREATE TABLE IF NOT EXISTS `log_harga` (
  `id_log_harga` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tgl_harga` date NOT NULL,
  `potongan_harga` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_log_harga`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `log_harga`
--

INSERT INTO `log_harga` (`id_log_harga`, `id_barang`, `harga`, `tgl_harga`, `potongan_harga`) VALUES
(1, 2, 80000000, '2014-11-05', 0),
(2, 1, 60000, '2014-07-15', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_stok`
--

CREATE TABLE IF NOT EXISTS `log_stok` (
  `id_log_stok` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `tgl_muat_stok` date NOT NULL,
  PRIMARY KEY (`id_log_stok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_transaksi`
--

CREATE TABLE IF NOT EXISTS `log_transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_transaksi` int(11) NOT NULL,
  `keterangan` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `merek`
--

CREATE TABLE IF NOT EXISTS `merek` (
  `id_merek` int(11) NOT NULL AUTO_INCREMENT,
  `nama_merek` varchar(100) NOT NULL,
  `logo_merek` varchar(200) NOT NULL,
  `deskripsi_merek` varchar(200) NOT NULL,
  PRIMARY KEY (`id_merek`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `merek`
--

INSERT INTO `merek` (`id_merek`, `nama_merek`, `logo_merek`, `deskripsi_merek`) VALUES
(1, 'Samsung', '', 'Samsung Elektronik'),
(2, 'LG', '', 'LG Electronic'),
(3, 'Polytron', '', 'Merek Taiwan'),
(4, 'Aspira', '', 'Merek Jepang, kualitas prima'),
(5, 'Ichidai', '', ''),
(6, 'Apple', '', ''),
(7, 'IBM', '', ''),
(8, 'Hannocs', '', ''),
(9, 'Yamalube', '', ''),
(14, 'Itachi', '', ''),
(16, 'Oregon', '', ''),
(17, 'Swallow', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjual`
--

CREATE TABLE IF NOT EXISTS `penjual` (
  `id_penjual` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penjual` varchar(150) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `alamat_toko` varchar(200) NOT NULL,
  `geolocation` varchar(100) NOT NULL,
  `kontak_toko` varchar(100) NOT NULL DEFAULT '0',
  `email_toko` varchar(100) NOT NULL,
  PRIMARY KEY (`id_penjual`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `penjual`
--

INSERT INTO `penjual` (`id_penjual`, `nama_penjual`, `nama_toko`, `alamat_toko`, `geolocation`, `kontak_toko`, `email_toko`) VALUES
(1, 'Umak Riska', 'Hikmah Jaya', 'Jalan Merdeka, Padangsidimpuan', '', '0', 'hikmah_jaya@gmail.com'),
(2, 'Bintang Motor Staff', 'Bintang Motor', 'Padangsidimpuan', '', '0', ''),
(3, '', 'Hannocs Medan', 'N/A (Pakai Mobil)', '', '0888', ''),
(4, '', 'Zaman Baru', 'Padangsidimpuan', '', '0', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pin` int(6) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `email`, `password`, `pin`) VALUES
(1, 'anwar', 'anwar_pasaribu@live.com', 'pangarongan', 7799);