-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2016 at 12:32 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `greatnrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `nama`, `email`, `last_login`) VALUES
(1, 'fauzan', '595d275ad04a4d9a526716390042c1d4', 'Fauzan', 'azmifauzan@gmail.com', '2016-08-04 07:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `artikel_id` int(20) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `kategori_id` int(20) NOT NULL,
  `isi` text NOT NULL,
  `tgl_dibuat` datetime NOT NULL,
  `creator` varchar(50) NOT NULL,
  `rating` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `view` int(50) NOT NULL,
  `paid_view` int(50) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `log_rate` text,
  `count_rate` int(20) DEFAULT '0',
  `official_flag` varchar(1) DEFAULT '0',
  `status` varchar(1) DEFAULT NULL,
  `status_thumb` int(1) NOT NULL DEFAULT '1',
  `sum_rate` float DEFAULT '0',
  `capcus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`artikel_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3804 ;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `word` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19443 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id_cat` int(100) NOT NULL AUTO_INCREMENT,
  `id_atk` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `author` varchar(20) NOT NULL,
  `author_type` char(1) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `isi` text,
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1495 ;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `group` varchar(50) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `nama`, `keterangan`, `group`) VALUES
(1, 'Ripiu', 'Membahas review, feedback untuk kemajuan ripiu', ''),
(6, 'Internet dan Telco', 'Bahas semua tentang Internet dan Telekomunikasi', 'Tekno'),
(2, 'Film ', 'Semua tentang FILM berbagai Genre, animasi dan Acara di Televisi', 'Hiburan'),
(3, 'Musik', 'Tentang musik lokal dan mancanegara dan penyanyi', 'Hiburan'),
(4, 'Games', 'Tentang Games berbagai Platform', 'Hiburan'),
(5, 'Bisnis dan Ekonomi', 'SEO, Internet Marketing, Adsense, Toko Online, Wiraswasta dan Bisnis lainnya yg legal dan tidak menipu silakan bahas disini', 'Bisnis'),
(7, 'Kuliner', 'Segala yang berbau makanan dan minuman kumpul dimari :)', 'Kuliner'),
(8, 'Wisata dan Travel', 'Membahas tentang Jenis-jenis wisata, tempat wisata dan sarana penunjang', 'Wisata'),
(9, 'Olahraga', 'Yang pada suka olahraga, naik sepeda, balap, senam dan semua olahraga kumpul disini', 'Sport'),
(10, 'Otomotif', 'Membahas seputar Otomotif baik roda 2 sampe banyak roda :D', 'Otomotif'),
(11, 'Buku', 'Membahas topik-topik menarik, best seller ataupun karya2 menarik', 'Edukasi'),
(12, 'Daerah-mu dan aku', 'Tulis tentang daerahmu mau dalam atau luar negeri dan share untuk semua orang.', 'Wisata'),
(13, 'Seni dan Budaya', 'Bahas tentang seni, budaya, tradisi, dan kehidupan manusia.', 'Humaniora'),
(14, 'Kesehatan', 'Tulis tentang seputar kesehatan', 'Lifestyle'),
(15, 'Perangkat Lunak', 'Tulis yang berhubungan dengan Software dan Sistem Operasi', 'Tekno'),
(16, 'Tips dan Trik', 'Berbagi tips dan trik yuk', 'Informasi'),
(17, 'Hobie', 'Yang punya hobie berbagi tentang hobiemu', 'Hiburan'),
(18, 'Lain-lain', 'Yang pengen nulis yang tidak ada pada semua kategori yang tersedia silakan disini', 'Informasi'),
(38, 'Teknologi dan Sains', 'Segala sesuatu yang berhubungan dengan teknologi dan sains.', 'Tekno'),
(34, 'Programming dan DB', 'Share tentang programming dan database yuk', 'Tekno'),
(19, 'Gadget', 'Membahas tentang handphone, PDA, phone, BB, dan Bermacam-macam Gadget', 'Tekno'),
(20, 'Komputer', 'Membahas masalah hardware komputer, perangkat-perangkat pendukung, laptop, printer, scanner, speaker, monitor dll', 'Tekno'),
(21, 'Animasi dan Kartun', 'Membahas tentang animasi, anime, kartun', 'Hiburan'),
(22, 'Pengembangan Diri', 'Share informasi tentang Manajemen Diri dan Pengembangan Diri', 'Humaniora'),
(24, 'Psikologi', 'Membahas materi-materi yang berkaitan dengan aspek psikologi', 'Humaniora'),
(25, 'Motivasi', 'Sharing tentang artikel-artikel motivasi', 'Humaniora'),
(27, 'Berita dan Politik', 'Membahas berita dan politik dalam dan luar negeri', 'News'),
(28, 'Edukasi', 'Sharing materi-materi, berita, atau segala sesuatu tentang pendidikan di Indonesia atau luar negeri', 'Edukasi'),
(29, 'Foto dan Video', 'Share foto-foto dan Video tentunya yang sesuai aturan :D', 'Foto & Video'),
(31, 'Event dan Peristiwa', 'Sharing tentang peristiwa-peristiwa nasional dan internasional atau laporkan event-event yang sedang terjadi', 'News'),
(32, 'Bumi dan Lingkungan', 'Share tentang kondisi alam disekitarmu, atau apapun yang berhubungan dengan "Nature"', 'News'),
(33, 'Sosial Masyarakat', 'Berisi info-info tentang bakti sosial, iklan layanan masyarakat.', 'Humaniora'),
(35, 'Fashion dan Mode', 'Sharing tentang baju, celana, kaos, pokoknya macem2 pakaian deh', 'Lifestyle'),
(36, 'Promosi', 'Yang mau promosi usaha, website, kegiatan-kegiatan tau promo lainnya sesuai dengan TOS', 'Bisnis'),
(37, 'Seni Beladiri', 'Hal yang berhubungan dengan seni beladiri, martial arts.', 'Sport'),
(39, 'Jobs dan LoKer', 'Share tentang kiat-kiat bekerja, hal2 yang berhubungan dengan karir, perkerjaan dan lowongan pekerjaan', 'Informasi'),
(40, 'Dongeng dan Legenda', 'Share dongeng dan legenda yang ada di dunia', 'Edukasi'),
(41, 'Sepakbola', 'Kategori khusus olahraga sepakbola.', 'Sport'),
(42, 'Tokoh dan Sejarah', 'Tokoh dan sejarah merupakan cerita masa lalu yang menginspirasi keadaan saat ini.', 'Edukasi'),
(45, 'Pelajar dan Mahasiswa', 'Segala yang berhubungan dengan pelajar atau mahasiswa', 'Edukasi'),
(46, 'Sekolah & Kampus', 'Artikel seputar sekolah dan kampus di sekitar kamu', 'Edukasi'),
(47, 'English Corner', 'For English Article', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id_newsletter` int(50) NOT NULL AUTO_INCREMENT,
  `tgl_dikirim` date NOT NULL,
  `pengirim` int(50) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  PRIMARY KEY (`id_newsletter`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id_newsletter`, `tgl_dikirim`, `pengirim`, `cc`, `penerima`, `judul`, `isi`) VALUES
(11, '2011-01-06', 1, '', 'all', 'Tahun Baru, Fitur Baru, Aturan Baru (Update broken link untuk tata cara dan harga)', '<p>Mohon maaf ada kesalahan penulisan link pada email sebelumnya. Untuk penjelasan dan tata cara pemasangan iklan dapat <a href="http://www.ripiu.com/forum/viewtopic.php?f=4&t=4">dilihat disini</a>. Sedangkan untuk detil harga iklan ripiu yang baru dalam bentuk poin dapat <a href="http://www.ripiu.com/forum/viewtopic.php?f=4&t=5">dilihat disini</a>.</p>'),
(10, '2011-01-03', 1, '', 'all', 'Tahun Baru, Fitur Baru, Aturan Baru', '<p>Tidak terasa kita sudah memasuki tahun baru 2011. Diawal tahun baru ini, Kami ingin memperkenalkan beberapa fitur baru yang telah dipersiapkan sebelumnya. yaitu :</p>\n<p><strong>1. Forum Ripiu</strong></p>\n<p>Untuk menambah interaksi antar anggota ripiu, kami menyediakan sarana  forum untuk tempat saling bertukar pikiran dan saling berdiskusi. Forum  bersifat bebas selama masih berada dalam batas wajar dan dalam batas  norma yang berlaku.</p>\n<p>Dengan adanya forum ripiu ini, maka untuk setiap tulisan yang <strong>hanya</strong> melakukan pengutipan dari tulisan lain akan kami tolak untuk  ditayangkan di ripiu, namun akan kami sarankan untuk di posting di  Forum, sebagai tempat untuk mendiskusikan kutipan tersebut.</p>\n<p>Forum Ripiu dapat diakses melalui alamat : <a title="Forum Ripiu" href="forum">http://www.ripiu.com/forum</a> . Semua ripiu''ers yang telah memiliki account sebelumnya, dapat  langsung menggunakan fasilitas ini tanpa perlu melakukan pendaftaran  ulang di Forum. Cukup dengan login di halaman dashboard anda, secara  otomatis account anda akan diintegrasikan kedalam Forum.</p>\n<p><strong>2. Sistem Iklan yang Baru</strong></p>\n<p>Mulai tahun 2011, kami mengubah sistem untuk memasang iklan di Ripiu.   Jika sebelumnya harus mempunyai akun khusus advertiser, sekarang  setiap  ripiu''ers dapat memasang iklan di spot manapun yang terdapat di  ripiu  secara <strong>Gratis</strong> alias bebas biaya.</p>\n<p>Kami mengubah sistem iklan di ripiu dengan menggunakan poin. Jadi  dari  poin yang ripiu''ers dapatkan dengan cara menulis artikel, mengajak  teman  bergabung di ripiu, dan berkomentar di ripiu, dapat digunakan  untuk  memasang iklan di ripiu.</p>\n<p>Cukup dengan menulis artikel di ripiu sekaligus bisa berpromosi.  Kalau  masa tayang nya sudah habis, tinggal tulis artikel lagi, lalu  perpanjang  deh iklannya. Hitung2 berpromosi sambil berbagi ilmu melalui  tulisan.</p>\n<p>Untuk penjelasan dan tata cara pemasangan iklan dapat <a title="Tata Cara Pemasangan Iklan Ripiu" href="forum/viewtopic.php?f=4&t=4" target="_blank">dilihat disini</a>. Sedangkan untuk detil harga iklan ripiu yang baru dalam bentuk poin dapat <a title="Harga Iklan Ripiu" href="forum/viewtopic.php?f=4&t=5" target="_blank">dilihat disini</a>.</p>\n<p>Jika ada pertanyaan lebih lanjut mengenai sistem dan layanan baru ini  dapat ditanyakan lebih lanjut melalui email : support@ripiu.org . Atau  dapat juga dengan posting pertanyaan anda di Forum Ripiu.</p>\n<p>Salam Hormat.<br />Ripiu Team.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_kirim` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unread',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Table structure for table `ripiu_desc`
--

CREATE TABLE IF NOT EXISTS `ripiu_desc` (
  `id_desc` int(10) NOT NULL AUTO_INCREMENT,
  `nama_desc` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  PRIMARY KEY (`id_desc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ripiu_desc`
--

INSERT INTO `ripiu_desc` (`id_desc`, `nama_desc`, `url`, `isi`) VALUES
(1, 'Apa itu Ripiu.com', 'ripiu-about', '<h1>Apa itu ripiu.com ?</h1>\n<hr />\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">"<strong>Ripiu.com</strong>" adalah kumpulan pengetahuan yang dikumpulkan dari para anggota<strong> Ripiu.com</strong>, pengetahuan yang dimaksud berupa tulisan-tulisan yang dikumpulkan dan dikelompokan dalam beberapa kelompok (kategori). Kategori yang tersedia di <strong>Ripiu.com</strong> bersifat dinamik artinya bisa mengalami penambahan kategori dan perubahan kategori-kategori yang ada.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Tujuan kami adalah mengumpulkan semua yang pernah ditulis oleh seluruh manusia sehingga dapat memudahkan seseorang jika memerlukan dan mencari sebuah tulisan, review atau melihat dan mengetahui langsung komentar dr tulisan-tulisan, review yang sudah ditulis oleh anggota. Semua tulisan yang ditulis oleh anggota merupakan tulisan asli anggota atau bisa mengutip tulisan yang sudah ada sesuai dengan tatacara dan etika pengutipan (seperti mencantumkan asal tulisan dan penulis aslinya dan untuk lebih jelasnya bisa melihat aturan di halaman aturan dan ketentuan).</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Seperti yang tertulis dalam slogan kami yaitu "share and earn", berarti semua tulisan yang ditulis oleh para anggota tidak hanya berguna dan bermanfaat untuk membagi pengetahuan dan informasi untuk sesama anggota ataupun pengakses ripiu.com tetapi juga bermanfaat untuk penulis sendiri. Royalti (up sampai 40% hasil keuntungan bersih ripiu.com perbulannya) yang akan kami berikan kepada penulis dalam bentuk kredit yang dapat dicairkan pada 2 hari kerja sesudah tanggal 5 setiap bulannya, dengan batas minimum penukaran senilai Rp.50.000. Selain Royalti kami juga memberikan Point untuk afiliasi. Untuk memahami sistem royalti dan point dari kami bisa dilihat di halaman aturan dan ketentuan.</p>'),
(3, 'Disclaimer', 'ripiu-disclaimer', '<h1>Disclaimer</h1>\n<hr />\n<p>&nbsp;</p>\n<ol>\n<li style="text-align: justify;">\n<p>Situs ini dibuat untuk memberikan dan sebagai wadah pengumpulan, share informasi-informasi yang cerdas, tepat dan bermanfaat, informasi dan pengetahuan yang disediakan oleh situs ini dikelompokkan dalam beberapa kategori sehingga memudahkan untuk melakukan pencarian dan pemilahan.</p>\n</li>\n<li style="text-align: justify;">\n<p>Informasi, konten atau pengetahuan yang ditulis oleh seluruh anggota (user) dan konten pihak ketiga (iklan), berupa tulisan, review, pembahasan, video, link, gambar, foto, animasi atau konten situs lainnya yang dianggap merugikan, menyudutkan, melakukan penghasutan, penghinaan, propaganda, atau hal-hal yang tidak sesuai dengan hukum ataupun norma-norma kehidupan dan ofensif bukan merupakan tanggung jawab ripiu-team (ripiu.org) yang dalam hal ini sebagai pemilik Ripiu.com.</p>\n</li>\n<li style="text-align: justify;">\n<p>Segala sesuatu yang dinilai tidak sesuai dengan aturan-aturan yang berlaku baik itu aturan yang telah disediakan oleh ripiu.com ataupun dianggap kurang baik oleh seseorang, atau kelompok tertentu bukan merupakan tanggung jawab ripiu-project (ripiu.org) sebagai pembuat dan pengelola situs ripiu.com.</p>\n</li>\n<li style="text-align: justify;">\n<p>Ripiu-team telah menyusun aturan-aturan yang dibuat untuk menjaga kode etik dan tata cara penulisan konten, dan tidak berkewajiban untuk melakukan pengawasan konten secara 24jam tiap harinya.</p>\n</li>\n<li style="text-align: justify;">\n<p>Pengawasan terhadap konten merupakan hak ripiu-team dan tidak terikat dengan kewajiban untuk melakukan pengawasan dan pengawasan yang dilakukan secara acak dan dalam waktu yang tidak terikat / teratur.</p>\n</li>\n<li style="text-align: justify;">\n<p>Ripiu tidak bertanggung jawab atas penyalahgunaan konten yang tersedia dalam situs ini ataupun atas kelakuan seluruh anggota yang sehubungan dengan pemanfaatan seluruh fasilitas dan layanan yang etrdapat pada situs ini.</p>\n</li>\n<li style="text-align: justify;">\n<p>Kepada seluruh pengguna yang mengakses konten situs ini baik itu secara langsung atau tidak langsung ataupun kepada seluruh anggota dalam penulisan informasi, review ataupun pengetahuan lainnya diharapkan menyadari bahwa situs ini merupakan media informasi umum yang dapat diakses oleh siapapun dan dapat diunduh oleh siapapun atau dapat dikutip oleh siapapun ke media manapun, diharapkan menyadari bahwa situs ini dibuat untuk hal-hal yang mendatangkan nilai-nilai manfaat dan nilai positif tanpa harus mengambil hak orang ataupun kelompok lainnya atau dapat menimbulkan kerugian kepada personal ataupun kelompok. Dalam hal ini kami ripiu-team sebagai pengelola ripiu.com tidak bertanggung jawab jika terjadi sengketa yang muncul diakibatkan dengan konten baik itu informasi atau pengetahuan yang ditulis oleh anggota dan fitur-fitur yang disediakan oleh kami yang disalahgunakan oleh anggota atau pihak-pihak lainnya.</p>\n</li>\n<li style="text-align: justify;">\n<p>Sengketa yang ditujukan kepada kami ripiu-tim selaku pengelola ripiu.com sehubungan ada perbedaan penafsiran dan pemahaman dengan konten yang ditulis adalah bukan sengketa, dan penafsiran dan pemahaman diberikan oleh ripiu-team untuk menghindarkan ambiguisitas dan kesalahpahaman.</p>\n</li>\n<li style="text-align: justify;">\n<p>Ripiu-team tidak bertanggungjawab atas kehilangan data, kerusakan yang diakibatkan oleh masuknya program jahat (malicios code) pada perangkat komputer, atau device yang anda gunakan untuk mengakses ripiu.com, sehingga harap diperhatikan jika terdapat hal-hal yang mencurigakan pada link-link yang diberikan pada tulisan atau informasi yang anda akses.</p>\n</li>\n<li style="text-align: justify;">\n<p>Segala kelakuan ataupun hubungan yang dilakukan oleh anggota ripiu.com kepada pihak ke-3 atas situs ini adalah sepenuhnya tanggung jawab pihak yang melakukan dan terlibat bukan didalam tanggung jawab dari pengelola ripiu.com dalam hal ini ripiu-team.</p>\n</li>\n<li style="text-align: justify;">\n<p>Hal-hal tersebut menyangkut segala hal yang dilakukan oleh anggota dan sesama anggota ataupun dengan pihak ketiga dalam bentuk apapun seperti transaksi, penulisan, pekerjaan yang menimbulkan sengketa bukanlah tanggung jawab ripiu-team.</p>\n</li>\n<li style="text-align: justify;">\n<p>Ripiu-team berhak melakukan penghapusan konten, pengnonaktifan konten, anggota jika terjadi pelanggaran terhadap aturan yang kami berikan ataupun dinilai bisa merugikan seseorang atau kelompok tertentu tanpa menunggu komplain dari pihak yang dirugikan.</p>\n</li>\n<li style="text-align: justify;">\n<p>Ripiu-team berhak melakukan pemeliharaan, pengupdatean layanan kapan saja dan tidak bertanggung jawab jika saat proses tersebut terjadi kesalahan fungsi atau kerusakan pada komputer anda.</p>\n</li>\n<li style="text-align: justify;">\n<p>Ripiu-team tidak bertanggung jawab atas hilangnya tulisan, informasi ataupun segala yang anggota simpan pada ripiu.com jika terjadi suatu bencana baik itu bencana alam, kebakaran atau kerusakan diluar kemampuan dan perkiraan kami (ripiu-team) tanpa menghilangkan tanggung jawab kami untuk menjaga semua data yang ada pada ripiu.com secara maksimal.</p>\n</li>\n<li style="text-align: justify;">\n<p>Ripiu-team memiliki hak dan tidak berkewajiban untuk mengawasi jika terjadi permasalahan, sengketa ataupun hal lainnya di antara pihak-pihak yang terjadi sehubungan dengan situs ini. dan ripiu-team berhak memantau permasalahan yang terjadi dan berhak mengumumkan hal tersebut dalam berbagai media apapun.</p>\n</li>\n</ol>'),
(4, 'FAQ', 'faq', '<h1>Frequently Asked Question</h1>\n<hr />\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;"><strong>Umum</strong></p>\n<p style="text-align: justify;">Q: Apa itu ripiu.com ?</p>\n<p style="text-align: justify;">A: Ripiu.com adalah kumpulan pengetahuan yang dikumpulkan dari para anggota Ripiu.com, pengetahuan yang dimaksud berupa tulisan-tulisan yang dikumpulkan dan dikelompokan dalam beberapa kelompok (kategori). Kategori yang tersedia di Ripiu.com bersifat dinamik artinya bisa mengalami penambahan kategori dan perubahan kategori-kategori yang ada.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Bagaimanakah cara untuk berkontribusi di ripiu.com ?</p>\n<p style="text-align: justify;">A: Anda tinggal mendaftar melalui halaman signup. setelah aktivasi berhasil, anda langsung dapat berkontribusi di ripiu.com, tanpa memerlukan biaya sedikitpun alias gratis.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Apa arti slogan ripiu.com - share and earn ?</p>\n<p style="text-align: justify;">A: Semua tulisan yang ditulis oleh para anggota tidak hanya berguna dan bermanfaat untuk membagi pengetahuan dan informasi untuk sesama anggota ataupun pengakses ripiu.com tetapi juga bermanfaat untuk penulis sendiri. Royalti (up sampai 40% hasil keuntungan bersih ripiu.com perbulannya) yang akan kami berikan kepada penulis dalam bentuk kredit yang dapat dicairkan pada 2 hari kerja sesudah tanggal 5 setiap bulannya.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;"><strong>Keanggotaan</strong></p>\n<p style="text-align: justify;">Q: Apakah ripiu.com mempunyai jenis member berbeda ?</p>\n<p style="text-align: justify;">A: Ripiu.com mempunyai 2 jenis member yang berbeda. Kami membaginya menjadi publisher dan advertiser. publisher merupakan para anggota yang aktif memberikan kontribusi tulisan, sedangkan advertiser merupakan member yang ingin memasang iklan pada tempat iklan yang telah disediakan.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Bagaimana sistem keanggotaan publisher di ripiu.com ?</p>\n<p style="text-align: justify;">A: Keanggotaan publisher terdiri dari 3 tingkatan yaitu : BeeMaster, BeeContributor, BeeGuru. Masing - masing keanggotaan tersebut mempunyai fitur yang berbeda.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Apa itu BeeMaster ?</p>\n<p style="text-align: justify;">A: BeeMaster merupakan member yang telah mendaftar dan aktif melakukan kontribusi dai ripiu.com. Ini adalah jenis member default yang diperoleh ketika seseorang join dalam keanggotaan ripiu. Keanggotaan jenis ini tidak dipungut bayaran apapun untuk bergabung.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Apa itu BeeContributor ?</p>\n<p style="text-align: justify;">A: BeeContributor merupakan keanggotaan tingkat kedua dalam ripiu.com. Untuk merubah status keanggotaan anda menjadi BeeContributor dapat ditemukan pada halaman dashboard masing - masing anggota. Keuntungan yang didapatkan bagi keanggotaan jenis ini adalah :</p>\n<p style="text-align: justify;">- Mendapatkan spot iklan di halaman tampilan artikel yang ditulis, ukuran 300x100 pixel. Iklan dapat diatur sendiri melalui halaman dashboard.</p>\n<p style="text-align: justify;">- Mendapatkan kesempatan dalam menulis review exclusive dari partner kami, dimana setiap review exclusive yang ditulis dan disutujui akan mendapatkan kredit royalti sesuai dengan kesepakatan.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Apa itu BeeGuru ?</p>\n<p style="text-align: justify;">A: BeeGuru merupakan jenis keanggotaan khusus dalam ripiu.com. Keanggotaan jenis ini hanya diberikan pada event tertentu ataupun melalui undangan resmi dari ripiu.com. Fitur yang didapatkan dalam BeeGuru sama seperti keanggotaan jenis BeeContributor, hanya saja BeeGuru dibebaskan dari semua kewajiban untuk membayar keanggotan tersebut.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;"><strong>Kredit &amp; Poin</strong></p>\n<p style="text-align: justify;">Q: Apa itu kredit ?</p>\n<p style="text-align: justify;">A: Kredit merupakan royalti yang akan diterima oleh member ripiu.com yang telah berkontribusi tulisan.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Berapakah besaran kredit yang diterima untuk setiap tulisan ?</p>\n<p style="text-align: justify;">A: Ripiu.com tidak memberikan besaran royalti yang fix untuk setiap tulisan yang di submit. Tetapi ripiu.com menggunakan prinsip share profit. Dimana pendapatan bersih yang didapatkan di ripiu.com akan dibagikan kepada setiap anggota yang berhak.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Bagaimana perhitungan share profit di ripiu.com ?</p>\n<p style="text-align: justify;">A: Pembagian profit kepada setiap anggota di hitung berdasarkan jumlah hit masing2 artikel yang ada. Misal dalam bulan januari, ripiu mendapatkan penghasilan bersih senilai satu juta rupiah. Dari pendapatan tersebut akan dikurangi untuk biaya oprasional kami (misalnya senilai dua ratus ribu rupiah). Maka sisa yang delapan ratus ribu rupiah akan dibagi dua antara pemilik ripiu dengan semua member yang ada. Jadi selama artikel yang anda tulis masih dilihat dan dimanfaatkan oleh pengguna ripiu, selama itu juga kemungkinan untuk mendapatkan share profit royalti.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Apakah beda poin dengan kredit royalti di ripiu.com</p>\n<p style="text-align: justify;">A: Poin didapatkan ketika anda melakukan aktivitas tertentu didalam ripiu.com. Poin nantinya dapat ditukarkan dengan bermacam hadiah menarik, diantaranya : biaya keanggotan BeeContributor, Merchandise ripiu, dll.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Bagaimana cara mendapatkan poin ?</p>\n<p style="text-align: justify;">A: - Merekomendasikan seseorang untuk mendaftar di ripiu.com melalui link affiliasi anda : 50 poin.</p>\n<p style="text-align: justify;">- Kontribusi artikel (setelah diapprove) : 10 poin.</p>\n<p style="text-align: justify;">- Berkomentar di tulisan yang aktif dalam ripiu.com : 1 poin.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;"><strong>Lainnya</strong></p>\n<p style="text-align: justify;">Q: Kenapa artikel yang saya tulis pertama kali dan kedua kali tidak langsung muncul dihalaman utama?</p>\n<p style="text-align: justify;">A: Untuk artikel / tulisan yang pertama dan kedua sejak registrasi user memerlukan ijin terlebih dahulu yang akan di "approve" oleh admin untuk menghindari spam. Sesudah itu tulisan ke 3 dst akan otomatis di<em>approve</em> oelh ripiu.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q: Saya telah merekomendasikan sesorang untuk mendaftar di ripiu.com, tetapi poin saya tidak berubah.</p>\n<p style="text-align: justify;">A:&nbsp;&nbsp;  Poin anda akan bertambah secara otomoatis ketika user yang telah anda rekomendasikan memberikan kontribusi minimal 5 artikel atau melakukan pembelian credit jika user tersebut mendaftar sebagai advertiser. Hal ini kami lakukan untuk mencegah masuknya spam user.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q:  Saya sudah melakukan registrasi, tetapi kenapa saya tidak mendapatkan email aktifasi.</p>\n<p style="text-align: justify;">A: Untuk beberapa mail server terkadang masuk ke dalam folder spam atau junk. Coba cek folder spam pada mail anda.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Q:&nbsp;&nbsp; Kenapa ada beberapa artikel yang saya tulis tiba-tiba dihapus.</p>\n<p style="text-align: justify;">A:&nbsp;&nbsp; Untuk artikel yang tidak sesuai topik atau meskipun ada hubungannya dengan topik tetapi cenderung berbau sara, promosi, pornografi, atau hal-hal yang tidak patut akan kami hapus dan ada pengurangan point dan banned user jika terus mem"bandel".</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Apabila pertanyaan anda tidak termasuk di dalam F.A.Q ini, silahkan kirim pertanyaan tesebut ke support (at) ripiu (dot) org</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>'),
(5, 'Petunjuk', 'ripiu-petunjuk', '<h1 style="text-align: justify;">Petunjuk</h1>\n<p style="text-align: justify;">&nbsp;</p>\n<hr />\n<p style="text-align: justify;">&nbsp;</p>\n<ol style="text-align: justify;">\n<li>Untuk memulai penulisan di Ripiu.com silakan untuk mendaftarkan diri anda pada <strong>menu sign-up</strong> kemudian lakukan aktivasi melalui email, dengan mengklik <strong>link aktivasi</strong> pada email yang kami kirimkan pada account email anda.</li>\n<li>Kemudian untuk mengakses menu penulisan secara langsung bisa dengan mengklik menu "<strong>Nulis BeeReview</strong>" pada top menu dan footer menu.</li>\n<li>Setiap account publisher memiliki <strong>dashboard</strong>, dashboard merupakan halaman backend user untuk mengatur fitur yang dia miliki. Beberapa fitur yang saat ini tersedia seperti p<strong>rofil, affiliasi, payment, withdraw, article, dan ads</strong> (untuk keanggotaan <strong>bee-contributor</strong> dan b<strong>ee-guru</strong>). Untuk fitur dan penyempurnaan terus kami kembangkan setiap waktu.</li>\n<li>Memulai penulisan silakan klik Menu "<strong>New Article</strong>" lalu masukkan tulisan pada kolom text area. <br /><img style="border: 1px; padding: 10px; margin: 10px;" src="http://ripiu.com/images/help/help1.jpg" alt="" /> <br /> <br /> \n<ul>\n<li><strong>Masukkan judul </strong>yang sesuai dengan topik dan kategori tulisan yang hendak anda tulis.</li>\n<li>Kemudian <strong>masukkan URL </strong>yang berfungsi sebagai link unik tulisan / artikel anda, misalnya kombinasi username dan judul yang setiap spasi dipisahkan dengan dash atau tanda minus. Contoh : mangripiu-cara-menanam-tanaman-singkong.</li>\n<li>Kemudian <strong>pilih kategori</strong> yang sesuai dengan tulisan anda, kami akan melakukan random filtering jika ada tulisan yang salah kategori akan otomatis kami pindahkan tanpa konfirmasi terlebih dahulu.</li>\n<li>Untuk <strong>memunculkan gambar utama</strong> yaitu gambar yang akan di<em>-detect</em> secara otomatis dengan ripiu.com <strong>silakan untuk mengupload image</strong> pada input image dengan terlebih dahulu mengklik tombol browse.</li>\n<li>Kemudian<strong> tulis artikel pada textarea</strong> / pada label ripiu*</li>\n</ul>\n</li>\n<li>Petunjuk singkat mengenai kolom pengisian artikel (taskbar tinymce) <br /><img style="border: 1px; padding: 10px; margin: 10px;" src="http://ripiu.com/images/help/help2.jpg" alt="" /> <br /> <br /> \n<ul>\n<li>Hampir untuk semua user yang terbiasa menggunakan aplikasi office pasti akan terbiasa dengan taskbar ini.</li>\n<li>Untuk <strong>membuat link</strong> pada kata atau tulisan bisa dengan meng-select tulisan yang hendak dibuatkan link kemudian klik <strong>icon </strong>"<strong>rantai</strong>" tepat disebelah icon "redo". Kemudian masukan URL dan jenis open windownya.</li>\n<li>Untuk <strong>memasukkan gambar selain gambar utama</strong> dengan cara memasukkan URL-gambar pada icon "<strong>Insert/edit image</strong>". Masukkan gambar dan atur gambar sesuai keinginan.</li>\n<li>Untuk <strong>memasukkan Video atau file flash</strong> pilih icon "<strong>Insert / Edit Embeded media</strong>" kemudian masukkan URL misalnya <em>"http://www.youtube.com/v/jr5z_JLE4EY&amp;color1=0xb1b1b1&amp;color2=0xcfcfcf&amp;hl=en_US&amp;feature=player_embedded&amp;fs=1"</em>. <strong>Kemudian masukkan ukurannya</strong> (ukuran yang pas dan proposional dengan layout ripiu maksimal <strong>425x344</strong>)</li>\n</ul>\n</li>\n<li>Setiap artikel yang dimasukan khusus pada <strong>artikel pertama dan kedua akan membutuhkan aktivasi</strong> oleh admin ripiu, dan untuk artikel berikutnya akan diapprove secara otomatis.</li>\n<li>User Bee-Contributor dan Bee-Guru memiliki fasilitas Ads untuk <strong>memasukkan iklan, banner dan adsense pribadi</strong>. Silakan akses menu ads (Ads Banner untuk memasukkan banner pada setiap artikel yang anda punya &amp; Ads Adsense untuk memasukkan adsense pada setiap artikel yang anda punya)</li>\n<li>Untuk banner, iklan dan adsense dilarang dengan sengaja memasukkan hal-hal yang pornografi ataupun pejudian dan hal-hal yang kurang berkenan dimasyarakat.</li>\n</ol>'),
(6, 'Video', 'video-ripiu', '<p>\r\n<object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/8dQytOu-ehY&hl=en_US&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/8dQytOu-ehY&hl=en_US&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>\r\n</p>'),
(7, 'Ketentuan Layanan', 'terms', '<h1>Ketentuan Layanan</h1>\n<hr />\n<p>&nbsp;</p>\n<p style="text-align: justify;">Dengan menggunakan, mengakses, menjelajah, membuka www.ripiu.com  dengan cara apapun,  Anda secara langsung telah mengakui kesepakatan atas Ketentuan layanan  ini, Kebijakan Privasi, dan petunjuk-petunjuk lain, peraturan-peraturan  lain, dan ketentuan-ketentuan tambahan, yang secara kolektif  dikompilasikan pada pernyataan ini.</p>\n<p>&nbsp;</p>\n<p style="text-align: justify;">Pengaksesan yang Anda lakukan terhadap ripiu.com berarti Anda telah setuju  untuk tunduk pada Ketentuan Pelayanan ini, dan apabila Anda tidak  berkenan dengan Ketentuan Pelayanan yang tercantum di dalam  pasal-pasal di bawah ini, maka <strong>JANGAN</strong> mengakses Situs ini.</p>\n<p>&nbsp;</p>\n<ol>\n<li><strong>Definisi</strong></li>\n<p style="text-align: justify;">"User" adalah orang selaku subjek hukum yang menggunakan, mengakses,  menjelajah, membuka, atau dengan cara apapun melakukan kontak  dengan situs ini, termasuk dan tidak hanya terbatas pada Anda dan  siapapun yang membaca atau membuat artikel di ripiu.com.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">"Layanan" adalah  pelayanan dan fungsi yang dapat diakses dan diperbolehkan untuk User di  dalam Situs. "Konten" adalah informasi, kompilasi, komunikasi, gambar,  foto, grafik, audio, dan video.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">"Konten Anda" adalah informasi yang Anda  dedikasikan, bubuhkan, atau komentar danatau ulasan yang Anda  dedikasikan, bubuhkan, atau kirimkan di dalam ripiu.com. Konten Anda tidak  mencakup kepada informasi pribadi yang Anda wajib masukkan pada saat  membuat account di dalam ripiu.com.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">"Konten User" adalah adalah informasi  yang User dedikasikan, bubuhkan, atau komentar dan atau ulasan yang User  dedikasikan, bubuhkan, atau kirimkan di dalam ripiu.com.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">"Konten Pihak ke-3" adalah  konten yang dapat diakses di dalam Situs ini yang dibuat oleh orang  sebagai subjek hukum selain User dan Ripiu Team, termasuk, namun tidak  hanya terbatas pada penyedia jasa yang memberikan lisensi dan atau  legalitas atas ripiu.com untuk memiliki Situs.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">"Konten Situs" adalah  seluruh Konten yang terdapat di dalam ripiu.com, termasuk di dalamnya adalah  Konten Anda, Konten User, Konten pihak ke 3.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">Definisi-definisi lainnya yang  muncul di dalam Ketentuan Pelayanan ini dijelaskan secara singkat di  dalam pasal yang bersangkutan, ketidakjelasan atas istilah dapat dialamatkan pada  kontak kami di support (at) ripiu (dot) org.</p>\n<p>&nbsp;</p>\n<li><strong>Ketentuan</strong></li>\n<p style="text-align: justify;">Untuk mengakses dan memiliki Account di dalam Situs ini, sebagai BeeMaster, Anda harus sekurang-kurangnya berusia 13 (tiga belas) tahun,  dan untuk memiliki Account BeeAdvertiser Anda harus sekurang-kurangnya berusia  18 (delapan belas) tahun, sesuai dengan Undang-Undang Republik Indonesia  No. 1 Tahun 1974 mengenai usia dewasa. Dengan konsekuensi apabila Anda  belum memasuki batas usia yang telah disebutkan di atas, Anda tidak  berhak mendapatkan pelayanan secara penuh sebagaimana diungkapkan di  dalam Ketentuan Pelayanan ini, secara terperinci yakni; (i) Anda tidak  memiliki kecakapan hukum relatif berdasarkan hukum yang berlaku di  Republik Indonesia, atau (ii) Anda tidak diperbolehkan secara hukum  untuk mendapatkan atau menggunakan pelayanan yang kami berikan. Dengan  mengakses dan atau menggunakan Situs ini, Anda telah memberikan jaminan  bahwa Anda telah memiliki hak, kecakapan, izin, dan kapasitas untuk  berhak sekaligus bertanggung jawab terhadap Ketentuan Pelayanan ini dan  mengikatkan diri dengan seluruh ketentuan dan peraturan yang terdapat  dan melekat pada Situs ini. Apabila Anda mengakses Situs ini sebagai  perwakilan dari badan usaha, badan hukum, lembaga, institusi, atau  organisasi, maka Anda telah menyatakan diri untuk mewakili dan  memberikan jaminan bahwa Anda adalah perwakilan resmi dari badan usaha,  badan hukum, lembaga, institusi, atau organisasi untuk mengikatkan diri  atas segala hak dan kewajiban yang terdapat di dalam Ketentuan Pelayanan  ini.</p>\n<p>&nbsp;</p>\n<li><strong>Perubahan</strong></li>\n<p style="text-align: justify;">Ketentuan Pelayanan ini dapat diubah sewaktu-waktu oleh Ripiu Team tanpa pemberitahuan sebelumnya. Setiap bentuk modifikasi dan atau perubahan mulai dianggap berlaku pada saat Ripiu Team mempublikasikan Ketentuan Pelayanan yang baru. Pada saat terjadi perubahan, maka Ripiu Team akan memasang perubahan Ketentuan Pelayanan yang baru pada halaman ini dan memberikan pemberitahuan pada bagian atas halaman ini, bahwa Ketentuan Pelayanan ini baru saja diperbaharui. Apabila Anda melanjutkan menggunakan, mengakses, mengunduh, menjelajah, membuka, atau dengan cara apapun melakukan kontak dengan situs ini setelah membaca perubahan yang ada di dalam Ketentuan Pelayanan yang baru, maka Anda dianggap telah menerima dan menyakatan kesepakatan untuk mengikatkan diri dengan perubahan dan/atau penambahan yang ada di dalam Ketentuan Pelayanan. Kecuali dinyatakan sebaliknya oleh Ripiu Team, maka setiap layanan yang diimplementasikan di dalam Situs setelah akses perdana Anda pada Situs ini adalah sekaligus menyakatan Anda sebagai salah satu subjek dalam Ketentuan Pelayanan ini.</p>\n<p>&nbsp;</p>\n<li><strong>User Account</strong> <br /><br /> \n<ul>\n<li>BeeMaster</li>\n<p style="text-align: justify;">BeeMaster merupakan member yang telah mendaftar dan aktif melakukan  kontribusi dai ripiu.com. Ini adalah jenis member default yang diperoleh  ketika seseorang join dalam keanggotaan ripiu. Keanggotaan jenis ini  tidak dipungut bayaran apapun untuk bergabung.</p>\n<li>BeeContributor</li>\n<p style="text-align: justify;">BeeContributor merupakan keanggotaan  tingkat kedua dalam ripiu.com. Untuk merubah status keanggotaan anda  menjadi BeeContributor dapat ditemukan pada halaman dashboard masing -  masing anggota. Keuntungan yang didapatkan bagi keanggotaan jenis ini  adalah :</p>\n<p style="text-align: justify;">- Mendapatkan spot iklan di halaman  tampilan artikel yang ditulis, ukuran 300x100 pixel. Iklan dapat diatur  sendiri melalui halaman dashboard.</p>\n<p style="text-align: justify;">- Mendapatkan kesempatan dalam menulis  review exclusive dari partner kami, dimana setiap review exclusive yang  ditulis dan disutujui akan mendapatkan kredit royalti sesuai dengan  kesepakatan.</p>\n<li>BeeGuru</li>\n<p style="text-align: justify;">BeeGuru merupakan jenis keanggotaan khusus dalam ripiu.com. Keanggotaan  jenis ini hanya diberikan pada event tertentu ataupun melalui undangan  resmi dari ripiu.com. Fitur yang didapatkan dalam BeeGuru sama seperti  keanggotaan jenis BeeContributor, hanya saja BeeGuru dibebaskan dari  semua kewajiban untuk membayar keanggotan tersebut.</p>\n<li>BeeAdvertiser</li>\n<p>BeeAdvertiser merupakan keanggotaan khusus untuk advertiser (yang ingin memasang iklan di ripiu.com).<br /><br /></p>\n</ul>\n</li>\n<li><strong>Penggunaan Situs</strong></li>\n<p>&nbsp;</p>\n<li><strong>Pelarangan Penggunaan Situs</strong></li>\n<p>&nbsp;</p>\n<li><strong>Perizinan</strong></li>\n<p>&nbsp;</p>\n<li><strong>Kontribusi Artikel</strong></li>\n<p>&nbsp;</p>\n<li><strong>Pemanfaatan Artikel</strong></li>\n<p>&nbsp;</p>\n<li><strong>Batasan Pertanggungjawaban</strong></li>\n<p>&nbsp;</p>\n<li><strong>Pihak Ke-3</strong></li>\n<p>&nbsp;</p>\n<li><strong>Kontak</strong></li>\n<p>&nbsp;</p>\n<li><strong>Hak Cipta</strong></li>\n<p>&nbsp;</p>\n<li><strong>Lain - Lain</strong></li>\n<p>&nbsp;</p>\n</ol>');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('04197f8517c655fe07284c495c90c2ed84c0c346', '::1', 1470296160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303239353930323b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('55e1575e348a0f05534c9189febf938859154d32', '::1', 1470296591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303239363335353b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('2239dea1cd82a69ddb316e821ee6af4401a3b2df', '::1', 1470296832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303239363739313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('4593e1b6d9c51f9da50cb4fdec65b1a6805b2378', '::1', 1470297771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303239373730323b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('c2e4bea6d1f096a726cfa153795613864bed9924', '::1', 1470303207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303330333133333b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('dceb1a97fb6ca299c65f52c375e50ae1da2489d1', '::1', 1470304013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303330333738383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('67654d886c136e97d4cdcf92aaea1638a18eff56', '::1', 1470304384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303330343130373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('18103eb24ae5ffd7cb31c6b47c006c5b0ddf1a7a', '::1', 1470304703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303330343434383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('79a3214c8ce337f66162bda648b50dc70b9a02fd', '::1', 1470305036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303330343735363b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('493e9468ff2eaea8bb58c607ac532367c146330c', '::1', 1470305107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303330353130373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('f63a7f7c3000388d3a0d86c26142cba75823c940', '::1', 1470305932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303330353638373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `slide_show`
--

CREATE TABLE IF NOT EXISTS `slide_show` (
  `id_slide` int(25) NOT NULL AUTO_INCREMENT,
  `url_artikel` varchar(255) NOT NULL,
  `active` enum('active','disable') NOT NULL,
  `image_desc` tinytext,
  `judul` tinytext,
  `deskripsi` tinytext,
  `group` varchar(25) NOT NULL,
  PRIMARY KEY (`id_slide`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=188 ;

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE IF NOT EXISTS `trade` (
  `trade_id` int(11) NOT NULL AUTO_INCREMENT,
  `trader` varchar(50) NOT NULL,
  `peruntukan` varchar(250) NOT NULL,
  `poin` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `desc` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`trade_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `biodata` text NOT NULL,
  `jenis_member` int(20) NOT NULL DEFAULT '1',
  `status` enum('active','pending','disable') NOT NULL,
  `ip` varchar(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `newsletter` int(1) NOT NULL DEFAULT '1',
  `sent` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
