-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2017 at 09:53 AM
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
(8, 'Pesawat CN-235 Produksi PT DI pesanan Senegal Tiba di Dakar', 'pesawat-cn-235-produksi-pt-di-pesanan-senegal-tiba-di-dakar-2', 1, '<p>Setelah menempuh perjalanan panjang selama 11 (sebelas) hari dengan jarak lebih dari 16.000 km, tepat pukul 14.15 waktu setempat, tanggal 6 Januari 2017, pesawat CN-235 220M Multi Purpose produksi P.T Dirgantara Indonesia (PT. DI) akhirnya tiba di Pusat Angkatan Udara Senegal di Dakar. Pesawat kedua pesanan Pemerintah Senegal ini telah lama dinanti sejak Oktober 2016, pesawat tiba bersama 15 crew WNI yang terdiri dari 4 (empat) pilot, dimana salah satunya adalah WN Senegal, 1 (satu) flight test engineer dan 10 (sepuluh) mechanic.<br /><br />Kapten Esther Gayatri Saleh tersebut disambut oleh Dubes RI Dakar Mansyur Pangeran beserta Staf; Jenderal Birame Diop, Chief of Senegalese Air Force / KSAU Senegal beserta jajaranya; Mr. Pierre Baudechon, Regional Manager AD Trade Belgium bersama jajarannya; dan perwakilan dari PT. DI serta Indonesian Military Airworthiness Authority (IMAA) yang sehari sebelumnya telah tiba di Dakar.<br /><br />KSAU Senegal Jenderal Birame Diop sangat senang dengan datangnya pesawat CN-235 tersebut yang telah lama ditunggu untuk memperkuat armada angkatan udaranya. KSAU Senegal juga menyampaikan kesan baiknya selama kunjungannya ke Indonesia dalam rangka menghadiri serah terima pesawat dari PT. DI kepada AD Trade Belgium, dan pelepasan ferry flight CN-235 dari Bandung tanggal 27 Desember 2016. Dalam kesempatan tersebut, KSAU Senegal juga berkesempatan bertemu dengan KSAU RI atas fasilitasi KBRI Dakar. &nbsp;<br /><br />Dubes Mansyur Pangeran mengatakan kedatangan pesawat CN-235 di Dakar merupakan kebanggaan Indonesia untuk menunjukkan kepada dunia bahwa hasil karya anak bangsa Indonesia mampu bersaing di bidang teknologi kedirgantaraan dengan negara-negara maju lainnya.<br /><br />Dubes Mansyur menegaskan dengan kedatangan CN-235 tersebut dapat dijadikan contoh soal dalam mempromosikan produk PT. DI tersebut ke 7 (tujuh) negara-negara rangkapan KBRI Dakar lainnya yaitu Gambia, Guinea, Guinea Bissau, Mali, Pantai Gading, Sierra Leone dan Cabo Verde. Rencananya Senegal akan membeli 1 (satu) lagi pesawat CN-235 yang akan digunakan untuk kepentingan armada Angkatan Lautnya yang direncanakan sesuai jadwal akan tiba di Dakar tahun 2018.<br /><br />Selain itu, Dubes Mansyur juga menyatakan diantara negara rangkapan yang telah menyatakan keinginannya membeli pesawat CN-235 produksi PT. DI yang sama adalah Republik Guinea sebagaimana yang telah disampaikan langsung oleh Presiden Alpha Conde kepada Presiden Joko Widodo ketika berkunjung ke Indonesia bulan Agustus 2016 lalu.<br /><br />Informasi kedatangan pesawat CN-235 tersebut telah disampaikan langsung oleh Dubes Mansyur Pangeran kepada Presiden Senegal, Macky Sall pada sore hari-nya, pada saat Dubes menghadiri Resepsi Tahun Baru 2017 di Istana Kepresidenan di Dakar. Presiden sangat senang dan menyampaikan terima kasih atas hubungan kerjasama yang telah terjalin dengan baik selama ini dan meminta untuk ditingkatkan di masa-masa mendatang.<br /><br />Pesawat yang diterbangkan dari Bandara Husein Sastranegara Bandung, tanggal 27 Desember 2016, dalam perjalanannya ke Dakar, Senegal mengambil rute ferry flight : Medan, Colombo (Sri Lanka), Maladewa, Karachi (Pakistan), Riyadh (Arab Saudi), Khartoum (Sudan), Ndjamena (Chad), Ouagadougou (Burkina Faso), dan Dakar.<br /><br />Selama berada di Dakar, Tim PT. DI dan IMAA akan melakukan proses administrasi meliputi customer acceptance dan de-registrasi dari register Indonesia (AX) menjadi register Angkatan Udara Senegal pada tanggal 9 Januari 2017. Sesuai kesepakatan KSAU Senegal dengan PT. DI, untuk maintenance pesawat tersebut, satu orang mechanic PT. DI akan tinggal di Dakar selama satu tahun selama masa garansi. Selama berada di Dakar, seluruh delegasi PT. DI dan IMAA difasilitasi oleh AD Trade Belgium.<br /><br />Dengan tibanya pesawat CN-235 tersebut, Senegal kini memiliki 2 (dua) pesawat CN-235 buatan PT. DI, dimana pesawat pertamanya yang tiba tahun 2011 digunakan untuk kepentingan militer VIP dan pesawat kedua ini untuk multi fungsi, yaitu troop transport, medivac dan VIP.<br /><br />Upacara resmi serah terima pesawat CN-235 tersebut dari AD Trade Belgium kepada Pemerintah Senegal dijadwalkan pada tanggal 23 Januari 2017. Kegiatan tersebut akan dihadiri oleh Direktur Utama dan Direktur Niaga &amp; Restrukturisasi PT. DI serta para KSAU dari negara-negara di wilayah Afrika Barat.</p>\r\n<p>sumber: kemlu.go.id</p>', '2017-01-12 03:38:23', 'frozen', 0, 'frozen/1569f4e295a4a4a6d742b95239738420.jpg', 0, '', '1', '1'),
(9, 'Tunov Mondro Atmodjo, Menggunting Mafia Bisnis Cabai', 'tunov-mondro-atmodjo-menggunting-mafia-bisnis-cabai', 1, '<p>Tahun 2010 petani cabai di Magelang, Jawa Tengah, terpukul akibat harga jual cabai terjun bebas hingga Rp 2.000 per kilogram. Ratusan petani bangkrut dan terjerat utang. Belajar dari peristiwa itu, Tunov Mondro Atmodjo turun ke ladang untuk mengurai akar masalah.<br /><br />Pemuda berusia 34 tahun itu mengedukasi para petani cabai dengan lahan kurang dari 3.000 meter persegi di Dusun Tanggulangin, Desa Girikulon, Kecamatan Secang, Kabupaten Magelang, Jawa Tengah. Ia tak menyentuh petani besar yang lahannya di atas 1 hektar.<br /><br />&rdquo;Cabai itu bukan komoditas yang bisa disimpan lama. Pengembangan tanaman cabai di lahan yang luasnya kurang dari 3.000 meter persegi lebih efektif. Panennya akan maksimal dan harga terjaga sesuai ongkos budidaya,&rdquo; tutur Tunov.<br /><br />Oleh karena itu, alih-alih mengejar peningkatan produksi cabai, ia memilih membangun kesadaran petani pada seluk-beluk bisnis cabai. &rdquo;Saya mengubah pola pikir petani mengenai budidaya cabai, mulai dari pemeliharaan hingga penanganan pasca panen,&rdquo; kata Tunov, Ketua Gabungan Kelompok Tani (Gapoktan) Giri Makmur, Kabupaten Magelang, ini.<br /><br />Cabai bisa dipanen mulai umur 90 hari sampai 6 bulan. Setiap minggu pada musim panen, cabai bisa dipetik 2-3 kali. Satu pohon menghasilkan sekitar 115 cabai dan 1 kilogram (kg) setidaknya 350 cabai.<br /><br />Kalau harga jual terendah Rp 15.000 per kg, petani memperoleh hasil bersih Rp 5 juta. Idealnya, harga jual cabai di tingkat petani minimal Rp 20.000 per kg supaya petani untung 20 persen. Kenyataannya, harga cabai sering jatuh karena adanya mafia.<br /><br />Mereka bisa menekan harga di tingkat petani serendah mungkin, kemudian menjual harga cabai di pasar setinggi mungkin. Akibatnya, harga cabai tak terkendali dan menjadi pemicu inflasi.<br /><br /><strong>Perang</strong><br /><br />Bisnis cabai memang menggiurkan. Setiap hari Jakarta saja membutuhkan pasokan 120 ton cabai. Pemasok cabai menyetor jam berapa pun pasti diterima pasar. Sayang, jalur distribusi cabai dari petani ke pedagang pasar dikuasai mafia. Akibatnya, perbedaan harga jual di tingkat petani dan harga jual di pasar bisa sampai 120 persen.<br /><br />Tunov ingin petani setidaknya bisa menguasai 30 persen pasar cabai di Jakarta. Menurut dia, kunci dalam bisnis cabai sederhana. Siapa yang menguasai cabai pasti menguasai pasar. Karena itu, Tunov membuat jalur pemasaran tunggal sejak 2015. Ia melarang petani menjual cabai sendiri-sendiri.<br /><br />Cabai yang dipanen dikumpulkan di rumah kelompok tani. Ia lalu memanggil pedagang untuk membeli cabai secara lelang. Penjualan cabai bisa dilakukan tanpa lewat tengkulak atau mafia cabai. Harga cabai di tingkat petani pun meningkat. Selain itu, sebagian cabai dikirim langsung ke pasar induk di Jakarta. Mereka menyebut strategi ini &rdquo;operasi pasar&rdquo;.<br /><br />Meski risiko &rdquo;operasi pasar&rdquo; cukup besar, strategi ini ampuh menghancurkan monopoli mafia. Ia bercerita, Oktober lalu harga cabai di pasar merangkak di kisaran Rp 45.000 per kg. Dia dan kawan-kawan melancarkan &rdquo;operasi pasar&rdquo; ke Jakarta. Mereka membanderol cabai segar Rp 20.000 per kg. Dalam dua jam, cabai mereka ludes terjual.<br /><br />Mafia cabai yang berharap mendapat untung besar dari &rdquo;menggoreng&rdquo; harga pun merugi. Ada tengkulak yang rugi hampir Rp 2 miliar akibat gelontoran cabai segar Tunov dan kawan-kawan.<br /><br />Gerakan Tunov dan para petani itu mendapat perlawanan. Sejumlah tengkulak menebar teror dan ancaman kepada petani dan pedagang yang menerima pasokan cabai dari Magelang. Namun, Tunov dan kawan-kawan tetap bergeming.<br /><br />&nbsp;Berkat usaha keras mereka, harga cabai di tingkat petani bisa menguntungkan. Gerakan mereka juga mendapat dukungan para petani cabai lainnya, bahkan yang berasal dari kecamatan lain, seperti Grogol, Kajoran, Dukun, Pakis, dan Kopeng di Kota Salatiga.<br /><br />Gapoktan Giri Makmur yang dipimpin Tunov semakin berkembang. Anggotanya kini berjumlah 700 petani yang tersebar di Kecamatan Secang dan Grabag.<br /><br />Gerakan mereka juga memengaruhi harga jual cabai di pasar Jakarta. Jadilah Tunov sering diajak rembuk di tingkat Kementerian Pertanian dan instansi lain untuk menemukan formula pertanian dan tata niaga cabai di tingkat nasional. Ia menjadi satu dari sembilan petani andalan cabai dari sejumlah daerah di Indonesia.<br /><br /><strong>Anak petani</strong><br /><br />Pertanian lekat dengan kehidupan Tunov. Sang ayah, Martoyo Cokro Miharjo, adalah petugas penyuluh pertanian sekaligus sahabat petani, khususnya petani cabai.<br /><br />&rdquo;Orangtua saya memberi nama Tunov karena saya lahir pada tujuh November,&rdquo; kata Tunov, petani cabai di lereng Gunung Merbabu ini seraya tertawa.<br /><br />Sebelum menjadi petani cabai, Tunov sempat mengambil jalan hidup lain. Dia memilih bersekolah di Akademi Seni Rupa dan Desain Modern, School of Design Yogyakarta. Setelah itu, dia sempat bekerja dalam industri film. Tunov antara lain pernah menjadi produser film dan bekerja dengan Deddy Mizwar pada 2009.<br /><br />Baru pada 2013 Tunov memutuskan kembali ke &rdquo;akar&rdquo; kehidupan masa kecilnya, yakni pertanian. Tanpa merasa canggung sedikit pun, dia kemudian mengolah tanah dan menanam cabai di lahan milik bersama para petani.<br /><br />Tunov kemudian menikmati kehidupannya sebagai petani. Dia kembali akrab dengan para petani, hingga diangkat sebagai pembina petani pada 2013. Belakangan, setelah ia berhasil menggunting cengkeraman mafia, budidaya cabai semakin ramai dan menyebar di Magelang dan sekitarnya.<br /><br />Melihat keberhasilan itu, Bank Indonesia Perwakilan Jawa Tengah selaku ketua tim pengendali inflasi daerah tertarik dengan pola pengembangan cabai yang dilakukan Gapoktan Giri Makmur.<br /><br />Instansi itu lantas memberikan tugas kepada dia untuk menyiapkan sekitar 6.000 benih cabai. Bibit itu nantinya akan ditanam para ibu dalam program Kampung Cabai di 35 kabupaten dan kota di Jawa Tengah.<br /><br />&rdquo;Kalau satu desa menanam 15.000 pohon cabai sudah setara dengan menanam pohon cabai 1 hektar. Para ibu bisa menanam cabai di rumah, cukup 10-20 pohon cabai di polybag. Hasilnya bisa mencukupi kebutuhan mereka sendiri,&rdquo; ujar pria lajang tersebut.<br /><br />Gerakan ini digulirkan guna mendorong swasembada cabai untuk rumah tangga. Tujuannya para ibu tetap bisa membuat sambal meski harga cabai melangit.</p>\r\n<p>sumber: kompas.com</p>', '2017-01-13 03:14:00', 'greaters', 0, 'greaters/b14d43fee337a85237d77db2619a7992.jpg', 0, '', '1', '1');

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
  `poin` int(11) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

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
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikel_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `barang_poin`
--
ALTER TABLE `barang_poin`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `trade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
