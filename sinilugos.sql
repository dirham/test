-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2015 at 03:35 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sinilugos`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('7b49be586698e36ef8060aba1afa8aed', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko', 1442887059, 'a:2:{s:10:"xauth.user";O:8:"stdClass":7:{s:8:"username";s:5:"guest";s:5:"login";s:5:"guest";s:2:"id";s:1:"0";s:10:"ip_address";s:7:"0.0.0.0";s:10:"user_agent";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0";s:8:"location";s:0:"";s:8:"is_login";b:0;}s:5:"track";a:1:{i:0;s:10:"user/login";}}'),
('454fa717ad5b6b84405cead2453bace9', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1442887713, 'a:2:{s:10:"xauth.user";O:8:"stdClass":7:{s:8:"username";s:5:"guest";s:5:"login";s:5:"guest";s:2:"id";s:1:"0";s:10:"ip_address";s:7:"0.0.0.0";s:10:"user_agent";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36";s:8:"location";s:0:"";s:8:"is_login";b:0;}s:5:"track";a:1:{i:0;s:10:"user/login";}}'),
('fb58e3feb6825fca4b718387c04d5183', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1442887069, 'a:2:{s:10:"xauth.user";O:8:"stdClass":7:{s:8:"username";s:5:"guest";s:5:"login";s:5:"guest";s:2:"id";s:1:"0";s:10:"ip_address";s:7:"0.0.0.0";s:10:"user_agent";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36";s:8:"location";s:0:"";s:8:"is_login";b:0;}s:5:"track";a:1:{i:0;s:10:"user/login";}}'),
('ded5798ff185a93da35f9e10e1ba928c', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1442887556, 'a:3:{s:10:"xauth.user";O:8:"stdClass":21:{s:2:"id";s:2:"15";s:8:"username";s:8:"10992223";s:8:"password";s:32:"b05ddf813581183374634999bf2d8281";s:5:"email";s:0:"";s:4:"name";s:11:"Eko Haryono";s:11:"fakultas_id";s:1:"0";s:10:"jurusan_id";s:1:"0";s:5:"image";s:52:"mahasiswa/image/a22190878508e48ebd98b58bf81faf3b.jpg";s:7:"address";s:20:"jl. jalan jalan kote";s:9:"year_data";s:4:"2012";s:10:"activation";s:0:"";s:6:"active";s:1:"1";s:10:"created_by";s:5:"admin";s:10:"updated_by";s:5:"admin";s:10:"ip_address";s:7:"0.0.0.0";s:10:"user_agent";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36";s:8:"location";s:0:"";s:6:"groups";a:1:{i:0;a:7:{s:2:"id";s:1:"2";s:7:"user_id";s:2:"15";s:8:"group_id";s:1:"2";s:6:"active";s:1:"1";s:10:"created_by";s:4:"andi";s:10:"updated_by";s:4:"andi";s:4:"name";s:9:"Mahasiswa";}}s:6:"kampus";a:1:{i:0;a:13:{s:2:"id";s:1:"1";s:7:"user_id";s:2:"15";s:6:"org_id";s:1:"1";s:6:"active";s:1:"1";s:10:"created_by";s:3:"sys";s:10:"updated_by";s:3:"sys";s:4:"name";s:18:"Akbid Sumber Kasih";s:7:"address";s:53:"Jln. Surya Kencana No. 1 Pamulang Tanggerang - Banten";s:5:"phone";s:15:"+62 21 95283066";s:5:"email";s:23:"andi.susilo@xinix.co.id";s:3:"fax";s:15:"+62 21 95283066";s:7:"website";s:0:"";s:4:"lang";s:0:"";}}s:10:"login_mode";s:7:"default";s:8:"is_login";b:1;}s:5:"track";a:2:{i:0;s:10:"user/login";i:1;s:1:"/";}s:7:"listing";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE IF NOT EXISTS `fakultas` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `informasi` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `name`, `informasi`, `active`, `created_by`, `updated_by`) VALUES
(1, 'Tekhnik', 'Fakultas takhnik universitas pamulang Tanggerang.', 1, 'admin', 'admin'),
(2, 'Sastra', 'Fakultas sastra universitas pamulang Tanggerang', 1, 'admin', 'admin'),
(3, 'Mipa', 'Fakultas Mipa Universitas Pamulang Tanggerang Banten, untuk orang-orang yang gemar berhitung.', 1, 'admin', 'admin'),
(4, 'Hukum', 'Fakultas Hukum Universitas Pamulang Tanggerang, untuk para hukumers dan hukumerwati.', 1, 'admin', 'admin'),
(5, 'Ekonomi', 'Fakultas Ekonomi Universitas Pamulang Tanggerang, untuk para penghitung uang.', 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `active`, `created_by`, `updated_by`) VALUES
(1, 'Superadmin', 1, 'andi', 'admin'),
(2, 'Mahasiswa', 1, 'andi', 'andi');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `informasi_jurusan` varchar(255) NOT NULL,
  `jurusan_status` int(11) NOT NULL,
  `jurusan_jenjang` int(11) NOT NULL,
  `fakultas_id` int(11) NOT NULL,
  `kaprodi` varchar(110) NOT NULL,
  `web` varchar(255) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `year_data` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `name`, `informasi_jurusan`, `jurusan_status`, `jurusan_jenjang`, `fakultas_id`, `kaprodi`, `web`, `image`, `year_data`, `active`, `created_by`, `updated_by`) VALUES
(1, 'Informatika', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga Informatika/komputer yang berkualitas, pintar, dan jenius.', 4, 4, 1, 'Ir. Atang Susila, MEng', 'http://informatika.unpam.ac.id', 'jurusan/image/0c4f2499b044221b9cadce57e5e9082d.JPG', 2007, 1, 'admin', 'admin'),
(2, 'Elektro', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga elektro yang berkualitas, pintar, dan jenius.', 5, 4, 1, 'Ir. Andi Susilo, MM', 'http://elektro.unpam.ac.id', '', 2006, 1, 'admin', 'admin'),
(3, 'Inggris', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga bahasa inggris yang aktif, berkualitas, pintar, dan jenius.', 5, 4, 2, 'Nurhayati. MM', 'http://sastra.unpam.ac.id', '', 2006, 1, 'admin', 'admin'),
(5, 'Matematika', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga matematika yang berkualitas, pintar, dan jenius.', 5, 4, 3, 'Ir. Budiono Sundoro. MSi', 'http://mipa.unpam.ac.id', '', 2006, 1, 'admin', 'admin'),
(7, 'Mesin', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 5, 4, 1, 'Ir. Sarjana Muda. MM', 'http://mesin.unpam.ac.id', '', 2007, 1, 'admin', 'admin'),
(8, 'Industri', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 4, 4, 1, 'Ir. Bambang Sudarmo. MM', 'http://industri.unpam.ac.id', '', 2007, 1, 'admin', 'admin'),
(9, 'Kimia', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 4, 4, 1, 'Ir. Mardianto. MSi', 'http://kimia.unpam.ac.id', '', 2007, 1, 'admin', 'admin'),
(10, 'Indonesia', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 4, 4, 2, 'Ir. Mardiansyah. MM', 'http://sastra.unpam.ac.id', '', 2007, 1, 'admin', 'admin'),
(11, 'Ilmu Hukum', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 5, 4, 4, 'Ir. Maryaman. MM', 'http://hukum.unpam.ac.id', '', 2006, 1, 'admin', 'admin'),
(12, 'Manajemen S1', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 5, 4, 5, 'Ir. Yulianto Wardoyo. MM', 'http://ekonomi.unpam.ac.id', '', 2004, 1, 'admin', 'admin'),
(13, 'Akuntansi S1', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 4, 4, 5, 'Ir. Barokalloh. MM', 'http://ekonomi.unpam.ac.id', '', 2007, 1, 'admin', 'admin'),
(14, 'Sekretaris', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 4, 3, 5, 'Ir. Santa Maulana. MM', 'http://ekonomi.unpam.ac.id', '', 2007, 1, 'admin', 'admin'),
(15, 'Akuntansi D3', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 5, 3, 5, 'Ir. Marullah. MM', 'http://ekonomi.unpam.ac.id', '', 2006, 1, 'admin', 'admin'),
(16, 'Manajemen S2', 'Didedikasikan untuk meluluskan para mahasiswa/i Universitas Pamulang agar mencapai dunia kerja yang sekarang menjadi dominan di pasar kerja jaman sekarang, yang sangat membutuhkan tenaga-tenaga yang berkualitas, pintar, dan jenius.', 4, 5, 5, 'Ir. Dr. Budi Prasetyo. MM', 'http://ekonomi.unpam.ac.id', '', 2008, 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan_foto`
--

CREATE TABLE IF NOT EXISTS `jurusan_foto` (
`id` int(11) unsigned NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `is_default` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jurusan_foto`
--

INSERT INTO `jurusan_foto` (`id`, `jurusan_id`, `title`, `uri`, `is_default`, `active`, `created_by`, `updated_by`) VALUES
(2, 1, '', 'jurusan/image/0c4f2499b044221b9cadce57e5e9082d.JPG', 1, 1, 'admin', 'admin'),
(3, 1, '', 'jurusan/image/de80f808c9d139bba5b18552131550b0.JPG', 0, 1, 'admin', 'admin'),
(4, 1, '', 'jurusan/image/de37aa282279e66ee1c2e350e835bc14.JPG', 0, 1, 'admin', 'admin'),
(5, 1, '', 'jurusan/image/7a14feb8db6f95d914dabd748722933a.JPG', 0, 1, 'admin', 'admin'),
(6, 1, '', 'jurusan/image/54bb81d057d03739ec787d8ecc3bea92.JPG', 0, 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `kampus`
--

CREATE TABLE IF NOT EXISTS `kampus` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) unsigned NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kampus`
--

INSERT INTO `kampus` (`id`, `name`, `address`, `phone`, `email`, `fax`, `website`, `lang`, `active`, `created_by`, `updated_by`) VALUES
(1, 'Akbid Sumber Kasih', 'Jln. Surya Kencana No. 1 Pamulang Tanggerang - Banten', '+62 21 95283066', 'andi.susilo@xinix.co.id', '+62 21 95283066', '', '', 1, 'sys', 'sys');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE IF NOT EXISTS `matkul` (
`id` int(11) unsigned NOT NULL,
  `code_matkul` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sks_id` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `dosen_name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `code_matkul`, `name`, `sks_id`, `semester`, `dosen_name`, `active`, `created_by`, `updated_by`) VALUES
(64, '43555', 'natal care uhyu', 2, 1, 'hj uminah', 1, 'admin', 'admin'),
(63, '1526', 'Ante Natal Care', 2, 6, 'Hj. coba - boi', 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `parent_id` int(11) unsigned NOT NULL,
  `active` int(11) unsigned NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `uri`, `position`, `parent_id`, `active`, `created_by`, `updated_by`) VALUES
(1, 'Home', '/', 0, 0, 1, 'sys', 'admin'),
(2, 'System', '', 1, 0, 1, 'sys', 'admin'),
(3, 'Logout', 'user/logout', 7, 0, 1, 'sys', 'admin'),
(4, 'Mahasiswa', 'user/listing', 5, 0, 1, 'sys', 'admin'),
(5, 'Group User', 'group/listing', 0, 2, 1, 'sys', 'admin'),
(6, 'Edit Menu', 'menu/listing', 1, 2, 1, 'sys', 'admin'),
(9, 'Trajectory', 'trajectory/listing', 10, 30, 1, 'sys', 'admin'),
(12, 'Matkul', 'matkul/listing', 4, 0, 1, 'sys', 'admin'),
(22, 'Ganti Password', 'user/ganti_password_admin', 2, 2, 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `name`, `bobot`) VALUES
(1, 'Nilai A', 4),
(2, 'Nilai B', 3),
(3, 'Nilai C', 2),
(4, 'Nilai D', 1),
(5, 'Nilai E', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester_1`
--

CREATE TABLE IF NOT EXISTS `nilai_semester_1` (
`id` int(11) unsigned NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `nilai_semester_1`
--

INSERT INTO `nilai_semester_1` (`id`, `matkul_id`, `nilai_id`, `jurusan_id`, `mahasiswa_id`, `active`, `created_by`, `updated_by`) VALUES
(1, 1, 1, 1, 2, 1, 'admin', 'admin'),
(2, 2, 3, 1, 2, 1, 'admin', 'admin'),
(3, 3, 3, 1, 2, 1, 'admin', 'admin'),
(4, 4, 2, 1, 2, 1, 'admin', 'admin'),
(5, 5, 2, 1, 2, 1, 'admin', 'admin'),
(6, 6, 2, 1, 2, 1, 'admin', 'admin'),
(7, 7, 1, 1, 2, 1, 'admin', 'admin'),
(8, 8, 2, 1, 2, 1, 'admin', 'admin'),
(9, 9, 1, 1, 2, 1, 'admin', 'admin'),
(10, 1, 3, 1, 3, 1, 'admin', 'admin'),
(11, 2, 2, 1, 3, 1, 'admin', 'admin'),
(12, 3, 2, 1, 3, 1, 'admin', 'admin'),
(13, 4, 3, 1, 3, 1, 'admin', 'admin'),
(14, 5, 1, 1, 3, 1, 'admin', 'admin'),
(15, 6, 1, 1, 3, 1, 'admin', 'admin'),
(16, 7, 2, 1, 3, 1, 'admin', 'admin'),
(17, 8, 2, 1, 3, 1, 'admin', 'admin'),
(18, 9, 2, 1, 3, 1, 'admin', 'admin'),
(19, 1, 1, 1, 4, 1, 'admin', 'admin'),
(20, 2, 1, 1, 4, 1, 'admin', 'admin'),
(21, 3, 1, 1, 4, 1, 'admin', 'admin'),
(22, 4, 2, 1, 4, 1, 'admin', 'admin'),
(23, 5, 2, 1, 4, 1, 'admin', 'admin'),
(24, 6, 1, 1, 4, 1, 'admin', 'admin'),
(25, 7, 1, 1, 4, 1, 'admin', 'admin'),
(26, 8, 3, 1, 4, 1, 'admin', 'admin'),
(27, 9, 3, 1, 4, 1, 'admin', 'admin'),
(28, 63, 2, 0, 15, 1, 'admin', 'admin'),
(29, 64, 1, 0, 15, 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester_2`
--

CREATE TABLE IF NOT EXISTS `nilai_semester_2` (
`id` int(11) unsigned NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `nilai_semester_2`
--

INSERT INTO `nilai_semester_2` (`id`, `matkul_id`, `nilai_id`, `jurusan_id`, `mahasiswa_id`, `active`, `created_by`, `updated_by`) VALUES
(1, 10, 3, 1, 2, 1, 'admin', 'admin'),
(2, 11, 1, 1, 2, 1, 'admin', 'admin'),
(3, 12, 2, 1, 2, 1, 'admin', 'admin'),
(4, 13, 4, 1, 2, 1, 'admin', 'admin'),
(5, 14, 2, 1, 2, 1, 'admin', 'admin'),
(6, 15, 1, 1, 2, 1, 'admin', 'admin'),
(7, 16, 1, 1, 2, 1, 'admin', 'admin'),
(8, 17, 1, 1, 2, 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester_3`
--

CREATE TABLE IF NOT EXISTS `nilai_semester_3` (
`id` int(11) unsigned NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `nilai_semester_3`
--

INSERT INTO `nilai_semester_3` (`id`, `matkul_id`, `nilai_id`, `jurusan_id`, `mahasiswa_id`, `active`, `created_by`, `updated_by`) VALUES
(1, 19, 2, 1, 2, 1, 'admin', 'admin'),
(2, 20, 4, 1, 2, 1, 'admin', 'admin'),
(3, 21, 1, 1, 2, 1, 'admin', 'admin'),
(4, 22, 2, 1, 2, 1, 'admin', 'admin'),
(5, 23, 2, 1, 2, 1, 'admin', 'admin'),
(6, 24, 3, 1, 2, 1, 'admin', 'admin'),
(7, 25, 3, 1, 2, 1, 'admin', 'admin'),
(8, 26, 3, 1, 2, 1, 'admin', 'admin'),
(9, 27, 1, 1, 2, 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester_4`
--

CREATE TABLE IF NOT EXISTS `nilai_semester_4` (
`id` int(11) unsigned NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `nilai_semester_4`
--

INSERT INTO `nilai_semester_4` (`id`, `matkul_id`, `nilai_id`, `jurusan_id`, `mahasiswa_id`, `active`, `created_by`, `updated_by`) VALUES
(1, 27, 2, 1, 2, 1, 'admin', 'admin'),
(2, 28, 4, 1, 2, 1, 'admin', 'admin'),
(3, 29, 1, 1, 2, 1, 'admin', 'admin'),
(4, 30, 2, 1, 2, 1, 'admin', 'admin'),
(5, 31, 2, 1, 2, 1, 'admin', 'admin'),
(6, 32, 3, 1, 2, 1, 'admin', 'admin'),
(7, 33, 3, 1, 2, 1, 'admin', 'admin'),
(8, 34, 3, 1, 2, 1, 'admin', 'admin'),
(9, 35, 3, 1, 2, 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester_5`
--

CREATE TABLE IF NOT EXISTS `nilai_semester_5` (
`id` int(11) unsigned NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester_6`
--

CREATE TABLE IF NOT EXISTS `nilai_semester_6` (
`id` int(11) unsigned NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester_7`
--

CREATE TABLE IF NOT EXISTS `nilai_semester_7` (
`id` int(11) unsigned NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester_8`
--

CREATE TABLE IF NOT EXISTS `nilai_semester_8` (
`id` int(11) unsigned NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `privilege_group`
--

CREATE TABLE IF NOT EXISTS `privilege_group` (
`id` int(11) unsigned NOT NULL,
  `group_id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) unsigned NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `privilege_group`
--

INSERT INTO `privilege_group` (`id`, `group_id`, `uri`, `active`, `created_by`, `updated_by`) VALUES
(1, 1, '*', 1, 'andi', 'andi'),
(2, 2, '/', 1, 'andi', 'andi'),
(3, 2, 'user/nilai_pdf', 1, 'andi', 'andi'),
(4, 2, 'user/ganti_password', 1, 'andi', 'andi');

-- --------------------------------------------------------

--
-- Table structure for table `sks`
--

CREATE TABLE IF NOT EXISTS `sks` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sks`
--

INSERT INTO `sks` (`id`, `name`) VALUES
(1, '1 SKS'),
(2, '2 SKS'),
(3, '3 SKS'),
(4, '4 SKS'),
(5, '5 SKS'),
(6, '6 SKS');

-- --------------------------------------------------------

--
-- Table structure for table `sysparam`
--

CREATE TABLE IF NOT EXISTS `sysparam` (
`id` int(11) NOT NULL,
  `sgroup` varchar(255) NOT NULL,
  `skey` varchar(255) NOT NULL,
  `svalue` varchar(255) NOT NULL,
  `lvalue` text NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `sysparam`
--

INSERT INTO `sysparam` (`id`, `sgroup`, `skey`, `svalue`, `lvalue`, `active`, `created_by`, `updated_by`) VALUES
(1, 'jurusan_jenjang', '1', 'D1', '', 1, 'sys', 'sys'),
(2, 'jurusan_jenjang', '2', 'D2', '', 1, 'sys', 'sys'),
(3, 'jurusan_jenjang', '3', 'D3', '', 1, 'sys', 'sys'),
(4, 'jurusan_jenjang', '4', 'S1', '', 1, 'sys', 'sys'),
(5, 'jurusan_jenjang', '5', 'S2', '', 1, 'sys', 'sys'),
(6, 'jurusan_status', '1', 'Terktreditasi A', '', 1, 'sys', 'sys'),
(7, 'jurusan_status', '2', 'Terktreditasi B', '', 1, 'sys', 'sys'),
(8, 'jurusan_status', '3', 'Terktreditasi C', '', 1, 'sys', 'sys'),
(9, 'jurusan_status', '5', 'Terktreditasi BAN-PT', '', 1, 'sys', 'sys'),
(10, 'jurusan_status', '4', 'Dalam Proses', '', 1, 'sys', 'sys'),
(11, 'semester', '1', 'Semester 1', '', 1, '', ''),
(12, 'semester', '2', 'Semester 2', '', 1, '', ''),
(13, 'semester', '3', 'Semester 3', '', 1, '', ''),
(14, 'semester', '4', 'Semester 4', '', 1, '', ''),
(15, 'semester', '5', 'Semester 5', '', 1, '', ''),
(16, 'semester', '6', 'Semester 6', '', 1, '', ''),
(17, 'semester', '7', 'Semester 7', '', 1, '', ''),
(18, 'semester', '8', 'Semester 8', '', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fakultas_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `year_data` int(11) NOT NULL,
  `activation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) unsigned NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `name`, `fakultas_id`, `jurusan_id`, `image`, `address`, `year_data`, `activation`, `active`, `created_by`, `updated_by`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '', 'Admin', 0, 0, '', '', 2011, '', 1, '', 'admin'),
(15, '10992223', 'b05ddf813581183374634999bf2d8281', '', 'Eko Haryono', 0, 0, 'mahasiswa/image/a22190878508e48ebd98b58bf81faf3b.jpg', 'jl. jalan jalan kote', 2012, '', 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`, `active`, `created_by`, `updated_by`) VALUES
(12, 1, 1, 1, 'admin', 'admin'),
(28, 2, 2, 1, 'admin', 'admin'),
(4, 3, 2, 1, 'admin', 'admin'),
(7, 4, 2, 1, 'admin', 'admin'),
(19, 5, 2, 1, 'admin', 'admin'),
(9, 6, 2, 1, 'admin', 'admin'),
(10, 7, 2, 1, 'admin', 'admin'),
(11, 8, 2, 1, 'admin', 'admin'),
(36, 9, 2, 1, 'admin', 'admin'),
(23, 10, 2, 1, 'admin', 'admin'),
(24, 11, 2, 1, 'admin', 'admin'),
(26, 12, 2, 1, 'admin', 'admin'),
(38, 13, 2, 1, 'admin', 'admin'),
(32, 14, 2, 1, 'admin', 'admin'),
(40, 15, 2, 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_kampus`
--

CREATE TABLE IF NOT EXISTS `user_kampus` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `active` int(11) unsigned NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `user_kampus`
--

INSERT INTO `user_kampus` (`id`, `user_id`, `org_id`, `active`, `created_by`, `updated_by`) VALUES
(23, 1, 1, 1, 'admin', 'admin'),
(39, 2, 1, 1, 'admin', 'admin'),
(15, 3, 1, 1, 'admin', 'admin'),
(18, 4, 1, 1, 'admin', 'admin'),
(30, 5, 1, 1, 'admin', 'admin'),
(22, 8, 1, 1, 'admin', 'admin'),
(47, 9, 1, 1, 'admin', 'admin'),
(34, 10, 1, 1, 'admin', 'admin'),
(20, 6, 1, 1, 'admin', 'admin'),
(21, 7, 1, 1, 'admin', 'admin'),
(35, 11, 1, 1, 'admin', 'admin'),
(37, 12, 1, 1, 'admin', 'admin'),
(48, 13, 1, 1, 'admin', 'admin'),
(43, 14, 1, 1, 'admin', 'admin'),
(50, 15, 1, 1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan_foto`
--
ALTER TABLE `jurusan_foto`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kampus`
--
ALTER TABLE `kampus`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester_1`
--
ALTER TABLE `nilai_semester_1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester_2`
--
ALTER TABLE `nilai_semester_2`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester_3`
--
ALTER TABLE `nilai_semester_3`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester_4`
--
ALTER TABLE `nilai_semester_4`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester_5`
--
ALTER TABLE `nilai_semester_5`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester_6`
--
ALTER TABLE `nilai_semester_6`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester_7`
--
ALTER TABLE `nilai_semester_7`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester_8`
--
ALTER TABLE `nilai_semester_8`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privilege_group`
--
ALTER TABLE `privilege_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sks`
--
ALTER TABLE `sks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sysparam`
--
ALTER TABLE `sysparam`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_kampus`
--
ALTER TABLE `user_kampus`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `jurusan_foto`
--
ALTER TABLE `jurusan_foto`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kampus`
--
ALTER TABLE `kampus`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nilai_semester_1`
--
ALTER TABLE `nilai_semester_1`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `nilai_semester_2`
--
ALTER TABLE `nilai_semester_2`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nilai_semester_3`
--
ALTER TABLE `nilai_semester_3`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nilai_semester_4`
--
ALTER TABLE `nilai_semester_4`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nilai_semester_5`
--
ALTER TABLE `nilai_semester_5`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nilai_semester_6`
--
ALTER TABLE `nilai_semester_6`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nilai_semester_7`
--
ALTER TABLE `nilai_semester_7`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nilai_semester_8`
--
ALTER TABLE `nilai_semester_8`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `privilege_group`
--
ALTER TABLE `privilege_group`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sks`
--
ALTER TABLE `sks`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sysparam`
--
ALTER TABLE `sysparam`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `user_kampus`
--
ALTER TABLE `user_kampus`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
