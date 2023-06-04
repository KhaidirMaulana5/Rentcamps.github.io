-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jun 2023 pada 07.53
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentcamps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminhomesection1`
--

CREATE TABLE `adminhomesection1` (
  `idsection1` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `adminhomesection1`
--

INSERT INTO `adminhomesection1` (`idsection1`, `deskripsi`, `foto`) VALUES
(0, 'RentCamp menyediakan penyewaan tenda yang dibutuhkan untuk kamu, menyediakan obat - obatan yang dibutuhkan untuk perkemahan, dan menyediakan video tutorial pemasangan tenda.', 'home-decor.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminhomesection2`
--

CREATE TABLE `adminhomesection2` (
  `idsection2` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `adminhomesection2`
--

INSERT INTO `adminhomesection2` (`idsection2`, `deskripsi`, `foto`) VALUES
(0, ' Tenda yang berkualitas dan nyaman saat digunakan', 0x74656e64612d737567676573742e706e67),
(1, 'Perlengkapan untuk tidur yang aman dan nyaman dengan bahan yang berkuaitas', 0x736c656570696e676261672d737567676573742e706e67),
(2, 'Peralatan masak yang lengkap dan aman saat digunakan', 0x6b6f6d706f722d737567676573742e706e67),
(3, 'Obat - obatan yang diperlukan untuk bercamping', 0x6f6261742d737567676573742e706e67),
(4, 'Terdapat membership yang menguntungkan anda, mulai dari diskon dan prioritas dalam pengiriman', 0x47726f75702031383935202831292e706e67),
(5, 'Video tutorial untuk mempermudah saat pemasangan alat alat camping', 0x706173616e6774656e64612d737567676573742e706e67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `alatcamping`
--

CREATE TABLE `alatcamping` (
  `idalat` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  `detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alatcamping`
--

INSERT INTO `alatcamping` (`idalat`, `nama`, `harga`, `foto`, `detail`) VALUES
(1, 'Tenda', 100000, 0x52656374616e676c6520313530202831292e706e67, 'Tenda Camping yang memiliki kapasitas 2-4 Orang dengan alas tenda dan jaring kelambu anti nyamuk. Dilengkapi dengan tas sehingga lebih mudah dibawa kemanapun. Tenda Camping yang cocok digunakan untuk memancing, berkemah dilengkapi dengan double layer waterproof sehingga anda terlindungi dari hujan bahan tenda polyster memiliki frame fiber yang lentur dan kuat.'),
(2, 'Sleeping Bag', 35000, 0x31363733363130383131, 'Sleeping bag dengan bahan dacron, dengan karakteristik bahan dacron waktu dipakai semakin lama akan semakin hangat jika dibandingkan bahan polar sehingga suhu tubuh pemakai akan terasa hangat & stabil meski di suhu yang dingin'),
(3, 'Kompor', 35000, 0x31363733363130383233, 'Kompor Gas Portable yang praktis dibawa kemana-mana terutama untuk anak kost, rekreasi, camping, liburan bersama keluarga.  Sangat aman digunakan karena dilengkapi sistem yang bisa memutuskan aliran gas secara otomatis apabila tekanan di dalam tabung terlalu besar. Tatakan panel berbahan alumunium sehingga anti panas, tahan lama dan anti slip. Dengan Kompor Gas Portable Cosmos, memudahkan anda memasak makanan kapan dan dimana saja.'),
(4, 'Kepompong Tidur', 150000, 0x31363733363130383531, 'Sleeping bag dengan bahan dacron, dengan karakteristik bahan dacron waktu dipakai semakin lama akan semakin hangat jika dibandingkan bahan polar sehingga suhu tubuh pemakai akan terasa hangat & stabil meski di suhu yang dingin'),
(5, 'Selimut LIpat', 35000, 0x31363733363130383731, 'Sleeping bag dengan bahan dacron, dengan karakteristik bahan dacron waktu dipakai semakin lama akan semakin hangat jika dibandingkan bahan polar sehingga suhu tubuh pemakai akan terasa hangat & stabil meski di suhu yang dingin'),
(6, 'Tas Gunung', 35000, 0x31363733363130383839, 'Tas ini memiliki kualitas yang melebihi ekspektasi dari harganya itu sendiri, Anda akan mendapatkan tas ransel terjangkau yang dibekali fitur tahan air dan material yang kuat. Fisiknya yang begitu kekar dan kuat, sangat erat dengan desainnya yang bergaya militer.'),
(7, 'Tenda Besar', 100000, 0x31363733363130393132, 'Tenda Camping yang memiliki kapasitas 2-4 Orang dengan alas tenda dan jaring kelambu anti nyamuk. Dilengkapi dengan tas sehingga lebih mudah dibawa kemanapun. Tenda Camping yang cocok digunakan untuk memancing, berkemah dilengkapi dengan double layer waterproof sehingga anda terlindungi dari hujan bahan tenda polyster memiliki frame fiber yang lentur dan kuat.'),
(8, 'Tikar Gulung', 35000, 0x31363733363130393633, 'Suka piknik? Suka main ke pantai tapi malas bawa tikar yang besar Atau capek keluar uang untuk terus-terus sewa tikar di tempat wisata? Tidak perlu khawatir lagi. Sekarang ada tikar lipat yang praktis, hemat tempat, anti air dan nyaman dibawa dengan motif trendy.'),
(9, 'Tenda Lipat', 100000, 0x31363733363130393937, 'Tenda Camping yang memiliki kapasitas 2-4 Orang dengan alas tenda dan jaring kelambu anti nyamuk. Dilengkapi dengan tas sehingga lebih mudah dibawa kemanapun. Tenda Camping yang cocok digunakan untuk memancing, berkemah dilengkapi dengan double layer waterproof sehingga anda terlindungi dari hujan bahan tenda polyster memiliki frame fiber yang lentur dan kuat.'),
(10, 'Selimut LIpat', 35000, 0x31363733363131303135, 'Sleeping bag dengan bahan dacron, dengan karakteristik bahan dacron waktu dipakai semakin lama akan semakin hangat jika dibandingkan bahan polar sehingga suhu tubuh pemakai akan terasa hangat & stabil meski di suhu yang dingin'),
(11, 'Kompor Portable', 100000, 0x31363733363131303334, 'Kompor Gas Portable yang praktis dibawa kemana-mana terutama untuk anak kost, rekreasi, camping, liburan bersama keluarga.  Sangat aman digunakan karena dilengkapi sistem yang bisa memutuskan aliran gas secara otomatis apabila tekanan di dalam tabung terlalu besar. Tatakan panel berbahan alumunium sehingga anti panas, tahan lama dan anti slip. Dengan Kompor Gas Portable Cosmos, memudahkan anda memasak makanan kapan dan dimana saja.'),
(12, 'Kepompong Tidur', 35000, 0x31363733363131303631, 'Sleeping bag dengan bahan dacron, dengan karakteristik bahan dacron waktu dipakai semakin lama akan semakin hangat jika dibandingkan bahan polar sehingga suhu tubuh pemakai akan terasa hangat & stabil meski di suhu yang dingin'),
(13, 'Tenda Lipat', 35000, 0x31363733363131303737, 'Tenda Camping yang memiliki kapasitas 2-4 Orang dengan alas tenda dan jaring kelambu anti nyamuk. Dilengkapi dengan tas sehingga lebih mudah dibawa kemanapun. Tenda Camping yang cocok digunakan untuk memancing, berkemah dilengkapi dengan double layer waterproof sehingga anda terlindungi dari hujan bahan tenda polyster memiliki frame fiber yang lentur dan kuat.'),
(14, 'Tas Hiking', 100000, 0x31363733363131303934, 'Tas ini memiliki kualitas yang melebihi ekspektasi dari harganya itu sendiri, Anda akan mendapatkan tas ransel terjangkau yang dibekali fitur tahan air dan material yang kuat. Fisiknya yang begitu kekar dan kuat, sangat erat dengan desainnya yang bergaya militer.'),
(15, 'Tenda besar lipat', 150000, 0x31363733363131313132, 'Tenda Camping yang memiliki kapasitas 2-4 Orang dengan alas tenda dan jaring kelambu anti nyamuk. Dilengkapi dengan tas sehingga lebih mudah dibawa kemanapun. Tenda Camping yang cocok digunakan untuk memancing, berkemah dilengkapi dengan double layer waterproof sehingga anda terlindungi dari hujan bahan tenda polyster memiliki frame fiber yang lentur dan kuat.'),
(16, 'Tikar Lipat', 100000, 0x31363733363131313331, 'Suka piknik? Suka main ke pantai tapi malas bawa tikar yang besar Atau capek keluar uang untuk terus-terus sewa tikar di tempat wisata? Tidak perlu khawatir lagi. Sekarang ada tikar lipat yang praktis, hemat tempat, anti air dan nyaman dibawa dengan motif trendy.'),
(17, 'Tenda Gunung', 35000, 0x31363733363131313538, 'Tenda Camping yang memiliki kapasitas 2-4 Orang dengan alas tenda dan jaring kelambu anti nyamuk. Dilengkapi dengan tas sehingga lebih mudah dibawa kemanapun. Tenda Camping yang cocok digunakan untuk memancing, berkemah dilengkapi dengan double layer waterproof sehingga anda terlindungi dari hujan bahan tenda polyster memiliki frame fiber yang lentur dan kuat.'),
(18, 'Sleeping Bag', 35000, 0x31363733363131313734, 'Sleeping bag dengan bahan dacron, dengan karakteristik bahan dacron waktu dipakai semakin lama akan semakin hangat jika dibandingkan bahan polar sehingga suhu tubuh pemakai akan terasa hangat & stabil meski di suhu yang dingin'),
(19, 'Kompor', 35000, 0x31363733363131313936, 'Kompor Gas Portable yang praktis dibawa kemana-mana terutama untuk anak kost, rekreasi, camping, liburan bersama keluarga.  Sangat aman digunakan karena dilengkapi sistem yang bisa memutuskan aliran gas secara otomatis apabila tekanan di dalam tabung terlalu besar. Tatakan panel berbahan alumunium sehingga anti panas, tahan lama dan anti slip. Dengan Kompor Gas Portable Cosmos, memudahkan anda memasak makanan kapan dan dimana saja.'),
(20, 'Kepompong Tidur', 35000, 0x31363733363131323037, 'Sleeping bag dengan bahan dacron, dengan karakteristik bahan dacron waktu dipakai semakin lama akan semakin hangat jika dibandingkan bahan polar sehingga suhu tubuh pemakai akan terasa hangat & stabil meski di suhu yang dingin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel_rentcamp`
--

CREATE TABLE `artikel_rentcamp` (
  `idartikel` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `foto` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel_rentcamp`
--

INSERT INTO `artikel_rentcamp` (`idartikel`, `judul`, `isi`, `tanggal`, `foto`) VALUES
(2, 'Curug Tujuh Cibolang, Wisata di Ciamis dengan 7 Air Terjun', 'Curug Tujuh Cibolang menjadi salah satu destinasi wisata alam di Pangandaran yang rekomended untuk anda kunjungi. Pangandaran memang menjadi salah satu surga wisata tersembunyi di Jawa Barat. Menikmati pesona wisata alam memang akan mendamaikan jiwa dan pikiran yang penat akan aktivitas sehari-hari.\r\n\r\nObyek wisata alam Curug Tujuh Cibolang sendiri memiliki ketinggian kurang lebih 30 meter yang menyajikan pesona keindahan yang mempesona. Air Curug Tujuh Cibolang Pangandaran yang jernih dan dingin akan merefresh badan anda ketika anda menikmatinya ketika berkunjung.\r\n\r\nPanorama alam yang mempesona dari Air Terjun Curug Tujuh Cibolang akan memanjakan perjalanan wisata anda dan keluarga di Jawa Barat. Rasakan sensasi alamnya bersama orang-orang tercinta. Berikut beberapa informasi wisata Curug Tujuh Cibolang Jawa Barat yang bisa anda jadikan referensi berlibur.', '2022-12-15', 0x67616d62617220617274696b656c20312e706e67),
(3, '42 Tips Camping Seru yang Aman Bagi Pemula', 'Apakah Anda sedang merencanakan pergi camping dalam waktu dekat? Jika demikian, maka penting untuk Anda memperhatikan sejumlah tips camping seru di artikel ini.\r\n\r\nTak dapat dipungkiri, camping atau berkemah merupakan salah satu cara terbaik untuk menghilangkan stres ataupun kejenuhan dari rutinitas sehari-hari.\r\n\r\nSebab, kegiatan di luar rumah semacam ini akan membuat Anda menemukan suasana baru yang lebih dekat dengan alam lepas.\r\n\r\nNamun, agar tetap aman dan menyenangkan, terdapat beberapa hal yang perlu Anda persiapkan. Apa saja itu? Yuk simak tips camping pemula selengkapnya berikut!\r\n\r\nSelain bisa menghilangkan penat, pergi camping juga bisa menjadi kesempatan untuk kembali mempererat ikatan dengan keluarga atau sahabat terdekat.\r\n\r\nNah, saat merencanakan liburan dengan keluarga atau sahabat, jangan lupakan tips camping berikut agar tetap aman.', '2022-10-14', 0x67616d62617220617274696b656c20342e706e67),
(5, 'Tempat-Tempat Camping Di Rembang yang Sangat Recommended', 'Camping merupakan salah satu aktivitas outdoor yang menarik untuk dilakukan. Banyak hal yang bisa kita latih dengan kegiatan camping, seperti kerja sama, kemandirian dan dekat dengan alam. Kita bisa belajar hidup sederhana seperti dahulu kala ketika camping, dan positifnya hal ini mengakrabkan kita dengan orang-orang sekitar.\r\n\r\nBanyak sekali spot di Indonesia yang bisa dijadikan spot untuk camping, misalnya tempat wisata di Cibubur dan juga bukit perkemahan Jambore. Namun, tanpa kita sadari ada banyak spot camping yang bisa kamu coba di daerah-daerah lain, terutama di Jawa Tengah. Salah satu spot menarik yang bisa kamu kunjungi adalah di daerah Rembang.\r\n\r\nRembang merupakan satu daerah di Jawa Tengah yang terletak di kabupaten Semarang. Banyak kawasan pegunungan dan puncak di daerah ini, layaknya wisata hutan di Bandung dan puncak bagi warga Jakarta. Dengan begitu, ada banyak spot untuk camping yang berlatar belakang pegunungan di Rembang. Berikut adalah 5 spot menarik untuk camping di Rembang, Jawa Tengah.', '2023-01-10', 0x67616d62617220617274696b656c20322e706e67),
(6, 'Curug Tujuh Cibolang, Wisata di Ciamis dengan 7 Air Terjun', 'Curug Tujuh Cibolang menjadi salah satu destinasi wisata alam di Pangandaran yang rekomended untuk anda kunjungi. Pangandaran memang menjadi salah satu surga wisata tersembunyi di Jawa Barat. Menikmati pesona wisata alam memang akan mendamaikan jiwa dan pikiran yang penat akan aktivitas sehari-hari.\r\n\r\nObyek wisata alam Curug Tujuh Cibolang sendiri memiliki ketinggian kurang lebih 30 meter yang menyajikan pesona keindahan yang mempesona. Air Curug Tujuh Cibolang Pangandaran yang jernih dan dingin akan merefresh badan anda ketika anda menikmatinya ketika berkunjung.\r\n\r\nPanorama alam yang mempesona dari Air Terjun Curug Tujuh Cibolang akan memanjakan perjalanan wisata anda dan keluarga di Jawa Barat. Rasakan sensasi alamnya bersama orang-orang tercinta. Berikut beberapa informasi wisata Curug Tujuh Cibolang Jawa Barat yang bisa anda jadikan referensi berlibur.', '2022-12-16', 0x67616d62617220617274696b656c20312e706e67),
(7, '42 Tips Camping Seru yang Aman Bagi Pemula', 'Apakah Anda sedang merencanakan pergi camping dalam waktu dekat? Jika demikian, maka penting untuk Anda memperhatikan sejumlah tips camping seru di artikel ini.\r\n\r\nTak dapat dipungkiri, camping atau berkemah merupakan salah satu cara terbaik untuk menghilangkan stres ataupun kejenuhan dari rutinitas sehari-hari.\r\n\r\nSebab, kegiatan di luar rumah semacam ini akan membuat Anda menemukan suasana baru yang lebih dekat dengan alam lepas.\r\n\r\nNamun, agar tetap aman dan menyenangkan, terdapat beberapa hal yang perlu Anda persiapkan. Apa saja itu? Yuk simak tips camping pemula selengkapnya berikut!\r\n\r\nSelain bisa menghilangkan penat, pergi camping juga bisa menjadi kesempatan untuk kembali mempererat ikatan dengan keluarga atau sahabat terdekat.\r\n\r\nNah, saat merencanakan liburan dengan keluarga atau sahabat, jangan lupakan tips camping berikut agar tetap aman.', '2022-10-14', 0x67616d62617220617274696b656c20342e706e67),
(8, 'Tempat-Tempat Camping Di Rembang yang Sangat Recommended', 'Camping merupakan salah satu aktivitas outdoor yang menarik untuk dilakukan. Banyak hal yang bisa kita latih dengan kegiatan camping, seperti kerja sama, kemandirian dan dekat dengan alam. Kita bisa belajar hidup sederhana seperti dahulu kala ketika camping, dan positifnya hal ini mengakrabkan kita dengan orang-orang sekitar.\r\n\r\nBanyak sekali spot di Indonesia yang bisa dijadikan spot untuk camping, misalnya tempat wisata di Cibubur dan juga bukit perkemahan Jambore. Namun, tanpa kita sadari ada banyak spot camping yang bisa kamu coba di daerah-daerah lain, terutama di Jawa Tengah. Salah satu spot menarik yang bisa kamu kunjungi adalah di daerah Rembang.\r\n\r\nRembang merupakan satu daerah di Jawa Tengah yang terletak di kabupaten Semarang. Banyak kawasan pegunungan dan puncak di daerah ini, layaknya wisata hutan di Bandung dan puncak bagi warga Jakarta. Dengan begitu, ada banyak spot untuk camping yang berlatar belakang pegunungan di Rembang. Berikut adalah 5 spot menarik untuk camping di Rembang, Jawa Tengah.', '2022-12-19', 0x67616d62617220617274696b656c20332e706e67),
(9, 'Curug Tujuh Cibolang, Wisata di Ciamis dengan 7 Air Terjun', 'Curug Tujuh Cibolang menjadi salah satu destinasi wisata alam di Pangandaran yang rekomended untuk anda kunjungi. Pangandaran memang menjadi salah satu surga wisata tersembunyi di Jawa Barat. Menikmati pesona wisata alam memang akan mendamaikan jiwa dan pikiran yang penat akan aktivitas sehari-hari.\r\n\r\nObyek wisata alam Curug Tujuh Cibolang sendiri memiliki ketinggian kurang lebih 30 meter yang menyajikan pesona keindahan yang mempesona. Air Curug Tujuh Cibolang Pangandaran yang jernih dan dingin akan merefresh badan anda ketika anda menikmatinya ketika berkunjung.\r\n\r\nPanorama alam yang mempesona dari Air Terjun Curug Tujuh Cibolang akan memanjakan perjalanan wisata anda dan keluarga di Jawa Barat. Rasakan sensasi alamnya bersama orang-orang tercinta. Berikut beberapa informasi wisata Curug Tujuh Cibolang Jawa Barat yang bisa anda jadikan referensi berlibur.', '2022-10-14', 0x67616d62617220617274696b656c20312e706e67),
(10, 'Tempat-Tempat Camping Di Rembang yang Sangat Recommended', 'Camping merupakan salah satu aktivitas outdoor yang menarik untuk dilakukan. Banyak hal yang bisa kita latih dengan kegiatan camping, seperti kerja sama, kemandirian dan dekat dengan alam. Kita bisa belajar hidup sederhana seperti dahulu kala ketika camping, dan positifnya hal ini mengakrabkan kita dengan orang-orang sekitar.\r\n\r\nBanyak sekali spot di Indonesia yang bisa dijadikan spot untuk camping, misalnya tempat wisata di Cibubur dan juga bukit perkemahan Jambore. Namun, tanpa kita sadari ada banyak spot camping yang bisa kamu coba di daerah-daerah lain, terutama di Jawa Tengah. Salah satu spot menarik yang bisa kamu kunjungi adalah di daerah Rembang.\r\n\r\nRembang merupakan satu daerah di Jawa Tengah yang terletak di kabupaten Semarang. Banyak kawasan pegunungan dan puncak di daerah ini, layaknya wisata hutan di Bandung dan puncak bagi warga Jakarta. Dengan begitu, ada banyak spot untuk camping yang berlatar belakang pegunungan di Rembang. Berikut adalah 5 spot menarik untuk camping di Rembang, Jawa Tengah.', '2023-01-13', 0x67616d62617220617274696b656c20332e706e67),
(11, '42 Tips Camping Seru yang Aman Bagi Pemula', 'Apakah Anda sedang merencanakan pergi camping dalam waktu dekat? Jika demikian, maka penting untuk Anda memperhatikan sejumlah tips camping seru di artikel ini.\r\n\r\nTak dapat dipungkiri, camping atau berkemah merupakan salah satu cara terbaik untuk menghilangkan stres ataupun kejenuhan dari rutinitas sehari-hari.\r\n\r\nSebab, kegiatan di luar rumah semacam ini akan membuat Anda menemukan suasana baru yang lebih dekat dengan alam lepas.\r\n\r\nNamun, agar tetap aman dan menyenangkan, terdapat beberapa hal yang perlu Anda persiapkan. Apa saja itu? Yuk simak tips camping pemula selengkapnya berikut!\r\n\r\nSelain bisa menghilangkan penat, pergi camping juga bisa menjadi kesempatan untuk kembali mempererat ikatan dengan keluarga atau sahabat terdekat.\r\n\r\nNah, saat merencanakan liburan dengan keluarga atau sahabat, jangan lupakan tips camping berikut agar tetap aman.', '2023-01-11', 0x67616d62617220617274696b656c20342e706e67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buktibayar`
--

CREATE TABLE `buktibayar` (
  `nama` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `foto` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `membership`
--

CREATE TABLE `membership` (
  `nama` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `membership`
--

INSERT INTO `membership` (`nama`, `keterangan`, `harga`) VALUES
('BRONZE CAMPERS', '- Gratis Ongkir minimal 100rb\r\n- Diskon sampai 20%\r\n- Gratis pinjam 2 alat pendukung', 14999),
('SILVER CAMPERS', '- Gratis Ongkir minimal 50rb\r\n- Diskon sampai 30%\r\n- Gratis pinjam 2 alat pendukung', 29999),
('GOLD CAMPERS', '- Gratis Ongkir 0 rupiah\r\n- Diskon sampai 50%\r\n- Gratis pinjam 3 alat pendukung', 49999);

-- --------------------------------------------------------

--
-- Struktur dari tabel `obatan`
--

CREATE TABLE `obatan` (
  `idobatan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  `detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `obatan`
--

INSERT INTO `obatan` (`idobatan`, `nama`, `harga`, `foto`, `detail`) VALUES
(1, 'P3K', 35000, 0x52656374616e676c6520313530202836292e706e67, 'Sedia selalu P3K untuk antisipasi kecelakaan Sedia selalu pahlawan rawat luka, kotak p3k set + isi di mobil/ sepeda motor/ kendaraan pribadi juga dalam lingkungan kerja dan tempat tinggal Anda! Antisipasi kecelakaan saat perjalanan/ kegiatan Anda.'),
(2, 'Entrostop', 8000, 0x52656374616e676c6520313531202834292e706e67, 'Cara Kerja Obat : Mengencerkan sekret saluran pernapasan dengan jalan mengurangi atau menghilangkan serat-serat mukoprotein dan mukopolisakarida yang terdapat pada sputum/dahak sehingga lebih mudah dikeluarkan.'),
(3, 'Antimo', 8000, 0x52656374616e676c6520313531202835292e706e67, 'ANTIMO TABLET merupakan obat dengan kandungan Dimenhydrinate yang digunakan untuk mengatasi mual, muntah, dan pusing akibat mabuk perjalanan. Dimenhydrinate pada produk ini bekerja dengan cara menghambat produksi dan kerja histamin yang diproduksi tubuh, sehingga mencegah stimulasi saraf di otak dan telinga bagian dalam yang bisa menyebabkan mual, muntah, dan pusing. '),
(4, 'Detol', 35000, 0x52656374616e676c6520313530202837292e706e67, 'Dettol Hygiene Liquid digunakan untuk melindungi keluarga dari kuman penyebab penyakit. Cairan Dettol ini merupakan perlindungan terpercaya dengan wangi Lemon yang menyegarkan.'),
(5, 'Siladex', 8000, 0x52656374616e676c6520313439202836292e706e67, 'SILADEX MUCOLYTIC EKSPEKTORAN SIRUP 60 ML mengandung zat aktif Bromhexine dan Guaiphenesin. Obat ini digunakan sebagai agen mukolitik dan ekspektoran untuk meredakan batuk berdahak dan mempermudah pengeluaran dahak.'),
(6, 'Decolgen', 15000, 0x52656374616e676c6520313438202835292e706e67, 'DECOLGEN merupakan obat flu dengan kandungan Paracetamol, Phenylpropanolamine HCl, dan Chlorpheniramine maleate. Paracetamol digunakan sebagai pereda demam dan sakit kepala. Phenylpropanolamine digunakan untuk mengobati gejala hidung tersumbat. Chlorpheniramine maleate bekerja sebagai antihistamin atau anti alergi sehingga obat ini digunakan untuk meredakan gejala flu seperti sakit kepala, demam, bersin-bersin dan hidung tersumbat.'),
(7, 'Salonpas', 8000, 0x52656374616e676c6520313438202834292e706e67, 'Catatan Penggunaan :  * Hanya untuk pemakaian luar. Jangan digunakan disekitar mata, membran mukosa atau kulit yang terkena eksim, ruam atau luka. * Hentikan pemakaian dan konsultasikan ke dokter jika terjadi ruam, kemerahan, gatal atau iritasi. * Untuk kulit sensitif, konsultasikan ke dokter atau apoteker anda sebelum pemakaian.'),
(8, 'p3k', 35000, 0x52656374616e676c6520313530202836292e706e67, 'Sedia selalu P3K untuk antisipasi kecelakaan Sedia selalu pahlawan rawat luka, kotak p3k set + isi di mobil/ sepeda motor/ kendaraan pribadi juga dalam lingkungan kerja dan tempat tinggal Anda! Antisipasi kecelakaan saat perjalanan/ kegiatan Anda.'),
(9, 'Entrostop', 8000, 0x52656374616e676c6520313531202834292e706e67, 'Cara Kerja Obat : Mengencerkan sekret saluran pernapasan dengan jalan mengurangi atau menghilangkan serat-serat mukoprotein dan mukopolisakarida yang terdapat pada sputum/dahak sehingga lebih mudah dikeluarkan.'),
(10, 'Antimo', 8000, 0x52656374616e676c6520313531202835292e706e67, 'ANTIMO TABLET merupakan obat dengan kandungan Dimenhydrinate yang digunakan untuk mengatasi mual, muntah, dan pusing akibat mabuk perjalanan. Dimenhydrinate pada produk ini bekerja dengan cara menghambat produksi dan kerja histamin yang diproduksi tubuh, sehingga mencegah stimulasi saraf di otak dan telinga bagian dalam yang bisa menyebabkan mual, muntah, dan pusing.'),
(11, 'Detol', 8000, 0x52656374616e676c6520313530202837292e706e67, 'Dettol Hygiene Liquid digunakan untuk melindungi keluarga dari kuman penyebab penyakit. Cairan Dettol ini merupakan perlindungan terpercaya dengan wangi Lemon yang menyegarkan.'),
(12, 'Siladex', 35000, 0x52656374616e676c6520313439202836292e706e67, 'SILADEX MUCOLYTIC EKSPEKTORAN SIRUP 60 ML mengandung zat aktif Bromhexine dan Guaiphenesin. Obat ini digunakan sebagai agen mukolitik dan ekspektoran untuk meredakan batuk berdahak dan mempermudah pengeluaran dahak.'),
(13, 'Decolgen', 8000, 0x52656374616e676c6520313438202835292e706e67, 'DECOLGEN merupakan obat flu dengan kandungan Paracetamol, Phenylpropanolamine HCl, dan Chlorpheniramine maleate. Paracetamol digunakan sebagai pereda demam dan sakit kepala. Phenylpropanolamine digunakan untuk mengobati gejala hidung tersumbat. Chlorpheniramine maleate bekerja sebagai antihistamin atau anti alergi sehingga obat ini digunakan untuk meredakan gejala flu seperti sakit kepala, demam, bersin-bersin dan hidung tersumbat.'),
(14, 'Salonpas', 35000, 0x52656374616e676c6520313438202834292e706e67, 'Catatan Penggunaan :  * Hanya untuk pemakaian luar. Jangan digunakan disekitar mata, membran mukosa atau kulit yang terkena eksim, ruam atau luka. * Hentikan pemakaian dan konsultasikan ke dokter jika terjadi ruam, kemerahan, gatal atau iritasi. * Untuk kulit sensitif, konsultasikan ke dokter atau apoteker anda sebelum pemakaian.'),
(15, 'P3K Lengkap', 35000, 0x52656374616e676c6520313530202836292e706e67, 'Sedia selalu P3K untuk antisipasi kecelakaan Sedia selalu pahlawan rawat luka, kotak p3k set + isi di mobil/ sepeda motor/ kendaraan pribadi juga dalam lingkungan kerja dan tempat tinggal Anda! Antisipasi kecelakaan saat perjalanan/ kegiatan Anda.'),
(16, 'Entrostop pil', 35000, 0x52656374616e676c6520313531202834292e706e67, 'Cara Kerja Obat : Mengencerkan sekret saluran pernapasan dengan jalan mengurangi atau menghilangkan serat-serat mukoprotein dan mukopolisakarida yang terdapat pada sputum/dahak sehingga lebih mudah dikeluarkan.'),
(17, 'Antimo', 35000, 0x52656374616e676c6520313531202835292e706e67, 'ANTIMO TABLET merupakan obat dengan kandungan Dimenhydrinate yang digunakan untuk mengatasi mual, muntah, dan pusing akibat mabuk perjalanan. Dimenhydrinate pada produk ini bekerja dengan cara menghambat produksi dan kerja histamin yang diproduksi tubuh, sehingga mencegah stimulasi saraf di otak dan telinga bagian dalam yang bisa menyebabkan mual, muntah, dan pusing. '),
(18, 'Detol', 35000, 0x52656374616e676c6520313530202837292e706e67, 'Dettol Hygiene Liquid digunakan untuk melindungi keluarga dari kuman penyebab penyakit. Cairan Dettol ini merupakan perlindungan terpercaya dengan wangi Lemon yang menyegarkan.'),
(19, 'Siladex', 8000, 0x52656374616e676c6520313439202836292e706e67, 'SILADEX MUCOLYTIC EKSPEKTORAN SIRUP 60 ML mengandung zat aktif Bromhexine dan Guaiphenesin. Obat ini digunakan sebagai agen mukolitik dan ekspektoran untuk meredakan batuk berdahak dan mempermudah pengeluaran dahak.'),
(20, 'Decolgen', 8000, 0x52656374616e676c6520313438202835292e706e67, 'DECOLGEN merupakan obat flu dengan kandungan Paracetamol, Phenylpropanolamine HCl, dan Chlorpheniramine maleate. Paracetamol digunakan sebagai pereda demam dan sakit kepala. Phenylpropanolamine digunakan untuk mengobati gejala hidung tersumbat. Chlorpheniramine maleate bekerja sebagai antihistamin atau anti alergi sehingga obat ini digunakan untuk meredakan gejala flu seperti sakit kepala, demam, bersin-bersin dan hidung tersumbat.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik_rentcamp`
--

CREATE TABLE `pemilik_rentcamp` (
  `nama` varchar(25) NOT NULL,
  `email` varchar(15) NOT NULL,
  `pasword` varchar(15) NOT NULL,
  `nohp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemilik_rentcamp`
--

INSERT INTO `pemilik_rentcamp` (`nama`, `email`, `pasword`, `nohp`) VALUES
('RentCamp', 'abc@abc', 'nct', '0987');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_rentcamp`
--

CREATE TABLE `user_rentcamp` (
  `iduser` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `pasword` varchar(15) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `profil` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_rentcamp`
--

INSERT INTO `user_rentcamp` (`iduser`, `nama`, `email`, `pasword`, `nohp`, `profil`) VALUES
(3, 'Anindia Agusta', 'ac@a', 'nct', '09878707908', 0x31363733363037343333),
(4, 'watanabee', 'khaidir@acc', 'nct', '09878707908', ''),
(5, 'anin', 'abc@ab', 'nct', '12234', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adminhomesection1`
--
ALTER TABLE `adminhomesection1`
  ADD PRIMARY KEY (`idsection1`);

--
-- Indeks untuk tabel `adminhomesection2`
--
ALTER TABLE `adminhomesection2`
  ADD PRIMARY KEY (`idsection2`);

--
-- Indeks untuk tabel `alatcamping`
--
ALTER TABLE `alatcamping`
  ADD PRIMARY KEY (`idalat`);

--
-- Indeks untuk tabel `artikel_rentcamp`
--
ALTER TABLE `artikel_rentcamp`
  ADD PRIMARY KEY (`idartikel`);

--
-- Indeks untuk tabel `obatan`
--
ALTER TABLE `obatan`
  ADD PRIMARY KEY (`idobatan`);

--
-- Indeks untuk tabel `user_rentcamp`
--
ALTER TABLE `user_rentcamp`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `adminhomesection1`
--
ALTER TABLE `adminhomesection1`
  MODIFY `idsection1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `adminhomesection2`
--
ALTER TABLE `adminhomesection2`
  MODIFY `idsection2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `alatcamping`
--
ALTER TABLE `alatcamping`
  MODIFY `idalat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `artikel_rentcamp`
--
ALTER TABLE `artikel_rentcamp`
  MODIFY `idartikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `obatan`
--
ALTER TABLE `obatan`
  MODIFY `idobatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user_rentcamp`
--
ALTER TABLE `user_rentcamp`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
