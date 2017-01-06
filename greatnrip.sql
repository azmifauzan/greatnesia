-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2017 at 05:03 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greatnrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `nama`, `email`, `last_login`) VALUES
(1, 'fauzan', '595d275ad04a4d9a526716390042c1d4', 'Fauzan', 'azmifauzan@gmail.com', '2016-08-04 07:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikel_id` int(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `kategori_id` int(20) NOT NULL,
  `isi` text NOT NULL,
  `tgl_dibuat` datetime NOT NULL,
  `creator` varchar(50) NOT NULL,
  `rating` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `view` int(50) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `status` varchar(1) DEFAULT NULL,
  `status_thumb` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikel_id`, `judul`, `url`, `kategori_id`, `isi`, `tgl_dibuat`, `creator`, `rating`, `image`, `view`, `tag`, `status`, `status_thumb`) VALUES
(1, 'Reaktor Biogas - Andrias Wiji Setio Pamudji', 'reaktor-biogas-andrias-wiji-setio-pamudji', 1, '<p>Apa itu Reaktor Biogas? Dalam kamus besar bahasa Indonesia reaktor diartikan sebagai sarana atau alat pembangkit tenaga. Sementara biogas adalah gas yang terbuat dari kotoran ternak. Penemunya punya nama lengkap Andrias Wiji Setio Pamudji. Seorang lelaki yang berasal dari desa Ngrendeng, Kecamatan Sine, Kabupaten Ngawi, Jawa Timur.</p>\r\n<p>Penemuan ini bermula dari rasa penasaran pria tersebut untuk membuktikan teori-teori yang pernah didengatnya di bangku sekolahan dengan cara melakukan percobaan. Memang sudah sedari kecil Andrias menyukai dunia riset-meriset. Dia pernah membuat listrik dan perahu motor mainan dengan tenaga penggerak kincir angin. Kincir angin ini dibuatnya dari pemutar kaset dalam tape. Pun ia juga hobi dalam bercocok tanam dan beternak. Dalam melakukan hal ini ia selalu tekun, sebab ketekunan merupakan kuncinya dan sudah menjadi prinsip Andrias yang diajarkan oleh ibunya.</p>', '2017-01-03 04:21:13', 'greaters', 0, 'greaters/39814982dea58f949b30acc75142daac.png', 0, '', '1', '1'),
(2, 'Indomie Masuk 10 Besar Merek Paling Banyak Dibeli di Dunia', 'indomie-masuk-10-besar-merek-paling-banyak-dibeli-di-dunia', 1, '<p>Siapa yang tidak suka mie instan merek Indomie? Bagi anak-anak rantau, makanan instan satu ini selalu jadi pemadam kelaparan termujur dan termurah. Dan kita semua tahu, merek mie instan nomor satu di Indonesia ini juga sudah amat terkenal di berbagai negara di dunia. Sebut saja Nigeria misalnya, yang sampai-sampai warganya mengira kalau Indomie adalah mie instan produksi negara mereka dan salah satu <em>rapper</em> mereka pun sampai membuat lagu tentang Indomie.</p>\r\n<p>Ada satu kabar membanggakan dari merek mie instan kebanggaan nusantara ini, pasalnya di tahun 2016 Indomie masuk di jajaran 10 besar merek paling banyak dibeli di dunia, tepatnya berada di peringkat delapan. Hal ini didasarkan pada hasil studi mutakhir salah satu lembaga riset Kantar Worldpanel yang beberapa waktu lalu merilis studi bertajuk Brand Footprint.</p>', '2017-01-04 04:47:48', 'greaters', 0, 'greaters/7fcf446727af67e5eec8c787ea98e61c.jpg', 0, '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `barang_poin`
--

CREATE TABLE `barang_poin` (
  `tid` int(11) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `poin` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_poin`
--

INSERT INTO `barang_poin` (`tid`, `barang`, `deskripsi`, `poin`, `stock`) VALUES
(1, 'Pulsa 10K', 'Pulsa All Operator senilai 10.000', 10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `word` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_cat` int(100) NOT NULL,
  `id_atk` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `author` varchar(20) NOT NULL,
  `author_type` char(1) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `isi` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `group` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `nama`, `keterangan`, `group`) VALUES
(1, 'Great Story', 'Great Story', 'Greatnesia'),
(2, 'Great Nature', 'Great Nature', 'Greatnesia'),
(3, 'Great Culture', 'Great Culture', 'Greatnesia');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id_newsletter` int(50) NOT NULL,
  `tgl_dikirim` date NOT NULL,
  `pengirim` int(50) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id_newsletter`, `tgl_dikirim`, `pengirim`, `cc`, `penerima`, `judul`, `isi`) VALUES
(11, '2011-01-06', 1, '', 'all', 'Tahun Baru, Fitur Baru, Aturan Baru (Update broken link untuk tata cara dan harga)', '<p>Mohon maaf ada kesalahan penulisan link pada email sebelumnya. Untuk penjelasan dan tata cara pemasangan iklan dapat <a href="http://www.ripiu.com/forum/viewtopic.php?f=4&t=4">dilihat disini</a>. Sedangkan untuk detil harga iklan ripiu yang baru dalam bentuk poin dapat <a href="http://www.ripiu.com/forum/viewtopic.php?f=4&t=5">dilihat disini</a>.</p>'),
(10, '2011-01-03', 1, '', 'all', 'Tahun Baru, Fitur Baru, Aturan Baru', '<p>Tidak terasa kita sudah memasuki tahun baru 2011. Diawal tahun baru ini, Kami ingin memperkenalkan beberapa fitur baru yang telah dipersiapkan sebelumnya. yaitu :</p>\n<p><strong>1. Forum Ripiu</strong></p>\n<p>Untuk menambah interaksi antar anggota ripiu, kami menyediakan sarana  forum untuk tempat saling bertukar pikiran dan saling berdiskusi. Forum  bersifat bebas selama masih berada dalam batas wajar dan dalam batas  norma yang berlaku.</p>\n<p>Dengan adanya forum ripiu ini, maka untuk setiap tulisan yang <strong>hanya</strong> melakukan pengutipan dari tulisan lain akan kami tolak untuk  ditayangkan di ripiu, namun akan kami sarankan untuk di posting di  Forum, sebagai tempat untuk mendiskusikan kutipan tersebut.</p>\n<p>Forum Ripiu dapat diakses melalui alamat : <a title="Forum Ripiu" href="forum">http://www.ripiu.com/forum</a> . Semua ripiu''ers yang telah memiliki account sebelumnya, dapat  langsung menggunakan fasilitas ini tanpa perlu melakukan pendaftaran  ulang di Forum. Cukup dengan login di halaman dashboard anda, secara  otomatis account anda akan diintegrasikan kedalam Forum.</p>\n<p><strong>2. Sistem Iklan yang Baru</strong></p>\n<p>Mulai tahun 2011, kami mengubah sistem untuk memasang iklan di Ripiu.   Jika sebelumnya harus mempunyai akun khusus advertiser, sekarang  setiap  ripiu''ers dapat memasang iklan di spot manapun yang terdapat di  ripiu  secara <strong>Gratis</strong> alias bebas biaya.</p>\n<p>Kami mengubah sistem iklan di ripiu dengan menggunakan poin. Jadi  dari  poin yang ripiu''ers dapatkan dengan cara menulis artikel, mengajak  teman  bergabung di ripiu, dan berkomentar di ripiu, dapat digunakan  untuk  memasang iklan di ripiu.</p>\n<p>Cukup dengan menulis artikel di ripiu sekaligus bisa berpromosi.  Kalau  masa tayang nya sudah habis, tinggal tulis artikel lagi, lalu  perpanjang  deh iklannya. Hitung2 berpromosi sambil berbagi ilmu melalui  tulisan.</p>\n<p>Untuk penjelasan dan tata cara pemasangan iklan dapat <a title="Tata Cara Pemasangan Iklan Ripiu" href="forum/viewtopic.php?f=4&t=4" target="_blank">dilihat disini</a>. Sedangkan untuk detil harga iklan ripiu yang baru dalam bentuk poin dapat <a title="Harga Iklan Ripiu" href="forum/viewtopic.php?f=4&t=5" target="_blank">dilihat disini</a>.</p>\n<p>Jika ada pertanyaan lebih lanjut mengenai sistem dan layanan baru ini  dapat ditanyakan lebih lanjut melalui email : support@ripiu.org . Atau  dapat juga dengan posting pertanyaan anda di Forum Ripiu.</p>\n<p>Salam Hormat.<br />Ripiu Team.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `nid` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`nid`, `waktu`, `judul`, `isi`, `url`, `username`, `status`) VALUES
(1, '2017-01-03 04:33:40', 'Artikel Anda Reaktor Biogas - Andrias Wiji Setio Pamudji telah disetujui', 'Artikel Anda yang berjudul Reaktor Biogas - Andrias Wiji Setio Pamudji telah selesai ditinjau oleh reviewer kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/reaktor-biogas-andrias-wiji-setio-pamudji', 'greaters', 1),
(2, '2017-01-04 04:48:16', 'Artikel Anda Indomie Masuk 10 Besar Merek Paling Banyak Dibeli di Dunia telah disetujui', 'Artikel Anda yang berjudul Indomie Masuk 10 Besar Merek Paling Banyak Dibeli di Dunia telah selesai ditinjau oleh reviewer kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/indomie-masuk-10-besar-merek-paling-banyak-dibeli-di-dunia', 'greaters', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penukaran`
--

CREATE TABLE `penukaran` (
  `pid` int(11) NOT NULL,
  `keterangan_penukaran` text NOT NULL,
  `waktu_penukaran` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `keterangan_konfirmasi` text NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penukaran`
--

INSERT INTO `penukaran` (`pid`, `keterangan_penukaran`, `waktu_penukaran`, `username`, `tid`, `status`, `keterangan_konfirmasi`, `waktu_konfirmasi`) VALUES
(2, '085220150587', '2016-12-28 14:48:05', 'fauzan', 1, 1, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `pid` int(11) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_kirim` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unread'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `qid` int(11) NOT NULL,
  `penulis` varchar(150) NOT NULL,
  `isi` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`qid`, `penulis`, `isi`, `image`) VALUES
(1, 'Cut Nyak Dien', 'Dalam menghadapi musuh, tak ada yang lebih mengena daripada senjata kasih sayang.', ''),
(2, 'Muhammad Hatta', 'Aku Rela di Penjara asalkan bersama buku, karena dengan buku aku bebas.', ''),
(3, 'Gus Dur', 'Membiarkan terjadinya korupsi besar-besaran dengan menyibukkan diri dengan ritus-ritus hanya akan berarti membiarkan berlangsungnya proses pemiskinan bangsa yang semakin melaju', ''),
(4, 'Sutan Syahrir', 'Dan hanya semangat kebangsaan yang dipikul oleh perasaan keadilan dan kemanusiaan yang dapat mengantar kita maju dalam sejarah dunia', ''),
(5, 'Muhammad Hatta', 'Pahlawan yang setia itu berkorban bukan buat dikenal namanya tetapi semata-mata membela cita-cita', ''),
(6, 'Bung Tomo', 'Kita tunjukkan bahwa kita adalah benar-benar orang yang ingin merdeka. Lebih baik kita hancur lebur daripada tidak merdeka', ''),
(7, 'R.A. Kartini', 'Cinta tidak pernah buta. Cinta baginya adalah memberi-memberikan segala-galanya dan berhenti apabila napas berhenti mengembus', '');

-- --------------------------------------------------------

--
-- Table structure for table `ripiu_desc`
--

CREATE TABLE `ripiu_desc` (
  `id_desc` int(10) NOT NULL,
  `nama_desc` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('a22936f163708070a59a96f4fecc76122bb8cc31', '::1', 1471072466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313037323239383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e7c623a313b),
('9af3c71d3c13710b09222b724cec7ec062c261fb', '::1', 1471078695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313037383538333b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('4a484feadc629133ae4d088129c8e2182dbe089e', '::1', 1471079139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313037393133393b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('ded2b92918bd3f4c7eb51860eb74d2f41bb3b509', '::1', 1471161732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313136313437383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('275b3635f7c00a27110ced032678075f01795243', '::1', 1471162194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313136323035383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('9f8643ba501ab3164a050e8fd0ca7269608ce245', '::1', 1471165810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313136353539343b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('95323ea3a57eca4ee712b83be2b4a6c68f1dd335', '::1', 1471166517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313136363531373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('698adf128f66a400c73c86681e8dbce666c4f650', '::1', 1471234512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313233343232393b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('fe2aac0b88deeac54ac01e290847e1704e8a14a0', '::1', 1471234601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313233343539363b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('6b01a05ff6d3c0ab4e8595eb9d91ca4eb848a1a7', '::1', 1471241329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313234313037383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('3dbcdfe4dcb24b65729ca41dc17fbdfe4ab8170f', '::1', 1471343186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313334323839313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('46a205aa9040ef7d41ddc0a921726f7f8ee6b7d9', '::1', 1471343362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313334333139333b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('d8b3199e76436035aa486992d18d9aa23eec322e', '::1', 1471343787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313334333531383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('6f6ec64c5b6c70839a6e3ad69b69e8a12486cf4e', '::1', 1471343946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313334333833313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b696e666f7c733a32313a22557064617465205265636f72642053756363657373223b5f5f63695f766172737c613a313a7b733a343a22696e666f223b733a333a226f6c64223b7d),
('29341df10fb829e0adf3ecc07766f067aebedc19', '::1', 1471406539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313430363532333b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('f948411ff446a3372ccd8e429abbade052e101bc', '::1', 1482933185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323933333138353b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('5759c5aca84abe8b626db61256636dae119b799b', '::1', 1482930606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323933303630363b757365726e616d657c733a363a226661757a616e223b69734c6f67696e7c623a313b696e666f7c733a37313a22546572696d61204b617369682c2050656e756b6172616e20506f696e20416e646120616b616e20736567657261206b616d69207665726966696b6173692067726561746572732e223b5f5f63695f766172737c613a313a7b733a343a22696e666f223b733a333a226f6c64223b7d),
('a73e8db8687a147426ad4de1d7730e68eea8fa2c', '::1', 1482932159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323933323135393b757365726e616d657c733a363a226661757a616e223b69734c6f67696e7c623a313b),
('53f4a8bc592abcafbe0bb2fc9904264f614dbdec', '::1', 1482932665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323933323636353b757365726e616d657c733a363a226661757a616e223b69734c6f67696e7c623a313b),
('b6a4ae49bc58fcb24a9ba0f58343acc5171aa651', '::1', 1482933097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323933333039373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e7c623a313b),
('87c85c8eaaa1a576164e62b8c9ea52f23e08dc17', '::1', 1482933138, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323933333039373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e7c623a313b),
('fbec164dc30ad610748678d4bae09da7aadc2282', '::1', 1482933190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323933333138353b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('5596adc1f346598a535ebfc3d1d8bb58089e1aa0', '::1', 1482985430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323938353433303b),
('52eaa13f8e7e40d1b582a98559ee04c4e40fffbb', '::1', 1482985557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438323938353433303b757365726e616d657c733a363a226661757a616e223b69734c6f67696e7c623a313b),
('8e6bd263b45ae161ca0f0937de089ed797045fb9', '::1', 1483002190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333030323139303b757365726e616d657c733a363a226661757a616e223b69734c6f67696e7c623a313b),
('7b775c392d1764df61d18e8ed5259f1aa897f572', '::1', 1483002512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333030323531323b),
('996245f347c85ef0df4f20944f66827c774c91d0', '::1', 1483002814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333030323831343b),
('4d9e2d1816bce1492003803e27a0932e55b4bffa', '::1', 1483003579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333030333537393b),
('0c48197e8d5d0743991393eeb8919151bc9d2b36', '::1', 1483003580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333030333537393b),
('83496960c326883031f773cb442effcdc8dfe4ec', '::1', 1483065292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333036353239323b),
('a33aeb334a3a0fdbfcf3d64749d83d279ce3a6f1', '::1', 1483070440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333037303434303b),
('deeb2004bc863b9846bf2e40facf00510eecdd5c', '::1', 1483070543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333037303434303b),
('4a980ca5b422be881de27faec7e306e959840afd', '::1', 1483412866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431323836363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('602eaf5c4c8fc1e6854e0d88b1f8a6c175fe7cdb', '::1', 1483413592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431333539323b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('4d9a77960f01a345418e55b1b8a2591d44c7a73a', '::1', 1483413695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431333639353b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('87ae25942745a4e70760d4366af5260b6d73b03f', '::1', 1483414145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431343134353b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('19ad2c3ca0d95d86ebbbeebe15f618010c56d04b', '::1', 1483414151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431343135313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('cec3922204e831d8b542ed9b13dbc41bd7344854', '::1', 1483415866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431353836363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('c55b6e9d71dffe90b316bae8c827a71431198a4e', '::1', 1483414481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431343438313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('64bd1b7b240f590413af281e638ed3c4302ab251', '::1', 1483415078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431353037383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('fae221cf1c1cea8d062e03a7b7614d1aac625466', '::1', 1483415436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431353433363b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('a793b1fe2d6e54ebf98810a9f23eebfc053403bb', '::1', 1483415476, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431353433363b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('5e62fc73b50fc06631b72e2468f51943b79fa69f', '::1', 1483416192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431363139323b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('64e58fa77ec0d862281eea6e938ab067f05321c4', '::1', 1483416806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431363830363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('a8fb57fa0987cf26ae9e5665f5d9863a6790c685', '::1', 1483416806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333431363830363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('7142da9288ac1d6c5daabc25068183b096f080dc', '::1', 1483500953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333530303935333b),
('8932c420e1db6fb33c5fa32e12ce0cbccb434c65', '::1', 1483501521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333530313532313b),
('8729288711b25146a7c8337104d2196739e572b6', '::1', 1483502028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333530323032383b),
('0f58b8e4ab9385b0ec5bf229a628fe9b84e0917e', '::1', 1483502335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333530323333353b),
('ee0d53b5a0499fd066f98e2932b6282efe79f4e4', '::1', 1483503006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333530333030363b),
('72d291c10d409fa9570c23f78f238b2fdf8bb8a3', '::1', 1483503337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333530333333373b),
('cd8b588d869ca620d20a2c76fe551b729f0beed0', '::1', 1483503719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333530333731393b),
('b9692e6e814f22316c7867383ec8c6967415b703', '::1', 1483503769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333530333731393b),
('5249f6793bbfbc092fc8d704987fd11b22afb7c3', '::1', 1483585030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333538353033303b),
('c8acfc71e3bb08c8814be683a73c10b02e9335a9', '::1', 1483585445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333538353434353b),
('59e107362800a3e88472ba601052e319c3ea75a5', '::1', 1483586094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333538363039343b),
('76997f140465a96bbacfe54eca894e134e3f32ef', '::1', 1483586906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333538363930363b),
('b0b0483504e4801711419b3d037080940582b67d', '::1', 1483586923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333538363930363b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('1fbbd9dadd7dee96a8288001eb19eee5cda04bda', '::1', 1483609378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333630393337383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('fc45d86bcb0bf4303d45dbd72fe2a749701f69f6', '::1', 1483610443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333631303434333b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('1eeae2a68d54e65b568c7ebb8abc973bafe60fa4', '::1', 1483610583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333631303434333b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('f498927b6a72cc73459711da0ac6d0d27895d46c', '::1', 1483667468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333636373436383b),
('53397537e3365318d81a6ee0346f40a5caa39a0f', '::1', 1483667827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333636373832373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('b3ca8ae7190e0c3a988a0c2e3a123e864b3b640d', '::1', 1483668152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333636383135323b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('a146174f7c6a48c855234ad871dbaaf0b5f08705', '::1', 1483668464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333636383436343b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('a57cdb769a694134a9a31aaafd610d6bed3dab35', '::1', 1483670077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333637303037373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('7de86c9ab8f149b1820c8525b29e6b79cee599f7', '::1', 1483670519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333637303531393b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('46ba0906ca657a9d8f8cb7fd567e465ce21dc935', '::1', 1483670839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333637303833393b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('9460685f66484f3477fc4a1ad79d2c6f86f72192', '::1', 1483671254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333637313235343b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('e90940b046d2a04aef864585da4daa0a932b3805', '::1', 1483671607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333637313630373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('12ed43e7384545461616f3cd43825d90c68ba901', '::1', 1483671607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333637313630373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `slide_show`
--

CREATE TABLE `slide_show` (
  `id_slide` int(25) NOT NULL,
  `url_artikel` varchar(255) NOT NULL,
  `active` enum('active','disable') NOT NULL,
  `image_desc` tinytext,
  `judul` tinytext,
  `deskripsi` tinytext,
  `group` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `trade_id` int(11) NOT NULL,
  `trader` varchar(50) NOT NULL,
  `peruntukan` varchar(250) NOT NULL,
  `poin` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `desc` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
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
  `notifikasi` int(1) NOT NULL DEFAULT '1',
  `sent` int(1) NOT NULL DEFAULT '0',
  `poin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `tgl_daftar`, `nama`, `website`, `biodata`, `jenis_member`, `status`, `ip`, `avatar`, `notifikasi`, `sent`, `poin`) VALUES
('fauzan', '595d275ad04a4d9a526716390042c1d4', 'azmifauzan@gmail.com', '2016-08-11', 'Fauzan', '', '', 1, '', '', NULL, 1, 0, 40),
('greaters', '26d55f2b896a8e3263ed67ebde6722dc', 'greatnesia@gmail.com', '2017-01-03', 'Greaters', 'http://www.greatnesia.com', '', 1, '', '', NULL, 1, 0, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikel_id`);

--
-- Indexes for table `barang_poin`
--
ALTER TABLE `barang_poin`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id_newsletter`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `penukaran`
--
ALTER TABLE `penukaran`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `ripiu_desc`
--
ALTER TABLE `ripiu_desc`
  ADD PRIMARY KEY (`id_desc`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `slide_show`
--
ALTER TABLE `slide_show`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`trade_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikel_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `barang_poin`
--
ALTER TABLE `barang_poin`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19443;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_cat` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1495;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id_newsletter` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `penukaran`
--
ALTER TABLE `penukaran`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ripiu_desc`
--
ALTER TABLE `ripiu_desc`
  MODIFY `id_desc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `slide_show`
--
ALTER TABLE `slide_show`
  MODIFY `id_slide` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `trade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
