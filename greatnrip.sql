-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2017 at 04:26 AM
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
(1, 'Penemu Reaktor Biogas - Andrias Wiji Setio Pamudji', 'penemu-reaktor-biogas-andrias-wiji-setio-pamudji-2', 1, '<p>Apa itu Reaktor Biogas? Dalam kamus besar bahasa Indonesia reaktor diartikan sebagai sarana atau alat pembangkit tenaga. Sementara biogas adalah gas yang terbuat dari kotoran ternak. Penemunya punya nama lengkap Andrias Wiji Setio Pamudji. Seorang lelaki yang berasal dari desa Ngrendeng, Kecamatan Sine, Kabupaten Ngawi, Jawa Timur.</p>\r\n<p>Penemuan ini bermula dari rasa penasaran pria tersebut untuk membuktikan teori-teori yang pernah didengatnya di bangku sekolahan dengan cara melakukan percobaan. Memang sudah sedari kecil Andrias menyukai dunia riset-meriset. Dia pernah membuat listrik dan perahu motor mainan dengan tenaga penggerak kincir angin. Kincir angin ini dibuatnya dari pemutar kaset dalam tape. Pun ia juga hobi dalam bercocok tanam dan beternak. Dalam melakukan hal ini ia selalu tekun, sebab ketekunan merupakan kuncinya dan sudah menjadi prinsip Andrias yang diajarkan oleh ibunya.</p>\r\n<p>Cerita tentang reaktor biogas temuannya bermula kala ia masih kuliah ditingkat III Jurusan Teknik Kimia ITB Bandung tahun 2000-an. Waktu itu ia meriset pembikinan reaktor biogas yang sederhana. Dari yang sederhana inilah muncul sesuatu yang hebat. Andrias mengetahui bahwa kotoran ternak bisa dijadikan gas. Dengan hasil tersebut keingintahuannay semakin menggebu.</p>\r\n<p>Untuk mendapatkan kotoran ternak, ia pergi ke sebuah peternakan. Sepulangnya dari sana ia membawa kotoran ternak sapi yang sudah dicampuri air dan dimasukkan kedalam jerigen berukuran lima liter. Waktu itu ia langsung meletakkannya begitu saja di kos-kosaan dengan keadaan tertutup. Sebulan setelah itu, tutup jerigen dibuka. Kotoran sapi yang telah terfermentasi segera mengeluarkan gas.</p>\r\n<p>Demi menyempurnakan karyanya, ia pun mengutang ke sana - sini. Berkali - kali riset dilakukan guna mendapatkan reaktor dan penampung gas yang murah, kuat dan berkapasitas cukup apabila digunakan untuk keperluan rumah tangga. Semenjak ditekuni (tahun 2000-an), temuan Andrias baru dipasarkan tiga tahun kemudian, yaitu pada april 2005. Setahun sebelumnya, Andrias berhasil memenagkan lomba kreativitas mahasiswa berkat penemuan ini.</p>\r\n<p>sumber: 30 tokoh penemu indonesia, Lilih Prilian Ari Pranowo</p>\r\n<p>&nbsp;</p>', '2017-01-03 04:21:13', 'greaters', 0, 'greaters/39814982dea58f949b30acc75142daac.png', 0, '', '1', '1'),
(2, 'Singkong Raksasa - Abdul Jamil Ridho dan Niti Soedigdo', 'singkong-raksasa-abdul-jamil-ridho-dan-niti-soedigdo-2', 1, '<p>Bagi masyarakat Indonesia, singkong merupakan bahan pokok yang sudah tidak asing lagi. Pelbagai macam makanan bisa dibuat dari bahan dasar ini. Mulai dari getuk, tape, combro, misro dan masih banyak makanan lainnya. Umumnya singkong mempunyai ukuran normal sepanjang 40 hingga 50 cm. Namun, singkong yang ditemukan dan dikembangkan oleh Abdul Jamil Ridho dan Niti Soedigdo memang lain daripada yang lain. Sebab singkong temuannya lebih besar dan lebih panjang dari singkong normal.</p>\r\n<p>Tahun 1996-an, Abdul Jamil Ridho, pengelola pondok pesantren Darul Hidayah dikota Tulang Bawang, tengah melakukan zikir dan perenungan. Kala sedang khusuk, tanpa sengaja dia melihat kesebatang tanaman. Selanjutnya ia mendekati tanaman tersebut. Sekilas tanaman tersebut mirip dengan singkong yang biasa ia tanam. Dipenuhi rasa penasaran ia mencabut batang singkong tersebut, ternyata akar singkong tersebut berdiameter lebih kecil tetapi panjangnya mencapai satu meter bahkan lebih per batang jalar dalam rangkaian umbi.</p>\r\n<p>Pengembang sekaligus perekayasa singkong "ajaib" ini diserahkan kepada Niti Soedigdo, orang kepercayaan Ridho. Caranya dengan mengwinkan tanaman tersebut dengan singkong karet untuk memperoleh pembesaran pada diameter akarnya. Singkong karet adalah singkong yang tidak bisa dimakan karena mengandung racun. Hasil persilangan pertama dan kedua dari kedua singkong tersebut belum mencapai bentuk maksimal. Pada persilangan ketiga kalinya barulah didapatkan hasil dan bentuk yang maksimal. Pengembangan demi pengembangan pun terus dilakukan oleh Niti.</p>\r\n<p>sumber: 30 tokoh penemu indonesia, Lilih Prilian Ari Pranowo</p>', '2017-01-09 05:35:03', 'greaters', 0, 'greaters/50225597ac43f04af22d1e15c546573b.jpg', 0, '', '1', '1'),
(3, 'Kapal Ikan Bersirip', 'kapal-ikan-bersirip-2', 1, '<p>Inspirasi bisa ditemukan dimana saja. Misalnya waktu sedang berjalan-jalan ditaman, atau ketika sedang memancing disungai, atau pada saat sedang berkegiatan pun ada kalanya inspirasi tersebut datang dan melintas dipikiran kita. Termasuk tokoh kita ini, Kawilarang, penemu teknologi kapan ikan bersirip. Nama lengkapnya Alex Kawilarang Warouw Masengi. Ia lahir pada 13 Juni 1958, di desa Kinilou, Tomohon, Sulawesi Utara. Pendidikan formalnya dikenyam di Sekolah Dasar Desa Kinilou (lulus tahun 1971), Sekolah Teknik Pertama (lulus 1974), Sekolah Usaha Perikanan Menengah di Manado (lulus 1977), Fakultas Perikanan Unsrat (lulus 1984), Program Master di Faculty of Fisheries Nagasaki University pada tahun 1990, Doktor dari The Graduate School of Marine Science and Engineering Nagasaki University, Jepang, tahun 1993.</p>\r\n<p>Pada 1989, ia menemukan teknologi kapal ikan bersirip yang telah dipatenkan di Jepang. Penemuan ini memungkinkan kapal ikan tidak mudah goyah saat diterjang gelombang besar, dan stabilitas kapal bisa tercapai. Stabilitas kapal adalah kemampuan kapal untuk kembali dalam posisinya semula setelah mengalami guncangan. Kecermatan Alex dalam mengamati ikan terbang antonilah yang mngilhaminya. Mulai dari bentuk tubuh yang montok, sirip, kepala, hingga pergelangan ekornya. Ia heran melihat ikan itu mampu melayang-layang di atas permukaan air laut. Tubuhnya terangkat lewat pergerakan sirip yang relatif panjang dan dorongan pergerakan tubuhnya sendiri.</p>\r\n<p>Ikan ini bisa terbang tinggi bagaikan pesawat udara sedang melayang-layang rendah di atas permukaan laut. Bentuk tubuh dan sifat-sifat khas ikan antoni inilah yang diterapkan menjadi desain badan kapal ikan. Hasilnya tingkat kestabilan kapal ikan relatif menjadi lebih tinggi dibandingkan jenis kapal ikan yang lain. Dari inspirasi ini, Alex melakukan sejumlah pengkajian melalui rangkaian ujicoba. Alex melakukan pengkajian dibeberapa perairan baik nasional maupun internasional. Tak hanya uji lapangan, uji laboratorium pun dilakukan dibeberapa laboratorium ternama. Hasil pengujian stabilitas terhadap kapal ikan tipe sabani dari okinawa menggunakan sirip, dalam kondisi statis naik 17%. Ketika kapal berada dalam kondisi dinamis atau sedang bergerak, tingkat stabilitasnya malah semakin naik yaitu 22%.</p>\r\n<p>Berkat keberhasilan ini, di medio 2005-an, membuat perusahaan galangan kapal di Jepang tertarik untuk memproduksi masal kapal ikan bersirip dengan teknologi yang ditemukan Alex.</p>\r\n<p>sumber: 30 tokoh penemu indonesia, Lilih Prilian Ari Pranowo</p>', '2017-01-10 04:56:16', 'greaters', 0, 'greaters/1c83d86db25401bab44c589f7380aba0.jpg', 0, '', '1', '1'),
(4, 'Pemacu Produktivitas Kualitas Udang dan Ikan', 'pemacu-produktivitas-kualitas-udang-dan-ikan-2', 1, '<p>Meski lelaki ini ahli dibidang kimia, tetapi ia enggan menggunakan produk-produk berbahan kimia buatan, khususnya obat-obatan pemicu produktivitas dan kualitas ternak. Sebab obat-obatan yang banyak tersebar dipasaran tersebut tidak baik untuk kesehatan dan memiliki dampak yang buruk untuk keseimbangan lingkungan. Melihat kenyataan tersebut, Arief Mulyana Djurma melakukan sebuah inovasi, dengan menciptakan Mikrobial Plus.<br /><br />Mikrobial adalah teknologi berkonsep pengayaan nutrisi yang manfaat utamanya untuk meningkatkan produktivitas dan kualitas tambak. Aktivator ini merupakan hasil penelitian bioteknologi terapan yang memadukan konsep effective microorganism technology dari Jepang dan pengayaan nutrisi. Adapun mikroba yang digunakan dipilih dari spesies unggul jasad renik tanpa campuran bahan kimia buatan dan rekayasa genetika. Hal tersebut dipilih guna menjadikannya aman 100% terhadap lingkungan.<br /><br />Lokasi lahan percontohan penggunaan mikroba ini dibuat di daerah Dipasena (Lampung), Demak (Jawa Tengah), dan Karawang (Jawa Barat). Terbukti dari uji coba tersebut didapatkan hasil yang cukup mengembirakan. Sebagai contah, hasil yang didapatkan dari tambak yang dijadikan uji coba di daerah Karawang, dalam tempo 65 hari, udang telah mencapai ukuran 30. Padahal rata-rata tambak biasa untuk mencapai ukuran tersebut membutuhkan waktu 90 hari.<br /><br />Selain itu, mikrobial plus ini mempunyai manfaat lain. Yaitu untuk menyembuhkan penyakit stres pada udang, baik yang baru menggejala maupub yang sudah terkena penyakit. Salah satu kunci keberhasilan produk yang diciptakan oleh Arief Mulyana ini adalah dengan menerapkan sistem keseimbangan lingkungan, tanpa sedikitpun membuat kerusakan dikemudian hari.</p>\r\n<p>sumber: 30 tokoh penemu indonesia, Lilih Prilian Ari Pranowo</p>', '2017-01-10 10:13:03', 'greaters', 0, 'greaters/32b9bc1383f963958d77152b02c17c0f.jpg', 0, '', '1', '1'),
(5, 'Batagor Jajanan Khas Bandung', 'batagor-jajanan-khas-bandung-2', 3, '<p>Bagi anda yang tinggal di Jawa Barat atau di Kota Bandung, <strong><em>jajanan khas</em></strong> satu ini mungkin sudah tidak asing lagi di telinga anda. Tidak hanya kota asalnya saja, jajanan khas satu ini juga sangat terkenal di Indonesia. Namanya adalah <strong><em>Batagor</em></strong>.</p>\r\n<p>Batagor adalah salah satu jajanan khas yang berasal dari Kota Bandung, Jawa Barat. Nama Batagor sendiri diambil dari singkatan &ldquo;bakso tahu goreng&rdquo;. jajanan satu ini tidak hanya bisa kita jumpai di Kota Bandung saja, namun juga telah menyebar ke berbagai tempat di Indonesia.</p>\r\n<p>Batagor ini berbahan dasar dari daging ikan tengiri, telur, kulit pangsit dan tepung sagu. Untuk bumbu yang di gunakan diantaranya merica, garam, gula pasir, dan bawang putih. Dalam proses pembuatannya, pertama bawang putih, kecap manis, merica, garam dan gula pasir di tumis. Kemudian bumbu tumis tersebut di campur rata dengan ikan tengiri yang sudah di haluskan. Setelah itu masukan telur, sedikit minyak, santan secukupnya, dan tepung sagu. Adonan tersebut di campur sampai rata dan di bungkus dengan kulit pangsit. Terakhir, Batagor yang sudah di bungkus dengan pangsit tersebut di goreng dengan api sedang sampai warnanya kuning kecoklatan dan siap untuk disajikan.</p>\r\n<p>Batagor di sajikan bersama dengan bumbu kacang. Untuk membuat bumbu kacang tersebut bahan yang di butuhkan diantaranya kacang yang di haluskan, cabai, bawang putih, gula, garam, kecap, dan jeruk nipis. Pada proses pembuatannya, pertama bawang putih dan cabai di tumis hingga harum. Kemudian tumisan di atas di haluskan dan di tambahkan garam, gula, kacang halus, dan air secukupnya kemudian di haluskan sampai tingkat kekentalan yang di inginkan.</p>\r\n<p>Untuk penyajiannya, Batagor di siram dengan saus bumbu kacang tesebut. Untuk menambah rasa dari Batagor bisa di tambahkan perasan jeruk limau, jeruk nipis atau bisa juga menggunakan cuka. Selain itu bisa di tambahkan saus pedas, kecap&nbsp; manis atau sambal. Rasa pedas,&nbsp; asam, manis, dan gurih yang di padukan dengan rasa ikan tengiri&nbsp; tersebut membuat cita rasa Batagor ini semakin kaya akan rasa. Selain itu di tambah dengan kenyal dan kriuk Batagor membuat sensasi yang khas dari jajanan khas satu ini.</p>\r\n<p>Jajanan Batagor ini sangat di gemari. Karena selain rasanya yang lezat dan khas, harga dari Batagor ini sangat merakyat dan dapat di jangkau oleh semua kalangan.&nbsp; Dalam perkembangannya Jajanan Batagor ini tidak hanya di jual dengan cara berkeliling atau warung di pinggir jalan saja. Namun jajanan satu ini juga banyak di jual di tempat nongkrong anak muda, caf&eacute; bahkan di Restaurant terkenal sekalipun. Jajanan satu ini tidak hanya kita jumpai di Kota Bandung saja, namun di berbagai tempat di Indonesia juga bisa kita temukan jajanan khas satu ini.</p>\r\n<p>sumber: negerikuindonesia.com</p>', '2017-01-11 03:45:17', 'frozen', 0, 'frozen/86c80a933f49ec1ee9fb7350817d421c.jpg', 0, '', '1', '1'),
(6, 'Klip Bantalan Kereta Api dengan dua gigi', 'klip-bantalan-kereta-api-dengan-dua-gigi-2', 1, '<p>George Stephenson adalah bapak kereta api dunia yang berhasil menciptakan mesin uap baru bernama Locomotion pada tahun 1821. Sementara Stevens adalah penemu bantalan pada rel kereta api pada tahun 1831. Dua nama orang eropa tersebut memang sudah terkenal diseantero jagat manusia. Nama mereka pun masih dikenang sebagai penemu dibidang transportasi, khususnya kereta api. Tetapi jika menyebut nama Budi Noviantoro, tentu orang akan bertanya-tanya. Padahal, ia adalah penemu klip bantalan kereta api dengan dua gigi pada tahun 1993.</p>\r\n<p>Adalah Budi Noviantoro, seorang lelaki yang lahir di Bojonegoro, Jawa Timur 17 November 1960. Pendidikan formalnya ditamatkan di dua universitas, teknik sipil ITS (Institut Teknologi Surabaya) dan ekonomi UIN (Universitas Islam Negeri) Bandung. Sebelum ditemukan KA klip, rel kereta api di Indonesia memakai penambat khusus. Klip bantalan kereta api dengan dua gigi yang ditemukan oleh Budi bernama KA Klip. KA klio yang hasil inovasi ini lebih sesuai dengan karakteristik kereta api di Indonesia.</p>\r\n<p>Jika memakai KA Klip yang sudah diuji ini, PT KAI tidak perlu repot-repot untuk mengimpor. Klip rel kereta api temuan Budi ini juga dapat digunakan di rel berukuran berapa pun. Meski Budi Noviantoro telah menemukan KA Klip, ia tak mematenkan temuannya. Sebab penambat rel itu kemudian dipatenkan PJKA. Alasannya, sedari awal, ia memang menyerahkan temuannya tersebut langsung ke PJKA untuk dimanfaatkan. Selain itu, ia juga meresa tidak bekerja sendiri dalam menemukan penambat tersebut. Ada PT. Pindad yang turut memfasilitasinya untuk mengolah penelitian, pengembangan, dan memproduksi. Tetapi apapun itu, namanya patut kita catatkan pada sejarah penemu Indonesia</p>\r\n<p>sumber: 30 tokoh penemu indonesia, Lilih Prilian Ari Pranowo</p>\r\n<p>&nbsp;</p>', '2017-01-11 05:13:47', 'greaters', 0, 'greaters/e04f3ff643bdd9cd766f432056f16b52.jpg', 0, '', '1', '1'),
(7, 'Air Mancur Terbesar di Asia Tenggara Ada di Purwakarta', 'air-mancur-terbesar-di-asia-tenggara-ada-di-purwakarta-2', 2, '<p>Indonesia kini memiliki air mancur terbesar se-Asia Tenggara, letaknya di Taman Air Sri Baduga, Kabupaten Purwakarta, Jawa Barat. Air mancur yang sekaligus merupakan salah satu ikon pariwisata Indonesia ini diresmikan pada 6 Januari 2017 oleh Menteri Pariwisata, Arief Yahya, bersama-sama dengan Bupati Purwakarta, Dedi Mulaydi.<br /><br />Dengan diresmikannya air mancur ini, Bupati Purwakarta, Dedi Mulyadi, ingin membuktikan bahwa Taman Air Sri Baduga tidak kalah cantik dibandingkan dengan Wings of Time yang dimiliki oleh Singapura.<br /><br />Megahnya Taman Air Sri Baduga ditandai dengan ribuan air mancur yang mengelilingi patung Prabu Kian Santang, Putra Prabu Siliwangi, juga dikenal sebagai Sri Baduga, maharaja paling terkenal yang pernah memerintah Kerajaan Padjajaran kuno. Di sini, Prabu Kian Santang digambarkan duduk bersila di atas bunga lotus raksasa. Air mancur di sekelilingnya tentu sangat indah dilengkapi dengan cahaya berbagai warna.Terlebih, air mancur ini dibangun di tengah danau yang sangat ikonik di Purwakarta yaitu Danau Ditu Buleud.<br /><br />Air mancur ini merupakan bagian dari pengembangan daerah wisata Situ Buleud yang konstruksinya dimulai sejak 2013. Tahap pertama peresmiannya dimulai pada 2014, diikuti tahap kedua pada 2015. Dalam jangka panjang, akan ada 9 tahap pembangunan dan setiap tahapnya fokus pada fitur-fitur unik serta berbeda dioperasikan oleh teknologi paling modern.<br /><br />Pengunjung bisa menikmati atraksi air terjun pada hari Sabtu dan Minggu mulai 19.30-22.00. Atraksi diadakan tiga kali pada rentang waktu tersebut, dengan durasi 25 menit pada setiap atraksi. Tidak dipungut biaya sama sekali untuk menikmatinya.<br /><br />Untuk menuju Taman Air Sri Baduga, dibutuhkan waktu 2 jam dari Jakarta melalui jalan tol. Kabupaten Purwakarta sendiri kini tengah berkembang menjadi salah satu tujuan wisata. Alamnya yang bagus didukung oleh budaya Sunda yang masih sangat kental.</p>\r\n<p>sumber: indonesia.travel</p>', '2017-01-12 03:33:56', 'frozen', 0, 'frozen/e10c1d7536cda2180f0310d8643f04b7.jpg', 0, '', '1', '1'),
(8, 'Pesawat CN-235 Produksi PT DI pesanan Senegal Tiba di Dakar', 'pesawat-cn-235-produksi-pt-di-pesanan-senegal-tiba-di-dakar-2', 1, '<p>Setelah menempuh perjalanan panjang selama 11 (sebelas) hari dengan jarak lebih dari 16.000 km, tepat pukul 14.15 waktu setempat, tanggal 6 Januari 2017, pesawat CN-235 220M Multi Purpose produksi P.T Dirgantara Indonesia (PT. DI) akhirnya tiba di Pusat Angkatan Udara Senegal di Dakar. Pesawat kedua pesanan Pemerintah Senegal ini telah lama dinanti sejak Oktober 2016, pesawat tiba bersama 15 crew WNI yang terdiri dari 4 (empat) pilot, dimana salah satunya adalah WN Senegal, 1 (satu) flight test engineer dan 10 (sepuluh) mechanic.<br /><br />Kapten Esther Gayatri Saleh tersebut disambut oleh Dubes RI Dakar Mansyur Pangeran beserta Staf; Jenderal Birame Diop, Chief of Senegalese Air Force / KSAU Senegal beserta jajaranya; Mr. Pierre Baudechon, Regional Manager AD Trade Belgium bersama jajarannya; dan perwakilan dari PT. DI serta Indonesian Military Airworthiness Authority (IMAA) yang sehari sebelumnya telah tiba di Dakar.<br /><br />KSAU Senegal Jenderal Birame Diop sangat senang dengan datangnya pesawat CN-235 tersebut yang telah lama ditunggu untuk memperkuat armada angkatan udaranya. KSAU Senegal juga menyampaikan kesan baiknya selama kunjungannya ke Indonesia dalam rangka menghadiri serah terima pesawat dari PT. DI kepada AD Trade Belgium, dan pelepasan ferry flight CN-235 dari Bandung tanggal 27 Desember 2016. Dalam kesempatan tersebut, KSAU Senegal juga berkesempatan bertemu dengan KSAU RI atas fasilitasi KBRI Dakar. &nbsp;<br /><br />Dubes Mansyur Pangeran mengatakan kedatangan pesawat CN-235 di Dakar merupakan kebanggaan Indonesia untuk menunjukkan kepada dunia bahwa hasil karya anak bangsa Indonesia mampu bersaing di bidang teknologi kedirgantaraan dengan negara-negara maju lainnya.<br /><br />Dubes Mansyur menegaskan dengan kedatangan CN-235 tersebut dapat dijadikan contoh soal dalam mempromosikan produk PT. DI tersebut ke 7 (tujuh) negara-negara rangkapan KBRI Dakar lainnya yaitu Gambia, Guinea, Guinea Bissau, Mali, Pantai Gading, Sierra Leone dan Cabo Verde. Rencananya Senegal akan membeli 1 (satu) lagi pesawat CN-235 yang akan digunakan untuk kepentingan armada Angkatan Lautnya yang direncanakan sesuai jadwal akan tiba di Dakar tahun 2018.<br /><br />Selain itu, Dubes Mansyur juga menyatakan diantara negara rangkapan yang telah menyatakan keinginannya membeli pesawat CN-235 produksi PT. DI yang sama adalah Republik Guinea sebagaimana yang telah disampaikan langsung oleh Presiden Alpha Conde kepada Presiden Joko Widodo ketika berkunjung ke Indonesia bulan Agustus 2016 lalu.<br /><br />Informasi kedatangan pesawat CN-235 tersebut telah disampaikan langsung oleh Dubes Mansyur Pangeran kepada Presiden Senegal, Macky Sall pada sore hari-nya, pada saat Dubes menghadiri Resepsi Tahun Baru 2017 di Istana Kepresidenan di Dakar. Presiden sangat senang dan menyampaikan terima kasih atas hubungan kerjasama yang telah terjalin dengan baik selama ini dan meminta untuk ditingkatkan di masa-masa mendatang.<br /><br />Pesawat yang diterbangkan dari Bandara Husein Sastranegara Bandung, tanggal 27 Desember 2016, dalam perjalanannya ke Dakar, Senegal mengambil rute ferry flight : Medan, Colombo (Sri Lanka), Maladewa, Karachi (Pakistan), Riyadh (Arab Saudi), Khartoum (Sudan), Ndjamena (Chad), Ouagadougou (Burkina Faso), dan Dakar.<br /><br />Selama berada di Dakar, Tim PT. DI dan IMAA akan melakukan proses administrasi meliputi customer acceptance dan de-registrasi dari register Indonesia (AX) menjadi register Angkatan Udara Senegal pada tanggal 9 Januari 2017. Sesuai kesepakatan KSAU Senegal dengan PT. DI, untuk maintenance pesawat tersebut, satu orang mechanic PT. DI akan tinggal di Dakar selama satu tahun selama masa garansi. Selama berada di Dakar, seluruh delegasi PT. DI dan IMAA difasilitasi oleh AD Trade Belgium.<br /><br />Dengan tibanya pesawat CN-235 tersebut, Senegal kini memiliki 2 (dua) pesawat CN-235 buatan PT. DI, dimana pesawat pertamanya yang tiba tahun 2011 digunakan untuk kepentingan militer VIP dan pesawat kedua ini untuk multi fungsi, yaitu troop transport, medivac dan VIP.<br /><br />Upacara resmi serah terima pesawat CN-235 tersebut dari AD Trade Belgium kepada Pemerintah Senegal dijadwalkan pada tanggal 23 Januari 2017. Kegiatan tersebut akan dihadiri oleh Direktur Utama dan Direktur Niaga &amp; Restrukturisasi PT. DI serta para KSAU dari negara-negara di wilayah Afrika Barat.</p>\r\n<p>sumber: kemlu.go.id</p>', '2017-01-12 03:38:23', 'frozen', 0, 'frozen/1569f4e295a4a4a6d742b95239738420.jpg', 0, '', '1', '1');

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
(2, '2017-01-09 09:05:01', 'Artikel Anda Singkong Raksasa - Abdul Jamil Ridho dan Niti Soedigdo telah disetujui', 'Artikel Anda yang berjudul Singkong Raksasa - Abdul Jamil Ridho dan Niti Soedigdo telah selesai ditinjau oleh reviewer kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/singkong-raksasa-abdul-jamil-ridho-dan-niti-soedigdo-2', 'greaters', 1),
(3, '2017-01-10 04:57:17', 'Artikel Anda Kapal Ikan Bersirip telah disetujui', 'Artikel Anda yang berjudul Kapal Ikan Bersirip telah selesai ditinjau oleh reviewer kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/kapal-ikan-bersirip-2', 'greaters', 1),
(4, '2017-01-10 10:13:28', 'Artikel Anda Pemacu Produktivitas Kualitas Udang dan Ikan telah disetujui', 'Artikel Anda yang berjudul Pemacu Produktivitas Kualitas Udang dan Ikan telah selesai ditinjau oleh reviewer kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/pemacu-produktivitas-kualitas-udang-dan-ikan', 'greaters', 1),
(5, '2017-01-11 04:43:26', 'Artikel Anda Batagor Jajanan Khas Bandung telah disetujui', 'Artikel Anda yang berjudul: Batagor Jajanan Khas Bandung telah selesai ditinjau oleh moderator kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/batagor-jajanan-khas-bandung', 'frozen', 1),
(6, '2017-01-11 05:14:37', 'Artikel Anda Klip Bantalan Kereta Api dengan dua gigi telah disetujui', 'Artikel Anda yang berjudul: Klip Bantalan Kereta Api dengan dua gigi telah selesai ditinjau oleh moderator kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/klip-bantalan-kereta-api-dengan-dua-gigi', 'greaters', 1),
(7, '2017-01-12 03:38:50', 'Artikel Anda Pesawat CN-235 Produksi PT DI pesanan Senegal Tiba di Dakar telah disetujui', 'Artikel Anda yang berjudul: Pesawat CN-235 Produksi PT DI pesanan Senegal Tiba di Dakar telah selesai ditinjau oleh moderator kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/pesawat-cn-235-produksi-pt-di-pesanan-senegal-tiba-di-dakar', 'frozen', 1),
(8, '2017-01-12 03:38:55', 'Artikel Anda Air Mancur Terbesar di Asia Tenggara Ada di Purwakarta telah disetujui', 'Artikel Anda yang berjudul: Air Mancur Terbesar di Asia Tenggara Ada di Purwakarta telah selesai ditinjau oleh moderator kami dan layak untuk diterbitkan di Greatnesia.com', 'http://www.greatnesia.com/artikel/baca/air-mancur-terbesar-di-asia-tenggara-ada-di-purwakarta', 'frozen', 1);

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
('12ed43e7384545461616f3cd43825d90c68ba901', '::1', 1483671607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333637313630373b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('c1ecff00fff5d7960a2160e1ca4d7dcc3d58e8a4', '::1', 1483690186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333639303138363b),
('61b05c10a3bb6746702f4b88294c8c6a70e552dc', '::1', 1483690495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333639303439353b),
('586003104b12f50dd299c48cde9228e78c6f8427', '::1', 1483690886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333639303838363b),
('2d107e5557b7d2764f55281fded054628c747fdb', '::1', 1483695312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333639353331323b),
('4d20fa9eed6b7ea61d9e9911af623418bd15f4b4', '::1', 1483695834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333639353833343b),
('05e9397121b280325788bd9694706e2c11db028d', '::1', 1483696177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333639363137373b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('b4617131ff55c499e027a278fece7abfb00445f7', '::1', 1483696982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333639363938323b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('d7b981e2e5020c4a7fe8a4c660f8d7b3bf0a6f22', '::1', 1483697091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333639363938323b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('3e07fd76977930575fd38b746ead768af21f7221', '::1', 1483930351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933303335313b),
('b9c0166125e9b2e6a049cdf7c9d6f90253aa3e2c', '::1', 1483930657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933303635373b),
('d8900e21eb36d77ac81af62142c8d2c292e31970', '::1', 1483931289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933313238393b),
('1e2970ccdb8fdcb32f54fa09f55e4d5250b7025a', '::1', 1483934173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933343137333b),
('7fb1be07fd66d4ce7331974153d4a2b915aef09b', '::1', 1483934495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933343439353b),
('9a2bcc2dbb71f1e943c4c3a49264fa0de7dc83f2', '::1', 1483934870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933343837303b),
('2c3d9cd7f0d45ca6ba2080f5602729d3b5fec34e', '::1', 1483935773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933353737333b),
('605f4606168b88adac4b4e3d58a60991559b2127', '::1', 1483936502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933363530323b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('a236773aecc9766f7fdb3fea7d9d2db9f7d26f54', '::1', 1483936503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333933363530323b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b696e666f7c733a32363a22417274696b656c20626572686173696c20646973696d70616e2e223b5f5f63695f766172737c613a313a7b733a343a22696e666f223b733a333a226f6c64223b7d),
('f7fd970f7c862c24aedb706a9d2efc4fb9dea190', '::1', 1483949107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333934393130373b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('ceb9acad92b7cc458aaeb76f7bbd9eb13b877b8b', '::1', 1483949241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333934393036313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('b1b44c6e237dba6b016d043aaf2044355c28aa39', '::1', 1483952536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333935323533363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('a87285d458f75ad4179fb7968c27db3e674af302', '::1', 1483952539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333935323533363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('8a3363712defd881a9060b6d584dbf7bdb914b71', '::1', 1484020576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343032303537363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('04a7f1f02798f4eb218bfa5d83945c986ec6a362', '::1', 1484020927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343032303833373b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('cefda4652e7032bc955fa973f67190e0adaeb385', '::1', 1484035399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343033353339393b),
('3535fb2b571b3b3fd236046d986c96294dac3715', '::1', 1484036409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343033363430393b),
('ef351d6d763acb435b5e1a67a7e13442b7ed84ea', '::1', 1484039567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343033393536373b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('086c6e5264721726eb36c084ccaac9985473173a', '::1', 1484039915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343033393931353b),
('25a0fd8a72fc64a87b033dc16451449cebbcd2e8', '::1', 1484040970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343034303937303b),
('40d8378d5ca6e5015d232769990694b015b263cb', '::1', 1484040970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343034303937303b),
('e6a334c00c08dfce4c8dd8b2cdba386e8c73acb0', '::1', 1484102201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130323230313b),
('c8f373fc31c0ef10f08fc5bd526f0c88ac509d66', '::1', 1484102530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130323533303b757365726e616d657c733a363a2266726f7a656e223b69734c6f67696e7c623a313b),
('038bbf27dd1226e632d802e7d013e52db0dd674c', '::1', 1484103072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130333037323b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('85cf02d859f9fee2e32504096ee1007ae82f3ea1', '::1', 1484103540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130333534303b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('4debf886bffc4e92233e9fe3fa9b540fecba7f07', '::1', 1484103879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130333837393b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('d6bda3cef6a0e9ab45e0992c9c8ce76749a98fce', '::1', 1484104571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130343537313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('bc92306c57f74cc7769f50c67aae88a670108b07', '::1', 1484105766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130353736363b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('a99b2783ff64d5fde4e834da04c00d86e76df0bd', '::1', 1484106199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130363139393b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('92b8150aaa65d01fede086571d89590de6e2a160', '::1', 1484106611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130363631313b757365726e616d657c733a363a2266726f7a656e223b69734c6f67696e7c623a313b),
('f1c155d5e356c69b1e8458c11848a7df55ea4b2b', '::1', 1484108006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130383030363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('6d43e11f8246f0dc4d08207b536f6a0e8dfe07e4', '::1', 1484108801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130383830313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('ec493806522bf93d0aba7bcad9b563960ed834db', '::1', 1484108802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343130383830313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('3f21fc2c935da52012e84a240c2f730b5a18f139', '::1', 1484127191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343132373135393b),
('03e2bac094feeb2f9e0fdfdd234156a73bfec420', '::1', 1484187876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343138373837363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('32ef27775baf40425c1c163e28cf2cf1e0bdabf2', '::1', 1484188186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343138383138363b757365726e616d657c733a383a226772656174657273223b69734c6f67696e7c623a313b),
('883f28646a0c5bc0abcf2f083bdd90c205c59f34', '::1', 1484188623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343138383632333b757365726e616d657c733a363a2266726f7a656e223b69734c6f67696e7c623a313b696e666f7c733a38373a22417274696b656c20626572686173696c20646974616d6261686b616e2c204d6f64657261746f72206b616d6920616b616e206d6572657669657720617274696b656c20746572736562757420736563657061746e79612e223b5f5f63695f766172737c613a313a7b733a343a22696e666f223b733a333a226f6c64223b7d),
('e3c7dc90a5e7a3c775a0f3b13e9ba74b36039b37', '::1', 1484189029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343138393032393b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('8f2252f5db14bd466e51713a925b8ea1abf58d54', '::1', 1484189872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343138393837323b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('d46441e95dfc87af3c8425ce663d8bda04945f1e', '::1', 1484190681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343139303638313b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('92c61bf14356c965c302743e88eecf647cfbcfd7', '::1', 1484191018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343139313031383b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('83c53e17ce29f567497e245402da9a8a157b5ab1', '::1', 1484191323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343139313332333b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b),
('0708c98ba97948eebcf3a9874836faeed982874e', '::1', 1484191474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343139313332333b757365726e616d657c733a363a226661757a616e223b69734c6f67696e41646d696e7c623a313b);

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
('fauzan', '595d275ad04a4d9a526716390042c1d4', 'azmifauzan@gmail.com', '2016-08-11', 'Fauzan', '', '', 1, '', '', NULL, 1, 0, 0),
('greaters', '26d55f2b896a8e3263ed67ebde6722dc', 'greatnesia@gmail.com', '2017-01-03', 'Greaters', 'http://www.greatnesia.com', '', 1, '', '', NULL, 1, 0, 25),
('frozen', '595d275ad04a4d9a526716390042c1d4', 'frozen@gmail.com', '0000-00-00', 'Friza', '', '', 1, 'active', '', NULL, 1, 0, 3);

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
  MODIFY `artikel_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `penukaran`
--
ALTER TABLE `penukaran`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
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
