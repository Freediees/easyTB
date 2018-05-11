--variable global

local widget = require( "widget" )
local json = require ("json")
local composer = require( "composer" )
local scene = composer.newScene()
local used_font = "Raleway-Regular.ttf"
local used_font_bold = "Raleway-Bold.ttf"


local lebar = display.contentWidth
local tinggi = display.contentHeight


composer.tab1 = lebar * 0.05
composer.tab2 = composer.tab1 * 2
composer.textTab1 = composer.tab1 + lebar/20
composer.textTab2 = composer.tab2 * 1.5 
composer.endTextTab1 = lebar - composer.textTab1 - composer.tab1
composer.endTextTab2 = lebar - composer.textTab2 - composer.tab2


--function global
function onMenuParu()

	local options_overlay =
	{
	    isModal = true,
	    effect = "fromLeft",
	    time = 400,
	    params = {
	        sampleVar1 = "my sample variable",
	        sampleVar2 = "another sample variable"
	    }
	}

	composer.showOverlay("overlay_paru", options_overlay)
end


function onMenuKhusus()

	local options_overlay =
	{
	    isModal = true,
	    effect = "fromLeft",
	    time = 400,
	    params = {
	        sampleVar1 = "my sample variable",
	        sampleVar2 = "another sample variable"
	    }
	}

	composer.showOverlay("overlay_khusus", options_overlay)
end


function onMenuAnak()

	local options_overlay =
	{
	    isModal = true,
	    effect = "fromLeft",
	    time = 400,
	    params = {
	        sampleVar1 = "my sample variable",
	        sampleVar2 = "another sample variable"
	    }
	}

	composer.showOverlay("overlay_anak", options_overlay)
end

function onMenuEkstra()

	local options_overlay =
	{
	    isModal = true,
	    effect = "fromLeft",
	    time = 400,
	    params = {
	        sampleVar1 = "my sample variable",
	        sampleVar2 = "another sample variable"
	    }
	}

	composer.showOverlay("overlay_ekstra", options_overlay)
end


function onMenuSimulasi()

	local options_overlay =
	{
	    isModal = true,
	    effect = "fromLeft",
	    time = 400,
	    params = {
	        sampleVar1 = "my sample variable",
	        sampleVar2 = "another sample variable"
	    }
	}

	composer.showOverlay("overlay_simulasi", options_overlay)
end



function toHome()
	composer.gotoScene("home", {
		effect="fromLeft", 
		time=200
	})
end


function toParu1()

	composer.gotoScene("page_paru1", {
			effect="fromRight", 
			time=200
		})
end

function toParu2()

	composer.gotoScene("page_paru2", {
			effect="fromRight", 
			time=200
		})
end

function toParu3()

	composer.gotoScene("page_paru3", {
			effect="fromRight", 
			time=200
		})
end

function toParu4()

	composer.gotoScene("page_paru4", {
			effect="fromRight", 
			time=200
		})
end

function toParu5()

	composer.gotoScene("page_paru5", {
			effect="fromRight", 
			time=200
		})
end

function toParu6()

	composer.gotoScene("page_paru6", {
			effect="fromRight", 
			time=200
		})
end


function toParu7()

	composer.gotoScene("page_paru7", {
			effect="fromRight", 
			time=200
		})
end


function toParu8()

	composer.gotoScene("page_paru8", {
			effect="fromRight", 
			time=200
		})
end


function toParu9()

	composer.gotoScene("page_paru9", {
			effect="fromRight", 
			time=200
		})
end

function toParu10()

	composer.gotoScene("page_paru10", {
			effect="fromRight", 
			time=200
		})
end

function toParu11()

	composer.gotoScene("page_paru11", {
			effect="fromRight", 
			time=200
		})
end


function toParu12()

	composer.gotoScene("page_paru12", {
			effect="fromRight", 
			time=200
		})
end


function toParu13()

	composer.gotoScene("page_paru13", {
			effect="fromRight", 
			time=200
		})
end


function toParu14()

	composer.gotoScene("page_paru14", {
			effect="fromRight", 
			time=200
		})
end

function toParu15()

	composer.gotoScene("page_paru15", {
			effect="fromRight", 
			time=200
		})
end


function toParuDiagnosis()

	composer.gotoScene("page_paru_diagnosis", {
			effect="fromRight", 
			time=200
		})
end








function toEkstra2()

	composer.gotoScene("page_ekstra2", {
			effect="fromRight", 
			time=200
		})
end

function toEkstra3()

	composer.gotoScene("page_ekstra3", {
			effect="fromRight", 
			time=200
		})
end

function toEkstra4()

	composer.gotoScene("page_ekstra4", {
			effect="fromRight", 
			time=200
		})
end

function toEkstra5()

	composer.gotoScene("page_ekstra5", {
			effect="fromRight", 
			time=200
		})
end


function toEkstra6()

	composer.gotoScene("page_ekstra6", {
			effect="fromRight", 
			time=200
		})
end


function toEkstra7()

	composer.gotoScene("page_ekstra7", {
			effect="fromRight", 
			time=200
		})
end


function toEkstra8()

	composer.gotoScene("page_ekstra8", {
			effect="fromRight", 
			time=200
		})
end


function toEkstra9()

	composer.gotoScene("page_ekstra9", {
			effect="fromRight", 
			time=200
		})
end

function toEkstra10()

	composer.gotoScene("page_ekstra10", {
			effect="fromRight", 
			time=200
		})
end


function toEkstra11()

	composer.gotoScene("page_ekstra11", {
			effect="fromRight", 
			time=200
		})
end









function toKhusus1()
	
	composer.gotoScene("page_khusus1", {
			effect="fromRight", 
			time=200
		})
end

function toKhusus2()
	
	composer.gotoScene("page_khusus2", {
			effect="fromRight", 
			time=200
		})
end


function toKhusus3()
	
	composer.gotoScene("page_khusus3", {
			effect="fromRight", 
			time=200
		})
end


function toKhusus4()
	
	composer.gotoScene("page_khusus4", {
			effect="fromRight", 
			time=200
		})
end

function toKhusus5()
	
	composer.gotoScene("page_khusus5", {
			effect="fromRight", 
			time=200
		})
end

function toKhusus6()
	
	composer.gotoScene("page_khusus6", {
			effect="fromRight", 
			time=200
		})
end

function toKhusus7()
	
	composer.gotoScene("page_khusus7", {
			effect="fromRight", 
			time=200
		})
end

function toKhusus8()
	
	composer.gotoScene("page_khusus8", {
			effect="fromRight", 
			time=200
		})
end









function toAnak2()
	
	composer.gotoScene("page_anak2", {
			effect="fromRight", 
			time=200
		})
end

function toAnak3()
	
	composer.gotoScene("page_anak3", {
			effect="fromRight", 
			time=200
		})
end


function toAnak3_1()
	
	composer.gotoScene("page_anak3_1", {
			effect="fromRight", 
			time=200
		})
end


function toAnak4()
	
	composer.gotoScene("page_anak4", {
			effect="fromRight", 
			time=200
		})
end


function toAnak5()
	
	composer.gotoScene("page_anak5", {
			effect="fromRight", 
			time=200
		})
end



function toAnak6()
	
	composer.gotoScene("page_anak6", {
			effect="fromRight", 
			time=200
		})
end


function toAnak7()
	
	composer.gotoScene("page_anak7", {
			effect="fromRight", 
			time=200
		})
end


function toBaru()
	
	composer.gotoScene("page_input1", {
			effect="fromRight", 
			time=200
		})
end


function toListUser()
	
	composer.gotoScene("page_list_user", {
			effect="fromRight", 
			time=200
		})
end





composer.text_disclaimer = [[
Aplikasi ini digunakan untuk membantu klinisi dalam memberikan Tata Laksana Tuberkulosis yang berfokus pada penegakan diagnosis Tuberkulosis Dewasa. Informasi yang dimuat dalam aplikasi ini bersifat umum, mengacu pada Pedoman Nasional Pelayanan Kedokteran Tata Laksana Tuberkulosis (PNPK Tata Laksana Tuberkulosis) yang diterbitkan oleh Kementrian Kesehatan RI tahun 2016. Semua pembaruan informasi dan perubahan Pedoman Nasional terbaru mengenai Tata Laksana Tuberkulosis sangat mungkin tidak sesuai lagi dengan konten aplikasi ini. Untuk informasi lebih lanjut kunjungi:
]]


composer.text_disclaimer2 = [[Algoritma penegakkan diagnosis Tuberkulosis Dewasa yang ada dalam aplikasi ini mengadaptasi alur penegakkan diagnosis Tuberkulosis Dewasa yang terdapat dalam Pedoman Nasional Pelayanan Kedokteraan Tata Laksana Tuberkulosis (PNPK Tata Laksana Tuberkulosis) yang diterbitkan oleh Kementrian Kesehatan RI tahun 2016. Algoritma penegakkan diagnosis ini hanya sebagai alat bantu untuk memberikan hasil diagnosis Tuberkulosis Dewasa dengan beberapa kondisi yang sesuai dengan PNPK Tata Laksana Tuberkulosis 2016. Kondisi yang terjadi di lapangan sangat mungkin berbeda. Interpretasi hasil yang muncul dalam aplikasi ini tidak direkomendasikan untuk dijadikan kesimpulan pasti kondisi seseorang atau diagnosis definitif pada seorang pasien, terlebih jika digunakan oleh orang awam yang tidak memiliki latar belakang medis/tidak memiliki pengetahuan dan skill sebagai seorang klinisi yang bertanggung jawab dalam menatalaksana seorang pasien. Diagnosis yang akurat masih bergantung pada kemampuan klinisi dalam menilai kondisi medis pasien, sehingga konsultasi dengan profesional kesehatan sangat disarankan.]]

composer.text_url = "www.tbindonesia.or.id"

composer.text_latar_belakang = [[        Pada 2011, insidens TB global sebanyak 8,7 juta (termasuk 1,1 juta dengan koinfeksi HIV) dan 900 ribu meninggal akibat TB. Insiden TB Resisten obat adalah 3,7% dari kasus baru dan 20% dari kasus dengan riwayat pengobatan. Sekitar 95% kasus TB dan 98% kematian akibat TB terjadi di negara berkembang. Indonesia sendiri pada 2011 menempati peringkat keempat setelah India, Cina, dan Afrika Selatan dengan 0,38-0,54 juta kasus. 
        Fakta di Indonesia, penatalaksanaan TB di sebagian besar Rumah Sakit dan Praktek Swasta belum sesuai dengan Strategi DOTS (Directly Observed Treatment Short-Course) dan ISTC ( International Standart For Tuberculosis Care), serta Panduan Nasional Praktek Klinik (PNPK) yang ada. Para dokter sebagian tidak mengikuti standar / panduan tersebut melainkan cenderung menggunakan pengalaman dan pengetahuan semasa pendidikan padahal pengobatan kasus TB yang sesuai standar merupakan strategi utama pengendalian TB. Hal-hal yang mempengaruhinya antara lain adalah kesulitan akses terhadap standar/panduan tersebut dan keengganan untuk membuka standar/panduan tersebut. 
        Berdasarkan hal tersebut diatas maka timbul pemikiran untuk menyajikan panduan yang telah ada dan berlaku nasional dalam bentuk yang lebih mudah diakses dan digunakan oleh para dokter di Indonesia, yaitu dalam bentuk aplikasi berbasis android. Sehingga diharapkan dengan adanya aplikasi ini dapat memudahkan para dokter dalam menegakkan diagnosis (dan tatalaksana) TB sesuai PNPK TB yang berlaku.]]


local spasi = "            "
local panjang = string.len("Kasus TB definitif")
local i = 0
for i=0, panjang do
	spasi = spasi.." "
end


composer.text_tuberkulosisi_paru = [[        Gejala umum TB paru adalah batuk produktif lebih dari dua minggu yang disertai gejala pernafasan seperti sesak nafas, nyeri dada, batuk darah dan/atau gejala tambahan seperti menurunnya nafsu makan, berat badan menurun, keringat malam dan mudah lelah. Suspek TB adalah seseorang dengan gejala atau tanda sugestif TB
Definisi kasus TB adalah sebagai berikut:]]
composer.paruparu1 = spasi..[[adalah kasus dengan salah satu dari spesimen biologis positif dengan pemeriksaan , mikroskopis apusan dahak, biakan atau diagnostik cepat yang telah disetujui WHO (seperti Xpert MTB/RIF). (Pada revisi guideline WHO 2013, definisi ini direvisi menjadi kasus TB dengan konfirmasi bakteriologis)]]
composer.paruparu2 = spasi..[[   klinis adalah kasus TB yang tidak dapat memenuhi kriteria konfirmasi bakteriologis walau telah diupayakan maksimal tetapi ditegakkan diagnosis TB aktif oleh klinisi yang memutuskan untuk memberikan pengobatan TB berdasarkan foto dada abnormal, histologi sugestif dan kasus ekstraparu. Kasus yang ditegakkan diagnosis secara klinis ini bila kemudian didapatkan hasil bakteriologis positif (sebelum dan setelah pengobatan) harus diklasifikasikan kembali sebagai kasus TB dengan konfirmasi bakteriologis. ]]


local spasi = "      "
local panjang = string.len("TB paru")
local i = 0
for i=0, panjang do
	spasi = spasi.." "
end


   composer.paru1 = spasi..[[adalah kasus TB yang melibatkan parenkim paru atau trakeobronkial. TB milier diklasifikasikan sebagai TB paru karena terdapat lesi di paru. Pasien yang mengalami TB paru dan ekstraparu harus diklasifikasikan sebagai kasus TB paru.]]
 
local spasi = "          "
local panjang = string.len("TB ekstraparu")
local i = 0
for i=0, panjang do
	spasi = spasi.." "
end

   composer.paru1_1 = spasi..[[adalah kasus TB yang melibatkan organ di luar parenkim paru seperti pleura, kelenjar limfe, abdomen, saluran geniotourinaria, kulit, sendi, tulang dan selaput otak. Kasus TB ekstra paru dapat ditegakkan secara klinis atau histoligis setelah diupayakan semaksimal mungkin dengan konfirmasi bakteriologis]]

 

   	local spasi = "     "
local panjang = string.len("Kasus baru  ")
local i = 0
for i=0, panjang do
	spasi = spasi.." "
end

  composer.paru2 = spasi..[[ : yaitu pasien belum pernah mendapat OAT sebelumnya atau riwayat mendapat OAT kurang dari 1 bulan]]
  composer.paru2_1 = [[ 
yaitu pasien pernah mendapatkan OAT 1 bulan atau lebih. Dibedakan menjadi :]]
  composer.paru2_2 = [[Kasus kambuh : pasien sudah pernah diterapi OAT secara lengkap dan dinyatakan sembuh, namun rekuren (baik untuk kasus yang benar-benar kambuh atau karena reinfeksi)]]
  composer.paru2_3 = [[Kasus pengobatan setelah gagal : pasien sudah diterapi OAT dan dinyatakan gagal pada akhir pengobatan]]
  composer.paru2_4 = [[Kasus setelah putus obat adalah pasien yang pernah mendapat OAT 1 bulan atau lebih dan tidak meneruskan pengobatan selama 2 bulan berturut- turut atau dinyatakan tidak dapat dilacak pada akhir pengobatan (lost to follow up)]]
  composer.paru2_5 = [[Kasus dengan riwayat pengobatan lainnya : pasien sudah mendapatkan OAT dan hasil akhir pengobatannya tidak diketahui atau tidak didokumentasikan]]
  composer.paru2_6 = [[Pasien pindah : pasien yang dipindah dari register TB lain (TB 03) untuk melanjutkan pengobatan.]]
  composer.paru2_7 = [[Pasien tidak diketahui riwayat pengobatan sebelumnya : yaitu pasien yang tidak termasuk salah satu kategori di atas.]]


  composer.paru3 = [[ 
  Terdapat paling sedikit 2 spesimen BTA positif pada pemeriksaan apusan dahak]]
  composer.paru3_1 = [[TB paru apusan dahak negatif :]]
  composer.paru3_2 = [[Hasil apusan dahak BTA negatif tapi biakan positif untuk M. Tuberkulosis ]]
  composer.paru3_3 = [[Memenuhi kriteria diagnostik berikut : ]]
  composer.paru3_4 = [[- Diterapi dengan OAT lengkap oleh klinisi dan
- Ada temuan radiologis sesuai TB paru aktif :
o Ada bukti kuat berdasar laboratorium atau manifestasi klinis 
o Bila HIV negatif (atau status HIV tidak diketahui dan tinggal di daerah prevalensi rendah HIV) tidak respon dengan antibiotika spektrum luas (diluar OAT dan Fluorokuinolon dan Aminoglikosida)
]]
  composer.paru3_5 = [[TB paru apusan tidak dilakukan]]


local spasi = "     "
local panjang = string.len("TB dengan HIV positif :   ")
local i = 0
for i=0, panjang do
	spasi = spasi.." "
end
  composer.paru4 = spasi..[[ adalah kasus TB konfirmasi bakteriologis atau klinis yang positif terinfeksi HIV berdasarkan hasil tes HIV maupun telah terdokumentasi dalam register pasien HIV]]

local spasi = "     "
local panjang = string.len("TB dengan HIV negatif:   ")
local i = 0
for i=0, panjang do
	spasi = spasi.." "
end

  composer.paru4_1 =spasi..[[    adalah kasus TB konfirmasi bakteriologis atau klinis yang positif terinfeksi HIV berdasarkan hasil tes HIV]]
  composer.paru4_2 = spasi..spasi..[[     adalah kasus TB konfirmasi bakteriologis atau klinis yang tidak memiliki hasil tes HIV dan tidak memiliki bukti dokumentasi telah terdaftar dalam register HIV]]
 



composer.paru5 = [[Tujuan pengobatan TB paru adalah :]]
composer.paru5_1 =  [[Menyembuhkan, mempertahankan kualitas hidup dan produktivitas pasien]]
composer.paru5_2 = [[Mencegah kematian akibat TB aktif atau efek lanjutan]] 
composer.paru5_3 = [[Mencegah kekambuhan TB]] 
composer.paru5_4 = [[Mengurangi penularan TB kepada orang lain]] 
composer.paru5_5 = [[Mencegah perkembangan dan penularan resisten obat]] 


composer.paru6 = [[WHO merekombinasikan obat KDT (Kombinasi Dosis Tetap) untuk mengurangi resiko terjadinya TB resisten obat akibat monoterapi. Dengan KDT pasien tidak dapat memilih obat yang diminum. Selain itu jumlah butir obat yang diminum lebih sedikit sehingga dapat meningkatkan ketaatan pasien dan kesalahan resep oleh dokter juga diperkecil karena berdasarkan berat badan.
  
Kombinasi dosis tetap terdiri atas :]] 
composer.paru6_1 = [[Kombinasi 2 obat : Isoniazid dan Rifampisin (RH)]] 
composer.paru6_2 = [[Kombinasi 3 obat : Isoniazid, Rifampisin dan Pirazinamid(RHZ)]] 
composer.paru6_3 = [[Kombinasi 4 obat : Isoniazid, Rifampisin, Pirazinamid dan Etambutol (RHZE) ]] 
composer.paru6_4 = [[Dosis harian KDT di Indonesia distandarisasi menjadi 4 kelompok berdasarkan berat badan : 30-37 kb BB, 38-54 kg BB, 55-70 kg BB dan lebih dari 70 kg BB.]]
composer.paru6_5 = [[DOSIS REKOMENDASI OAT LINI PERTAMA PADA DEWASA :]] 
composer.paru6_6 = [[*Pasien berusia di atas 60 tahun tidak dapat menoleransi lebih dari 500- 700mg/hari, beberapa pedoman merekomendasikan dosis 10mg/kg BB pada pasien kelompok usia ini. Pasien dengan berat badan di bawah 50 kg tidak dapat menoleransi dosis lebih dari 500-750 mg/hari.]]




composer.paru7 = [[Pasien Kasus Baru]]
composer.paru7_1 = [[Pasien dengan kasus baru diasumsikan peka terhadap OAT kecuali :]]
composer.paru7_2 = [[Tinggal di daerah dengan prevalensi resisten Isoniazid tinggi, atau]]
composer.paru7_3 = [[Ada riwayat kontak dengan pasien TB resisten obat. Biasanya pasien kasus baru tersebut akan mempunyai pola resistensi obat yang sama dengan kasus sumber. Pada kasus ini sebaiknya dilakukan uji resistensi obat sejak awal pengobatan, dan sementara menunggu hasil uji tersebut maka paduan obat yang berdasarkan kasus sumber sebaiknya dimulai.]]
composer.paru7_4 = [[Semua pasien (termasuk kasus yang HIV positif) yang belum pernah diobati harus diberi paduan obat yang disepakati secara internasional yang terdiri dari 2RHZE/4RH :]]
composer.paru7_5 = [[Fase Inisial terdiri dari Isoniazid, Rifampisin, Pirazinamid dan Etambutol yang diberikan selama 2 bulan]]
composer.paru7_6 = [[Fase Lanjutan terdiri dari Isoniazid dan Rifampisin diberikan selama 2 bulan]]
composer.paru7_7 = [[        Paduan alternatif adalah 2RHZE/4R 3 H 3 (berasal dari pemerintah Indonesia) yang harus disertai pengawasan ketat secara langsung oleh pengawas menelan obat (PMO). Pasien yang menerima OAT 3 kali seminggu (R 3 H 3 ), memiliki angka
 
        resistensi obat yang lebih tinggi dibandingkan dengan yang menerima pengobatan harian (RH), sehingga WHO lebih merekomendasikan pengobatan dengan paduan harian sepanjang periode pengobatan OAT (2RHZE/4RH) pada pasien TB paru kasus baru (rekomendasi A).]]
composer.paru7_8 = [[Pasien Dengan Riwayat OAT Sebelumnya]]
composer.paru7_9 = [[        Target Global Plan to Stop TB 2006-1015 adalah semua pasien dengan riwayat pengobatan OAT harus diperiksa uji resistensi OAT pada awal pengobatan. Uji tersebut sedikitnya untuk Isoniazid dan Rifampisin dengan tujuan untuk mengidentifikasi TB resisten obat sedini mungkin sehingga dapat diberikan terapi yang tepat.
 
        Pada daerah dimana tersedia fasilitas uji resistensi obat berdasarkan uji molekular cepat dan didapatkan hasil dalam 1-2 hari maka hasil ini yang digunakan untuk menentukan paduan OAT pasien. Tetapi bilamana fasilitas uji molekular cepat tersebut tidak ada, maka pasien diterapi dengan menggunakan paduan empiris sambil menunggu hasil uji resistensi obat. Pasien tersebut dapat menerima kembali paduan OAT lini pertama (2RHZES/ 1RHZE / 5RHE) dengan catatan bahwa terapi tersebut tidak didukung oleh bukti uji klinis. Metode tersebut di desain untuk digunakan pada daerah dengan prevalensi rendah TB resisten obat primer dan bagi pasien yang sebelumnya diobati paduan yang mengandung Rifampisin pada fase 2 bulan pertama.]] 





        composer.paru8 = [[        Semua pasien harus dipantau untuk menilai respon terapi. Semua pasien, PMO dan tenaga kesehatan diminta memantau dan melaporkan :]]

composer.paru8_1 = [[Gejala TB yang menetap atau muncul kembali, gejala efek samping OAT atau terhentinya pengobatan. ]]
composer.paru8_2 = [[Berat badan pasien tiap bulannya untuk penyesuaian dosis OAT]]
composer.paru8_3 = [[Respon terapi OAT dengan pemeriksaan apusan dahak BTA pada pasien]]
composer.paru8_4 = [[        TB Paru sesuai rekomendasi WHO. Pada rekam medis, yaitu pada Kartu berobat TB dicatat tentang seluruh obat yang diberikan, respon bakteriologis, resistensi obat serta reaksi tidak diinginkan. 
 
Adapun penilaian respon terapi OAT sesuai rekomendasi WHO adalah sebagai berikut: 
Bagi pasien dengan OAT lini pertama yaitu (juga berlaku untuk pasien dengan apusan dahak negatif) : 
]]

composer.paru8_5 = [[Pada kasus baru (terapi 2RHZE/ 4RH)  : Akhir bulan kedua (akhir fase intensif pengobatan)]]
composer.paru8_6 = [[Pada kasus pengobatan ulang (terapi 2RHZES/ 1RHZE/ 5RHE): Akhir bulan ketiga (akhir fase intensif pengobatan)]]

composer.paru8_7 = [[        Pemantauan respon terapi dengan foto toraks tidak diperlukan. Apusan dahak yang positif BTA pada akhir fase intensif OAT lini pertama mengindikasikan ]]
composer.paru8_8 = [[        Respon terhadap terapi OAT harus dimonitor dengan pemeriksaan dahak mikroskopik berkala (2 spesimen) waktu fase intensif selesai (dua bulan). Jika apusan dahak positif pada akhir fase intensif, maka apusan dahak harus diperiksa kembali pada akhir bulan ketiga, dan jika tetap positif maka biakan dan uji resistensi terhadap Isoniazid dan Rifampisin harus dilakukan, tidak usah menunggu sampai akhir bulan kelima. Bila resistensi obat positif maka pasien dinyatakan sebagai gagal. Pada daerah yang tidak ada pemeriksaan biakan dan uji resistensi obat maka ditambahkan pemeriksaan apusan dahak BTA pada satu bulan sebelum akhir pengobatan dan pada akhir pengobatan (bulan keenam) bila masih tetap positif berarti pengobatan gagal. Bila pasien dinyatakan gagal maka Kartu Berobat TB ditutup dengan hasil gagal dan Kartu Berobat TB yang baru dibuka dengan tipe pasien “pengobatan setelah gagal”. Pada pasien dengan apusan dahak BTA negatif atau tidak dilakukan, maka bila hasil apusan dahak tetap negatif pada akhir bulan kedua, maka terapi dilanjutkan tanpa perlu pemantauan apusan dahak lagi. Pemantauan dilakukan secara klinis dan melalui berat badan saja. Pada pasien TB ekstra paru dan pada anak, penilaian respon pengobatan terbaik adalah secara klinis]]
composer.paru8_9 = [[        Pada daerah dengan fasilitas biakan dan uji resistensi obat maka dilakukan pemeriksaan tersebut pada awal pengobatan dan bila hasil apusan dahak BTA positif pada saat pengobatan (pada akhir fase intensif /bulan ketiga).
        Pada daerah yang tidak ada pemeriksaan biakan dan uji resistensi obat bila pada akhir fase intensif apusan dahak masih BTA positif maka dilakukan pemeriksaan apusan dahak BTA pada akhir bulan kelima dan pada akhir pengobatan (bulan kedelapan) , dan bila masih tetap positif berarti pengobatan gagal.
        Pengobatan pasien TB dengan riwayat putus obat (perjalanan pengobatan tidak   dapat dilacak) harus dilakukan biakan M. Tuberkulosis  dan uji resistensi obat pada pasien yang menghentikan pengobatan selama 2 bulan berturut-turut atau lebih
]]

composer.paru9_1 = [[Semua kasus TB dengan konfirmasi bakteriologis dan klinis harus ditempatkan dalam kelompok hasil pengobatan berikut ini kecuali TB resisten Rifampisin (TB-RR) atau TB resisten obat ganda, yang ditempatkan dalam kelompok paduan obat lini kedua.]]
composer.paru9_2 = [[PASIEN TB PARU KONFIRMASI BAKTERIOLOGIS PADA AWAL PENGOBATAN. PADA AKHIR PENGOBATAN DAN ATAU SEBELUMNYA APUSAN DAHAK BTA NEGATIF ATAU BIAKAN NEGATIF.]]
composer.paru9_3 = [[PASIEN TB TELAH MENYELESAIKAN PENGOBATAN DAN TIDAK MEMILIKI BUKTI GAGAL TETAPI TIDAK MEMILIKI BUKTI REKAM MEDIS YANG MENUNJUKAN APUSAN DAHAK MAUPUN BIAKAN NEGATIF BTA PADA AKHIR PENGOBATAN DAN SATU KESEMPATAN SEBELUMNYA, BAIK KARENA TIDAK DILAKUKAN MAUPUN KARENA HASILNYA TIDAK ADA]]
composer.paru9_4 = [[PASIEN TB DENGAN APUSAN DAHAK ATAU BIAKAN POSITIF PADA BULAN KELIMA ATAU SETELAHNYA SELAMA PENGOBATAN. TERMASUK PASIEN DENGAN STRAIN KUMAN RESISTEN OBAT YANG DIDAPATKAN SELAMA PENGOBATAN BAIK PADA APUSAN DAHAK BTA NEGATIF MAUPUN POSITIF]]
composer.paru9_5 = [[PASIEN TB DENGAN STATUS HASIL PENGOBATAN SEMBUH DAN LENGKAP]]

composer.paru10_1 = [[Efek tidak diinginkan OAT dapat diklasifikasikan mayor dan minor. Pasien yang mengalami efek samping OAT minor sebaiknya melanjutkan pengobatan dan diberikan terapi simptomatik. Pada pasien yang mengalami efek samping mayor maka paduan OAT atau OAT penyebab sebaiknya dihentikan pemberiannya.]]
composer.paru10_2 = [[Ruam kulit dengan atau tanpa gatal]]
composer.paru10_3 = [[- Steptomisin
- Isoniazid
- Rifampisin
- Pirazinamid]]
composer.paru10_4 = [[Hentikan OAT]]
composer.paru10_5 = [[Tuli (tidak didapatkan kotoran yang menyumbat telinga pada pemeriksaan otoskopi)]]
composer.paru10_6 = [[Streptomisin]]
composer.paru10_7 = [[Hentikan Streptomisin]]
composer.paru10_8 = [[Pusing (vertigo dan nistagmus)]]
composer.paru10_9 = [[Jaundis (penyebab lain disingkirkan), Hepatitis]] 
composer.paru10_10 = [[- Isoniazid
- Rifampisin
- Pirazinamid]]
composer.paru10_11 = [[Bingung (dicurigai gagal hati akut terinduksi obat bilamana terdapat jaundis)]]
composer.paru10_12 = [[Sebagian besar OAT]]
composer.paru10_13 = [[Gangguan penglihatan (singkirkan penyebab lainnya)]]
composer.paru10_14 = [[Etambutol]]
composer.paru10_15 = [[Hentikan Etambutol]]
composer.paru10_16 = [[Syok, purpura, gagal ginjal akut,]]



composer.paru10_17 = [[Anoreksia, mual, nyeri perut]]
composer.paru10_18 = [[- Isoniazid
- Rifampisin
- Pirazinamid]]
composer.paru10_19 = [[- Berikan obat dengan
bantuan sedikit
makanan, atau
diminum sebelum
tidur.
- Sarankan untuk
menelan pil secara
lambat dengan
sedikit air
- Bila gejala menetap
atau memburuk atau
muntah
berkepanjangan atau
terdapat tanda-tanda
perdarahan
pertimbangkan
kemungkinan ETD
mayor dan rujuk ke
dokter ahli segera]]

composer.paru10_20 = [[Nyeri sendi]]
composer.paru10_21 = [[Isoniazid]]
composer.paru10_22 = [[Berikan aspirin, non steroid anti inflammation atau paracetamol]]

composer.paru10_23 = [[Rasa terbakar, kebas atau kesemutan di tangan dan kaki]] 
composer.paru10_24 = [[Berikan piridoksin 50- 75 mg/hari (13)]]

composer.paru10_25 = [[Air kemih berwarna kemerahan]]
composer.paru10_26 = [[Rifampisin]]
composer.paru10_27 = [[Edukasi pasien sebelum mulai pengobatan bahwa hal ini adalah normal]]

composer.paru10_28 = [[Rasa mengantuk]]
composer.paru10_30 = [[Minumkan obat sebelum tidur]]

composer.paru10_31 = [[Sindrom flu (demam, menggigil, malaise, sakit kepala, nyeri tulang)]] 
composer.paru10_32 = [[Pemberian Rifampisin secara intermiten]]
composer.paru10_33 = [[Ubah pemberian Rifampisin intermiten menjadi setiap hari]]





composer.paru11_1 = [[       Pada ” Stop TB Strategy”, mengawasi dan mendukung pasien untuk minum OAT secara teratur merupakan landasan DOTS (Directly Observed Treatment Short Course) dan membantu mencapai target keberhasilan pengobatan 85%.
 
        DOTS merupakan metode pengawasan yang direkomendasikan oleh WHO yang dilakukan oleh PMO (Pengawas Menelan Obat) yang memastikan bahwa OAT yang ditelan pasien adalah tepat obat, tepat dosis dan tepat interval. PMO sebaiknya adalah orang yang telah dilatih, yang dapat diterima baik dan dipilih bersama dengan pasien.

        DOTS mengandung lima komponen :]]



composer.paru12_1 = [[Setiap kasus TB yang dilayani di fasilitas layanan kesehatan yang meliputi Puskesmas, Rumah Sakit, Balai Pengobatan Penyakit Paru,, Klinik, Dokter Praktek Swasta dan lain-lain dicatat pada formulir sebagai berikut:]]

composer.paru13_1 = [[Berdasarkan uji resistensi obat dari isolat klinis yang dikonfirmasi M. Tuberkulosis , diklasifikasikan sebagai berikut:]]
composer.paru13_2 = [[Monoresisten : Bilamana isolat M. Tuberkulosis kebal terhadap salah satu OAT lini pertama.]]
composer.paru13_3 = [[Poliresisten : Bilamana isolat M. Tuberkulosis kebal terhadap dua atau lebih OAT lini pertama selain kombinasi Rifampisin dan Isoniazid]]
composer.paru13_4 = [[Resisten obat ganda (Multidrug Resistant TB atau MDR-TB): Bilamana isolat M. Tuberkulosis kebal terhadap Isoniazid dan Rifampisin dengan atau tanpa disertai kebal terhadap OAT lainnya.]]
composer.paru13_5 = [[Resisten berbagai OAT (Extensively Drug-Resistant TB atau XDR-TB) : Adalah TB resisten obat ganda yang disertai resisten terhadap salah satu fluorokuinolon dan salah satu dari tiga obat injeksi lini kedua (amikasin, kapreomisin, atau kanamisin)]]
composer.paru13_6 = [[Resisten Rifampisin : Bilamana isolat M. Tuberkulosis kebal terhadap Rifampisin yang dideteksi menggunakan metode fenotipik dan genotipik, dengan atau tanpa resisten terhadap OAT lain. Apapun dengan resisten Rifampisin termasuk dalam kategori ini, baik monoresisten, poliresisten, resisten obat ganda maupun resisten berbagai OAT.]]
composer.paru13_7 = [[Resisten OAT Total (Totally Drug-Reistant Tuberkulosis atau TDR-TB) : Bilamana isolat M. Tuberkulosis kebal dengan semua OAT lini I dan lini II]]


composer.paru14_1 = [[Berdasarkan Program Nasional kriteria suspek TB resisten obat adalah :]]
composer.paru14_2 = [[Kasus kronik atau pasien gagal pengobatan dengan OAT kategori II]]
composer.paru14_3 = [[Pasien dengan hasil pemeriksaan apusan BTA dahak tetap positif setelah bulan ketiga terapi OAT kategori II]]
composer.paru14_4 = [[Pasien yang pernah diobati TB secara substandard di fasyankes tanpa DOTS, termasuk penggunaan OAT lini kedua seperti kuinolon dan kanamisin]]
composer.paru14_5 = [[Pasien gagal pengobatan dengan OAT kategori satu.]]
composer.paru14_6 = [[Pasien dengan hasil pemeriksaan apusan BTA dahak tetap positif setelah sisipan dengan OAT kategori I]]
composer.paru14_7 = [[Kasus TB kambuh]]
composer.paru14_8 = [[Pasien yang kembali berobat setelah lalai pada pengobatan kategori I dan/atau kategori II]]
composer.paru14_9 = [[Pasien suspek TB dengan keluhan, yang tinggal dekat pasien TB resisten obat ganda konfirmasi, termasuk petugas kesehatan yang bertugas di bangsal TB resisten obat ganda]]
composer.paru14_10 = [[Pasien koinfeksi TB-HIV yang tidak memberikan respon klinis terhadap pengobatan TB dengan OAT lini pertama.]]
composer.paru14_11 = [[Diagnosis TB resisten obat ganda dipastikan berdasarkan hasil uji resistensi dari laboratorium dengan jaminan mutu eksternal. Semua suspek TB resisten obat ganda diperiksa dahaknya untuk selanjutnya dilakukan pemeriksaan biakan dan uji resistensi. Jika hasil uji kepekaaan terdapat M. Tuberkulosis yang resisten minimal terhadap Rifampisin dan Isoniazid maka dapat ditegakkan diagnosis TB resisten obat ganda.]]




composer.paru15_1 = [[Pengobatan paduan standar Sebagai dasar paduan pengobatan adalah dari data survei resistensi obat dari populasi pasien yang representatif. Hal ini karena tidak tersedianya hasil uji resistensi individual. Seluruh pasien akan mendapatkan paduan pengobatan yang sama. Pasien yang dicurgai TB resisten obat ganda sebaiknya dikonfirmasi dengan uji rsistensi obat individual.]]
composer.paru15_2 = [[Pengobatan paduan empiris Setiap paduan pengobatan dibuat berdasarkan riwayat pengobatan TB pasien sebelumnya dan data hasil uji resistensi pada populasi reprresentatif. Paduan ini biasanya disesuaikan kembali setelah ada hasil uji resistensi obat imdividual.]]
composer.paru15_3 = [[Pengobatan paduan individual Paduan pengobatan dibuat berdasarkan riwayat pengobatan TB sebelumnya dan hasil uji resistensi pasien bersangkutan]]
composer.paru15_4 = [[        Paduan obat standar TB resisten obat ganda di Indonesia adalah minimal 6 bulan fase intensif dengan paduan obat Pirazinamid, Etambutol, kanamisin, levofloksasin, etionamid, sikloserin dan dilanjutkan 18 bulan fase lanjutan dengan paduan obat Pirazinamid, Etambutol, levofloksasin, etionamid, sikloserin (6Z-(E)- Kn-Lfx- Eto- Cs/18Z-(E)- Lfx-Eto- Cs). Etambutol dan Pirazinamid dapat diberikan namun tidak termasuk obat paduan standar, bila telah terbukti resisten maka Etambutol tidak diberikan.
 
        Pengobatan TB resisten obat ganda dibagi menjadi dua fase yaitu fase intensif dan lanjutan. Lama fase intensif paduan standar Indonesia adalah berdasarkan konversi biakan. Obat suntik diberikan selama fase intensif, diteruskan sekurang-kurangnya 6 bulan atau minimal 4 bulan setelah konversi biakan. Namun rekomendasi WHO tahun 2011 menyebutkan fase intensif yang direkomendasikan paling sedikit 8 bulan. Pendekatan individual termasuk hasil biakan, apusan dahak BTA, foto toraks dan keadaan klinis pasien juga dapat membantu memutuskan menghentikan pemakaian obat suntik. Sedangkan total lamanya pengobatan paduan standar yang berdasarkan konversi biakan adalah meneruskan pengobatan minimal 18 bulan setelah konversi biakan. Namun WHO tahun 2011 merekomendasikan total lamanya pengobatan adalah paling sedikit 20 bulan.]] --paru Khusus----------------------------------------------------------


composer.paru_diagnosis = [[Diagnosa TB ditegakkan bilamana terdapat minimal satu spesimen terkonfirmasi M. tuberculosa atau sesuai dengan gambaran histologi TB atau bukti klinis sesuai TB.]]
















composer.khusus = [[]]

composer.khusus = [[Menegakkan diagnosis TB milier merupakan tantangan, pada dokter yang berpengalaman sekalipun.]]
composer.khusus2 = [[Tuberkulosis milier yang tidak diobati akan berakibat fatal dalam 1 tahun.]]
composer.khusus3 = [[Diagnosis dan pemberian antituberkulosis segera dapat menyelamatkan nyawa.]]
composer.khusus4 = [[Respons terhadap antituberkulosis baik, namun hepatitis imbas obat dan interaksi obat pada HIV/AIDS merupakan masalah utama dalam pengobatan.]] composer.khusus1 = [[Manifestasi klinis TB milier tidak spesifik, gambaran foto toraks tipikal kemungkinan tidak ditemukan sebelum mencapai stadium lanjut, pemeriksaan HRCT relatif sensitif dan menunjukkan gambaran nodul milier yang terdistribusi acak. Pemeriksaan ultrasonografi, CT- Scan dan magnetic resonance imaging (MRI) berguna untuk menentukan keterlibatan organ lain (TB ekstraparu) pada TB milier. Pemeriksaan funduskopi untuk mencari tuberkel koroid, pemeriksaan histopatologis dari biopsi jaringan, pemeriksaan biakan M. tuberculosis dari dahak, cairan tubuh dan jaringan tubuh lain penting dalam memastikan diagnosis.]]
composer.khusus5 = [[Komplikasi yang dapat terjadi adalah gagal napas, koroid tuberkel dan tuberkuloma otak.]] 
composer.khusus6 = [[Kriteria diagnosis TB milier:]]
composer.khusus7 = [[Presentasi klinis sesuai dengan diagnosis tuberkulosis seperti demam dengan peningkatan suhu di malam hari, penurunan berat badan, anoreksia, takikardi, keringat malam menetap setelah pemberian antituberkulosis selama 6 minggu.]]
composer.khusus8 = [[Foto toraks menunjukkan gambaran klasik pola milier]]
composer.khusus9 = [[Lesi paru berupa gambaran retikulonodular difus bilateral di belakang bayangan milier yang dapat dilihat pada foto toraks maupun HRCT]] 
composer.khusus10 = [[Bukti mikrobiologi dan atau histopatologi menunjukkan tuberkulosis]]
composer.khusus11 = [[Pengobatan TB Milier]]
composer.khusus12 = [[Rawat inap]]
composer.khusus13 = [[Paduan obat: 2 RHZE / 4 RH]]
composer.khusus14 = [[Pada keadaan khusus (sakit berat), tergantung keadaan klinis, radiologi dan evaluasi pengobatan, maka pengobatan lanjutan dapat diperpanjang]]
composer.khusus15 = [[Pemberian kortikosteroid hanya diberikan pada keadaan :]]
composer.khusus16 = [[tanda / gejala meningitis]]
composer.khusus17 = [[sesak napas]]
composer.khusus18 = [[tanda / gejala toksik]]
composer.khusus19 = [[demam tinggi]]


composer.khusus1_1 = [[Diabetes Melitus (DM) merupakan salah satu faktor risiko tersering pada pasien TB paru. Diabetes berhubungan dengan peningkatan risiko kegagalan dan kematian dalam pengobatan tuberkulosis. Pasien TB-DM infeksinya lebih berat, muatan mycobacterial yang lebih banyak, tingkat kegagalan pengobatan yang lebih tinggi dan waktu konversi yang lebih lama. Setelah 1 tahun, pasien TB-DM cenderung lebih banyak yang menjadi TB resistens obat ganda dibanding TB non DM. Pasien TB-DM juga mengalami keterlambatan pemulihan indeks massa tubuh dan kadar hemoglobin yang merupakan hal terpenting pada proses pemulihan. Penanganan TB-DM harus difokuskan pada diagnosis awal, pengendalian kadar gula darah serta monitoring ketat klinis dan pengobatan. Dengan demikian perlu dilakukan skrining TB yang teratur pada pasien DM, terutama yang menunjukkan gejala yang spesifik.]]
composer.khusus1_2 = [[Rekomendasi pengobatan tuberkulosis dengan diabetes melitus:]]
composer.khusus1_3 = [[Paduan OAT pada prinsipnya sama dengan TB tanpa DM,dengan syarat kadar gula darah terkontrol]]
composer.khusus1_4= [[Apabila kadar gula darah tidak terkontrol, maka lama pengobatan dapat dilanjutkan sampai 9 bulan]]
composer.khusus1_5 = [[Hati-hati dengan penggunaan etambutol, karena efek samping etambutol pada mata; sedangkan pasien DM sering mengalami komplikasi kelainan pada mata]]
composer.khusus1_6= [[Perlu diperhatikan penggunaan rifampisin karena akan mengurangi efektivitas obat oral antidiabetes (sulfonil urea) sehingga dosisnya perlu ditingkatkan]]
composer.khusus1_7 = [[Perlu pengawasan sesudah pengobatan selesai, untuk mendeteksi dini bila terjadi kekambuhan]]



composer.khusus2_1 = [[]]
composer.khusus2_1 = [[Deteksi dini tuberkulosis pada pasien HIV harus dilakukan dengan teliti dan diperlukan pengalaman praktisi. Gejala TB pada pasien HIV tidak spesifik. Tuberkulosis ekstraparu lebih sering ditemukan pada pasien dengan HIV. Sehingga bila ditemukan TB ekstraparu harus dipikirkan kemungkinan infeksi HIV. Tuberkulosis ekstraparu yang sering ditemukan adalah limfadenopati pada leher, abdominal, aksila, mediastinal, efusi pleura, efusi perikardial, efusi peritonealdan meningitis. Uji HIV dan konseling harus direkomendasikan pada semua pasien yang menderita atau yang diduga menderita tuberkulosis. Baik deteksi dini TB pada pasien HIV maupun deteksi dini HIV pada pasien TB keduanya penting untuk meningkatkan penemuan dini koinfeksi TB-HIV sehingga dapat memulai pengobatan lebih cepat dan keberhasilan pengobatan akan lebih baik.]]
composer.khusus2_2 = [[Hal-hal yang perlu diketahui dalam menegakkan diagnosis pada pasien TB dengan HIV adalah sebagai berikut:]]
composer.khusus2_3 = [[Gambaran klinis]]
composer.khusus2_4 = [[TB pada pasien HIV/AIDS batuk bukan merupakan gejala umum. Demam dan penurunan berat badan merupakan gejala yang penting. Tuberkulosis ekstraparu perlu diwaspadai pada orang hidup dengan HIV/AIDS(ODHA) karena kejadiannya lebih sering dibandingkan TB dengan HIV negatif. Tuberkulosis ekstraparu pada pasien HIV merupakan tanda bahwa penyakitnya sudah lanjut.]] 
composer.khusus2_5 = [[Sputum BTA]]
composer.khusus2_6 = [[Karena sulitnya diagnosis TB pada pasien HIV secara klinis dan pemeriksaan sputum BTA lebih sering negatif, diperlukan pemeriksaan biakan M. tuberculosis yang merupakan baku emas untuk diagnosis TB. Perlu juga dilakukan uji sensitivitas obat untuk mengetahui TB MDR karena HIV merupakan salah satu faktor risiko TB-MDR.]] 
composer.khusus2_7 = [[Xpert MTB/RIF]]
composer.khusus2_8 = [[Penggunaan Xpert MTB/RIF dalam algoritma diagnostik TB untuk populasi ODHA adalah cost-effective dalam mengurangi kematian dini orang dengan HIV lanjut dan sangat cost-effective dalam meningkatkan harapan hidup ODHA yang memulai terapi ARV. Pemeriksaan Xpert MTB/RIF meningkatkan sensitivitas, ketepatan waktu dan deteksi resistensi rifampisin pada pasien dengan HIV. Diagnosis TB dengan resisten obat pada pasien dengan HIV memungkinkan inisiasi terapi yang tepat.]]
composer.khusus2_9 = [[Foto toraks]]
composer.khusus2_10 = [[Gambaran foto toraks bervariasi baik lokasi maupun bentuknya. Umumnya gambaran foto toraks pada TB terdapat di apeks, tetapi pada TB-HIV bukan di apeks terutama pada HIV lanjut. Pada TB- HIV awal gambaran foto toraks dapat sama dengan gambaran foto toraks TB pada umumnya, namun pada HIV lanjut gambaran foto toraks sangat tidak spesifik. Pada pasien TB-HIV sering ditemukan gambaran TB milier.]]
composer.khusus2_11 = [[Penggunaan antibiotik pada pasien suspek TB dengan HIV positif.]]
composer.khusus2_12 = [[Pemberian antibiotik pada pasien suspek TB paru sebagai alat bantu diagnosis TB paru tidak direkomendasikan lagi karena hal ini dapat menyebabkan keterlambatan diagnosis TB dengan konsekuensi keterlambatan pengobatan TB sehingga meningkatkan risiko kematian. Penggunaan antibiotik quinolon sebagai terapi infeksi sekunder pada TB dengan HIV positif harus dihindari, sebab golongan antibiotik ini respons terhadap mikobakterium TB sehingga dikhawatirkan menghilangkan gejala sementara dan kemungkinan timbulnya kuman kebal obat. Antibiotik golongan quinolon ini dicadangkan sebagai OAT lini kedua.]]
composer.khusus2_13 = [[Pencegahan Pajanan]]
composer.khusus2_14 = [[Faktor yang dapat meningkatkan angka penularan adalah letak infeksi TB (paru atau laring), sputum BTA positif, kavitas serta aerolisasi saat batuk atau berbicara. Paparan terhadap pasien TB sputum BTA negatif memberikan transmisi yang lebih rendah dibandingkan pasien TB sputum BTA positif.Vaksinasi BCG pada orang dengan HIV dikontraindikasikan karena potensinya untuk menyebabkan penyakit TB diseminata.]]
composer.khusus2_15 = [[Harus dijelaskan pada pasien HIV bahwa tinggal di lingkungan berisiko tinggi untuk terjadinya penularan TB (seperti lingkungan kumuh dan panti jompo) akan meningkatkan kemungkinan terjadinya infeksi M. Tuberculosis (Rekomendasi B)]]
composer.khusus2_16 = [[Pada fasilitas kesehatan dan lingkungan berisiko tinggi untuk terjadinya penularan TB, pasien dengan kecurigaan infeksi TB harus dipisahkan dari pasien lain, terutama dari pasien HIV (Rekomendasi A)]]
composer.khusus2_17 = [[Pengobatan]]
composer.khusus2_18 = [[Pada prinsipnya tata laksana pengobatan TB pada pasien dengan infeksi HIV sama seperti pasien TB tanpa HIV. Pengobatan pasien dengan koinfeksi TB-HIV lebih sulit dari pada TB pada pasien tanpa HIV. Pasien TB-HIV mempunyai sistem imunitas yang rendah dan sering ditemukan infeksi hepatitis sehingga sering timbul efek samping obat, interaksi antar obat yang akan memperburuk kondisi pasien dan obat harus dihentikan atau dikurangi dosisnya maka pengobatan pun menjadi lebih panjang serta kepatuhan pasien sering terganggu. Semua pasien (termasuk yang terinfeksi HIV) yang belum pernah diobati harus diberikan paduan obat lini pertama yang disepakati secara internasional menggunakan obat yang bioavailibilitinya telah diketahui.]]
composer.khusus2_19 = [[Fase awal: 2 bulan INH, RIF, PZA, dan EMB]]
composer.khusus2_20 = [[Fase lanjutan: 4 bulan INH dan RIF, atau 6 bulan INH dan etambutol Pemberian INH dan EMB selama 6 bulan untuk fase lanjutan tidak direkomendasi untuk pasien TB dengan HIV karena mudah terjadi kegagalan pengobatan atau kambuh.]]
composer.khusus2_21 = [[Semua pasien TB dengan HIV atau pasien TB yang tinggal dilingkungan dengan prevalens HIV tinggi, pengobatan TB fase awal dan fase lanjutan harus diberikan setiap hari (Rekomendasi A) Untuk pasien yang tidak mungkin diberikan setiap hari, pemberian 3 kali seminggu merupakan alternatif (Rekomendasi B)]]
composer.khusus2_22 = [[Dosis dan Interaksi Obat :]]
composer.khusus2_23 = [[Dosis OAT yang diberikan dianjurkan untuk mengikuti anjuran internasional dan sangat dianjurkan dalam kombinasi dosis tetap (KDT). Prinsip pengobatan pasien TB-HIV adalah mendahulukan pengobatan TB. Pengobatan antiretroviral (ARV) dimulai sesegera mungkin setelah dapat ditoleransi dalam 2-8 minggu pengobatan fase awal. Pengobatan ARV sebaiknya hanya diberikan oleh dokter yang telah dilatih khusus HIV karena obat ARV bisa berinteraksi dengan OAT dan juga dapat meningkatkan risiko efek samping. Efavirenz (EFV) mewakili golongan NNRTI baik digunakan untuk pemberian ART pada pasien dalam terapi OAT. Efavirenz direkomendasikan karena mempunyai interaksi dengan rifampisin yang lebih ringan dibanding Nevirapine.Pada pemberian OAT dan ARV perlu diperhatikan interaksi antar obat-obat yang digunakan, peran ARV, tumpang tindih efek samping obat, immune-reconstitution inflammatory syndrome (IRIS) dan masalah kepatuhan pengobatan.]]
composer.khusus2_24 = [[Pencegahan Infeksi Oportunistik lainnya]]
composer.khusus2_25 = [[Pasien dengan infeksi HIV mudah sekali terkena infeksi oportunistik sehingga semua pasien HIV yang telah terdiagnosis TB sebagai salah satu infeksi opportunistik, harus diberikan kotrimoksazol sebagai pencegahan infeksi lain. Pada pusat layanan kesehatan yang mempunyai fasilitas pemeriksaan CD4, profilaksis kotrimoksazol direkomendasikan untuk pasien dengan nilai CD4 < 200 sel/mm3 pada pasien HIV tanpa TB, sedangkan pada pasien HIV yang telah didiagnosis TB, kotrimoksazol dapat diberikan langsung tanpa melihat nilai CD4. Pemberian kotrimoksazol tersebut dapat menurunkan kejadian infeksi oportunistik seperti Pneumocystis jiroveci pneumonia, toxoplasmosis infection, malaria dan lain-lain. Berdasarkan data observasi pencegahan kotrimoksazol pada pada pasien HIV menurunkan mortalitas 50%.]]
composer.khusus2_26 = [[Isoniazid sebagai Pencegahan dan Terapi TB Laten]]
composer.khusus2_27 = [[Pasien dengan HIV setelah dievaluasi dengan seksama tidak menderita tuberkulosis aktif, sebaiknya diobati sebagai infeksi Tuberkulosis laten dengan isoniazid selama 6 – 9 bulan (Standar 16 International Standards for Tuberculosis Care)]]
composer.khusus2_28 = [[Anak berusia < 5 tahun dan individu semua usia dengan infeksi HIV yang memiliki kontak erat dengan pasien Tuberkulosis dan setelah dievaluasi dengan seksama tidak menderita Tuberkulosis aktif, sebaiknya diobati sebagai infeksi laten Tuberkulosis dengan Isoniazid (Standar 19 International Standards for Tuberculosis Care)]]
composer.khusus2_29 = [[Sehubungan Indonesia merupakan negara endemik TB, maka hal ini belum diterapkan di Indonesia, menunggu hasil kajian dari implementasi awal yang akan dilakukan oleh Kementerian Kesehatan.]]




composer.khusus3_1 = [[Tuberkulosis maternal berhubungan dengan peningkatan risiko abortus spontan, mortalitas perinatal, kecil untuk usia gestasi dan berat badan lahir rendah. Tuberkulosis kongenital merupakan komplikasi yang jarang terjadi pada infeksi tuberkulosis in utero yang merupakan akibat penyebaran hematogen maternal. Tuberkulosis kongenital sulit didiagnosis karena gejalanya mirip infeksi neonatal dan kongenital lainnya. Gejala biasanya muncul pada 2-3 minggu pascapartus. Gejalanya berupa hepatosplenomegali, distress pernapasan, demamdan foto toraks biasanya abnormal.]]
composer.khusus3_2 = [[Isoniazid]]
composer.khusus3_3 = [[Isoniazid (Kategori Kehamilan A) direkomendasikan untuk TB pada kehamilan meskipun terdapat peningkatan risiko hepatotoksisitas pada ibu hamil. Gejala harus dimonitor dengan pemeriksaan fungsi hati yang dianjurkan setiap 2 minggu pada 2 bulan pertama dan setiap bulan pada bulan berikutnya. Isoniazid sebagai profilaksis juga aman dan direkomendasikan pada daerah berisiko tinggi seperti koinfeksi dengan HIV atau riwayat kontak dengan penderita tuberkulosis. Suplementasi piridoksin 50mg/hari dianjurkan untuk setiap ibu hamil yang mengkonsumsi isoniazid karena defisiensi sering terjadi pada ibu hamil dibandingkan populasi umum.]]
composer.khusus3_4 = [[Rifampisin]]
composer.khusus3_5 = [[Rifampisin (Kategori Kehamilan C) dapat menyebabkan pendarahan yang berhubungan dengan hipoprotrominemia pada bayi apabila dikonsumsi pada trimester ketiga kehamilan. Penggunaan rifampisin direkomendasikan pada ibu hamil dengan tuberkulosis dan vitamin K harus diberikan pada ibu (10mg/hari) dan bayi setelah melahirkan apabila rifampisin digunakan pada trimester tiga kehamilan menjelang partus.]]
composer.khusus3_6 = [[Etambutol]]
composer.khusus3_7 = [[Etambutol (Kategori Kehamilan A) direkomendasikan untuk TB pada kehamilan.]]
composer.khusus3_8 = [[Pirazinamid]]
composer.khusus3_9 = [[Pirazinamid (Kategori Kehamilan belum tersedia). Sampai saat ini belum terdapat laporan efek samping penggunaan obat ini pada penatalaksanaan pasien TB. Apabila pirazinamid tidak digunakan maka paduan obat 9 bulan isoniazid, rifampisin dan etambutol dianjurkan.]]
composer.khusus3_10 = [[Streptomisin]]
composer.khusus3_11 = [[Streptomisin (Kategori Kehamilan belum tersedia) berhubungan dengan ototoksisitas janin dan TIDAK DIREKOMENDASIKAN untuk pengobatan tuberkulosis pada wanita hamil.]]
composer.khusus3_12 = [[Fluorokuinolon]]
composer.khusus3_13 = [[Fluorokuinolon (Kategori Kehamilan B3) hanya digunakan pada wanita hamil apabila keuntungan terapi lebih besar dibandingkan risikonya dan hanya dapat digunakan oleh dokter yang sudah berpengalaman dalampenanganan tuberkulosis.]]
composer.khusus3_14 = [[OAT pada Ibu Menyusui]]
composer.khusus3_15 = [[Meskipun terdapat konsentrasi OAT yang disekresikan pada ASI namun konsentrasinya minimal dan bukan merupakan kontraindikasi pada perempuan menyusui. Konsentrasi OAT pada ASI sangat rendah sehingga tidak bisa diandalkan untuk terapi TB pada bayi. Apabila bayi membutuhkan terapi TB maupun profilaksis maka harus diberikan paduan obat standar yang dosisnya sesuai dengan berat badan. Ibu dengan TB paru sensitif obat dapat melanjutkan OAT sambil menyusui dan bayinya mendapat profilaksis TB selama 6 bulan dengan INH 10mg/kgBB/hari apabila terbukti tidak menderita TB dan diikuti dengan vaksinasi BCG. Bayi dengan ASI hanya mendapatkan 20% dosis INH dibandingkan dengan dosis yang seharusnya didapatkan sedangkan untuk OAT lainnya konsentrasinya lebih kecil.]]
composer.khusus3_16 = [[OAT pada Perempuan Usia Produktif]]
composer.khusus3_17 = [[Pada perempuan usia produktif yang mendapat pengobatan TB dengan rifampisin, dianjurkan untuk tidak menggunakan kontrasepsi hormonal, karena dapat terjadi interaksi obat yang menyebabkan efektivitas obat kontrasepsi hormonal berkurang.Tidak ada indikasi pengguguran pada pasien TB dengan kehamilan.]]





composer.khusus5_1 = [[        Pasien dengan penyakit ginjal kronik, sedang menjalani dialisis serta pasca transplantasi ginjal mempunyai peningkatan risiko untuk menderita tuberkulosis. Respons terhadap uji tuberkulin menurun sekitar 50% pada pasien dengan penyakit ginjal kronik sehingga diagnosis TB tidak dapat disingkirkan pada pasien dengan hasil uji tuberkulin negatif.
 
        Stadium pada penyakit ginjal kronik adalah:]]
composer.khusus5_2 = [[Stadium 1 : Klirens kreatinin dan fungsi normal namun terdapat kelainan traktus urinarius seperti ginjal polikistik dan struktur abnormal]]
composer.khusus5_3 = [[Stadium 2 : Klirens kreatinin 60-90 ml/menit]]
composer.khusus5_4 = [[Stadium 3 : Klirens kreatinin 30-60 ml/menit]]
composer.khusus5_5 = [[Stadium 4 : Klirens kreatinin 15-30 ml/menit]]
composer.khusus5_6 = [[Stadium 5 : Klirens kreatinin < 15 ml/menit dengan atau tanpa dialisis]]
composer.khusus5_7 = [[        Pasien dengan TB paru maupun TB ekstra paru harus menerima anti tuberkulosis standar dengan modifikasi interval dosis dengan durasi standar. Kemoprofilaksis juga diberikan pada pasien yang BUKAN TB aktif namun mempunyai riwayat pengobatan TB sebelumnya. Untuk kemoprofilaksis dapat menggunakan isoniazid 300mg/hari + piridoksin10-25mg/hari selama 6 bulan atau isoniazid+rifampisin+piridoksin selama 3 bulan atau rifampisin tunggal selama 4-6 bulan. Ketiga regimen tersebut adekuat untuk kemoprofilaksis. Penggunaan isoniazid jangka panjang tidak direkomendasikan. Tidak terdapat bukti untuk regimen kemoprofilaksis lebih dari 6 bulan untuk isoniazid tunggal, 3 bulan untuk isoniazid+rifampisin atau 4-6 bulan untuk rifampisin tunggal.
 
        Apabila pasien yang sedang menjalani kemoprofilaksis menunjukan gejala TB maka pemeriksaan lebih lanjut segera dilakukan (Rekomendasi A).]]
composer.khusus5_8 = [[Jika pasien menunjukan gejala TB maka dilakukan pemeriksaan untuk mengisolasi organisme untuk uji kepekaan.]]
composer.khusus5_9 = [[Tuberkulosis ekstra paru harus dipikirkan pada pasien dengan gejala sistemik atau sistem spesifik yang tidak dapat dijelaskan terutama pada pasien yang sedang menjalani dialysis atau dialisis peritoneal, biasanya sering dijumpai peritonitis TB.]]
composer.khusus5_10 = [[Rifampisin dapat berinteraksi dengan paduan obat imunosupresan, meningkatkan kemungkinan penolakan transplantasi, dosis mycophenolatemofetil, takrolimus dan sisklosporin sehingga memerlukan penyesuaian dosis. Dosis kortikosteroid harus digandakan pada pasien yang menerima rifampisin. (Rekomendasi B)]]
composer.khusus5_11 = [[         Pengobatan TB yang dianjurkan adalah 2 bulan isoniazid, rifampisisn, etambutol dan pirazinamid dilanjutkan dengan 4 bulan isoniazid dan rifampisin. Isoniazid dan rifampisin dieliminasi melalui eksresi bilier sehingga tidak diperlukan penyesuaian dosis. Selama menerima isoniazid, pasien dengan gangguan ginjal maupun gagal ginjal harus diberikan bersama dengan piridoksin untuk mencegah neuropati perifer. Eksresi etambutol dan metabolit pirazinamid terjadi di ginjal sehingga diperlukan penyesuaian dosis untuk kedua obat tersebut. Etambutol diberikan 15 mg/kgBB dan pirazinamid 25 mg/kgBB sebanyak 3x seminggu. Streptomisin menyebabkan peningkatan nefrotoksik dan ototoksik sehinggga streptomisin sebaiknya tidak diberikan pada pasien dengan gagal ginjal, namun apabila harus diberikan maka dosisnya 15mg/kgBB (dosis maksimal 1 gram) yang diberikan 2-3 kali seminggu dengan memonitor kadar obat dalam darah.]]
composer.khusus5_12 = [[Dosis yang direkomendasikan untuk pasien dewasa dengan penurunan fungsi ginjal dan untuk pasien dewasa dengan hemodialisis]]



composer.khusus6_1 = [[        Pasien dengan pembawa virus hepatitis, riwayat hepatitis akut serta konsumsi alkohol yang berlebihan apabila tidak terdapat bukti penyakit hati kronik dan fungsi hati normal dapat mengkonsumsi OAT standar. Reaksi hepatotoksik lebih sering terjadi sehingga perlu diantisipasi lebih lanjut. Pada pasien dengan penyakit hati lanjut dan tidak stabil, pemeriksaan fungsi hati harus dilakukan sebelum pengobatan dimulai. Apabila kadar SGOT &gt;3x normal sebelum terapi dimulai maka paduan obat berikut ini perlu dipertimbangkan. Semakin tidak stabil dan lanjut penyakit hatinya maka semakin sedikit obat hepatotoksik yang bisa digunakan. Monitoring klinis dan pemeriksaan fungsi hati harus dilakukan secara berkala. Paduan obat yang dapat diberikan adalah:
        Dua obat hepatotoksik
- 9 bulan isoniazid + rifampisin + etambutol
- 2 bulan isoniazid + rifampisin + etambutol + streptomisin
diikuti 6 bulan isoniazid + rifampisin
- 6-9 bulan rifampisin + pirazinamid + etambutol

Satu obat hepatotoksik
- 2 bulan isoniazid, etambutol, streptomisin diikuti 10 bulan
isoniazid+etambutol
 
Tanpa obat hepatotoksik
- 18-24 bulan streptomisin, etambutol, fluorokuinolon

        Penggunaan antituberkulosis pada kelainan hati bergantung dari derajat beratnya penyakit dan derajat dekompensasi. Pada penyakit hati derajat sedang (Sirosis Child B) dapat digunakan satu atau dua obat hepatotoksik sementara seluruh obat hepatotoksik seluruhnya harus dihindari pada sirosis Child C. Bila ada kecurigaan penyakit hati, dianjurkan pemeriksaan faal hati sebelum pengobatan. Pada kelainan hati, pirazinamid tidak boleh diberikan

        Paduan obat yang dianjurkan (rekomendasi WHO) ialah 2RHES/6RH atau 2HES/10 HE.

        Pada pasien hepatitis akut dan atau klinis ikterik, sebaiknya OAT ditunda sampai hepatitis akutnya mengalami penyembuhan. Pada keadaan sangat diperlukan dapat diberikan S dan EMB maksimal 3 bulan sampai hepatitis menyembuh dan dilanjutkan dengan 6RH. Sebaiknya rujuk ke dokter spesialis paru atau spesialis penyakit dalam]]



composer.khusus7_1 = [[        Hepatitis imbas obat adalah kelainan fungsi hati akibat penggunaan obat-obat hepatotoksik. Biasanya terjadi + 20 hari setelah terapi antituberkulosis dimulai dan berlangsung selama + 14 hari. Gejala yang paling sering ditemukan adalah mual, muntah dan anoreksia. Sekitar 79,25% pasien sembuh, 16,98% pasien mengalami perbaikan, 1,89% pasien gagal dengan serum SGOT dan SGPT tetap meningkat dan 1,89% orang meninggal. Faktor risiko terpenting pada hepatitis imbas obat adalah penurunan berat badan 2 kg atau lebih dalam 4 minggu pertama pengobatan tuberkulosis. Faktor risiko lainnya berupa infeksi hepatitis C, usia &gt;60 tahun dan TB resistens obat ganda. Sebanyak 33% pasien dengan hepatitis imbas obat tidak menunjukkan gejala klinis termasuk 8 orang dengan hepatotoksisitas berat sehingga pemeriksaan fungsi hati berkala berguna untuk mendeteksi kerusakan hati asimtomatis, mengurangi angka perawatan di RS dan meningkatkan komplians pengobatan tuberkulosis.]]
composer.khusus7_2 = [[        Tatalaksana hepatitis imbas obat:]]
composer.khusus7_3 = [[Bila klinis (+) (Ikterik, gejala mual, muntah) -> OAT dihentikan]]
composer.khusus7_4 = [[Bila gejala (+) dan SGOT, SGPT >= 3 kali OAT dihentikan]]
composer.khusus7_5 = [[Bila gejala (+) dan SGOT, SGPT >= 3 kali OAT dihentikan]]
composer.khusus7_6 = [[Bila gejala klinis (-), laboratorium terdapat kelainan:]]
composer.khusus7_7 = [[Bilirubin -> 2 OAT dihentikan]]
composer.khusus7_8 = [[SGOT, SGPT >= 5 kali OAT dihentikan]]
composer.khusus7_9 = [[SGOT, SGPT >= 3 kali teruskan pengobatan, dengan pengawasan]]
composer.khusus7_10 = [[Paduan OAT yang dianjurkan:]]
composer.khusus7_11 = [[Hentikan OAT yang bersifat hepatotoksik (RHZ)]]
composer.khusus7_12 = [[Setelah itu, monitor klinis dan laboratorium. Bila klinis dan laboratorium kembali normal (bilirubin, SGOT, SGPT), maka tambahkan INH desensitisasi sampai dengan dosis penuh (300 mg). Selama itu perhatikan klinis dan periksa laboratorium saat INH dosis penuh, bila klinis dan laboratorium kembali normal, tambahkan rifampisin, desensitisasi sampai dengan dosis penuh (sesuai berat badan). Sehingga paduan obat menjadi RHES]]
composer.khusus7_13 = [[Pirazinamid tidak boleh diberikan lagi]]





composer.khusus8_1 = [[        Kesulitan diagnosis tuberkulosis pada geriatri adalah kurangnya kemampuan penderita untuk memberikan keterangan dengan jelas mengenai gejala yang dirasakan karena keterbatasan tertentu yang terkait usia seperti berkurangnya memori, tuli, buta, confusion state ataupun gangguan berbicara. Penyakit kronik lain dan beberapa jenis penyakit keganasan yang sering terjadi pada usia geriatri akan memberikan gambaran klinis yang tumpang tindih.
 
        Terapi tuberkulosis pada geriatri tidak mudah karena populasi geriatri terutama yang sangat tua tidak dapat diandalkan untuk minum obat secara teratur, pada waktu yang tepat atau dalam dosis yang tepat, terutama jika beberapa obat harus diminum secara bersamaan. Memori yang buruk, penglihatan yang buruk, dan kebingungan mental mungkin menjadi faktor yang mendasari kondisi ini. Penderita geriatri sering menjadi apatis tentang pengobatan mereka dan sering didapatkan kurangnya tekad atau keinginan untuk menyelesaikan program pengobatan enam bulan. Dalam suatu studi retrospektif, telah dilaporkan bahwa penderita geriatri hampir tiga kali lipat lebih mungkin untuk bereaksi terhadap OAT dibandingkan dengan pasien- pasien yang lebih muda. Berbagai penelitian menunjukkan bahwa usia lanjut merupakan prediktor penting hepatotoksisitas akibat INH dan rifampisin. Manfaat terapi etambutol dan streptomisin harus dipertimbangkan terhadap risiko dalam pengelolaan pasien usia lanjut dan dosisnya juga harus disesuaikan mengingat efek samping yang sering terjadi pada pasien geriatri.]]







--Anak  ----------------------------------------------------------------------

composer.anak1_1 = [[        Gejala TB pada anak seringkali tidak khas. Diagnosis pasti ditegakkan dengan menemukan kuman TB pada pemeriksaan mikrobiologis. Pada anak, sulit untuk mendapatkan spesimen diagnostik yang representatif dan berkualitas baik. Seringkali, walaupun spesimen berhasil diperoleh, M. tuberculosis jarang ditemukan pada sediaan langsung maupun biakan.
 
        Estimasi jumlah pasien TB anak adalah sekitar 10-15% dari jumlah kasus TB dewasa. Laporan TB anak di Indonesia pada tahun 2012 menyatakan jumlah kasus TB anak 8,2% dari seluruh kasus, namun permasalahannya adalah jika dirinci data dari masing-masing propinsi, angkanya bervariasi antara 1,7-15,6%. Angka ini menyiratkan belum adanya standar penegakan diagnosis TB pada anak sehingga menghasilkan rentang data yang sangat besar; kemungkinan overdiagnosis di beberapa propinsi, tetapi underdiagnosis di propinsi lainnya.
 
        Data ini pun sebagian besar berasal dari puskesmas dan RS yang sudah menjalankan strategi DOTS. Data TB anak dari dokter praktik swasta hampir seluruhnya belum masuk dalam sistem rekam lapor TB nasional. Bahkan RS pemerintah pun belum seluruhnya melaksanakan strategi DOTS. Kecenderungan yang teramati di lapangan adalah TB anak di layanan primer pemerintah umumnya masih under- diagnosis sedangkan di layanan swasta terjadi over- diagnosis yang luar biasa. ]]



composer.anak2_1 = [[Anak (menurut sistem rekam lapor TB adalah mereka yang berusia 0-14 tahun) dapat terkena TB pada usia berapa pun namun tersering pada usia 1-4 tahun.]] 
composer.anak2_2 = [[Risiko morbiditas dan mortalitas tertinggi adalah pada bayi dan anak kurang dari 2 tahun, yaitu kelompok usia yang tersering mengalami TB diseminata.]]
composer.anak2_3 = [[Perjalanan penyakit TB anak dari terinfeksi menjadi sakit TB mayoritas terjadi selama 1 tahun setelah anak terinfeksi, oleh sebab itu angka TB pada anak juga merupakan indikator berlangsungnya transmisi kuman TB di komunitas.]]
composer.anak2_4 = [[Pendekatan diagnosis TB anak melalui 2 cara: investigasi anak yang kontak erat dengan pasien TB BTA positif dan investigasi anak dengan keluhan tanda dan gejala klinis sesuai TB. Adanya pasien TB anak merupakan indikator masih berlangsungnya transmisi kuman TB di komunitas (Rekomendasi C)]]

composer.anak3_1 = [[Suspek TB anak: setiap anak dengan gejala atau tanda mengarah ke TB anak]]
composer.anak3_2 = [[Pasien TB anak: Pasien TB anak yang didiagnosis oleh dokter atau petugas TB untuk diberikan pengobatan TB.]]
composer.anak3_3 = [[Pasien TB anak pasti (definitif): anak dengan hasil biakan positif M.tuberculosis atau tidak ada fasilitas biakan, sekurang-kurangnya 2 dari 3 spesimen dahak SPS hasilnya BTA positif.]]
composer.anak3_4 = [[TB paru: TB yang menyerang jaringan (parenkim) paru, tidak termasuk pleura dan kelenjar pada hilus.]]
composer.anak3_5 = [[TB ekstraparu: TB yang menyerang organ tubuh lain selain paru. Anak dengan gejala hanya pembesaran kelenjar tidak selalu TB ekstraparu. Pasien dengan TB paru dan ekstraparu dicatat sebagai TB paru, tetapi dalam diagnosis disebutkan keduanya.]]
composer.anak3_6 = [[BTA positif: sekurang-kurangnya 1 dari 3 spesimen dahak SPS hasilnya positif]]
composer.anak3_7 = [[BTA negatif: kriteria diagnostik TB paru BTA negatif harus meliputi:]]
composer.anak3_8 = [[Hasil BTA negatif dengan biakan M.tuberculosis, atau]]
composer.anak3_9 = [[Diputuskan oleh dokter untuk diobati OAT dan gambaran radiologis mendukung gambaran TB paru aktif, dan ada bukti kuat baik secara klinis atau laboratorium adanya infeksi HIV atau status HIV negatif atau tidak diketahui tetapi tidak ada perbaikan dengan antibiotik spektrum luas (kecuali OAT, fluorokuinolon dan aminoglikosida)]]
composer.anak3_10 = [[Baru : Kasus TB anak yang belum pernah mendapat pengobatan dengan OAT atau sudah pernah menelan OAT kurang dari satu bulan dengan hasil pemeriksaan bakteriologis sesuai definisi di atas, lokasi penyakit bisa paru atau ekstraparu.]]
composer.anak3_11 = [[Pengobatan ulang : Kasus TB Anak yang pernah mendapat pengobatan dengan OAT lebih dari 1 bulan dengan hasil pemeriksaan bakteriologis sesuai definisi di atas, lokasi penyakit bisa paru atau ekstraparu. Berdasarkan hasil pengobatan sebelumnya, anak dapat diklasifikasikan sebagai relaps, gagal atau default.]]
composer.anak3_12 = [[TB ringan: tidak berisiko menimbulkan kecacatan berat atau kematian]]
composer.anak3_13 = [[TB berat: berisiko menimbulkan kecacatan berat atau kematian, missal meningitis TB, TB milier, TB RO, TB HIV.]]
composer.anak3_14 = [[Pemeriksaan HIV direkomendasikan pada semua anak suspek TB pada deerah endemis HIV atau risiko tinggi terinfeksi HIV. Berdasarkan pemeriksaan HIV, TB anak diklasifikasikan menjadi:]]
composer.anak3_15 = [[HIV positif]]
composer.anak3_16 = [[HIV negatif]]
composer.anak3_17 = [[HIV tidak diketahui]]

composer.anak4_1 = [[Diagnosis pasti : menemukan kuman M. tuberculosis pada pemeriksaan sputum, bilas lambung, cairan serebrospinal, cairan pleura, biopsi jaringan.]]
composer.anak4_2 = [[Diagnosis pasti -> sulit dilakukan, maka diperlukan anamnesis dan pemeriksaan fisik]]
composer.anak4_3 = [[Rekomendasi diagnosis:]]
composer.anak4_4 = [[]]


composer.anak6_1 = [[Efek samping obat lebih jarang terjadi pada anak dibandingkan dewasa.]]
composer.anak6_2 = [[Pemberian etambutol untuk anak yang mengalami TB berat tidak banyak menimbulkan gejala efek samping selama pemberiannya sesuai dengan rentang dosis yang direkomendasikan.]]
composer.anak6_3 = [[Efek samping yang paling penting adalah hepatotoksisitas, yang dapat disebabkan oleh isoniazid, rifampisin atau pirazinamid.]]
composer.anak6_4 = [[Enzim hati tidak rutin diperiksa, pada keadaan peningkatan enzim hati ringan tanpa gejala klinis (kurang dari 5 kali nilai normal) bukan merupakan indikasi penghentian terapi obat anti TB.]]
composer.anak6_5 = [[Jika timbul gejala hepatomegali atau ikterus harus segera dilakukan pengukuran kadar enzim hati dan jika perlu penghentian obat TB.]]
composer.anak6_6 = [[Penapisan ke arah penyebab hepatitis lain harus dilakukan.]]
composer.anak6_7 = [[Obat TB diberikan kembali jika fungsi hati kembali normal, diberikan dengan dosis yang lebih kecil dalam rentang terapi, dengan tetap memonitor kadar enzim hati.]]
composer.anak6_8 = [[Konsultasi ke ahli hepatologi diperlukan untuk tata laksana lebih lanjut.]]



composer.anak7_1 = [[Proteksi: 0-80%]]
composer.anak7_2 = [[Saat ini merupakan satu-satunya imunisasi yang efektif untuk mencegah TB berat (TB milier dan meningitis TB).]]
composer.anak7_3 = [[Pada anak dengan HIV: tidak direkomendasikan untuk tidak mendapat BCG dikhawatirkan dapat menimbulkan BCGitis diseminata yaitu penyakit TB aktif akibat pemberian BCG pada pasien immunokompromais.]]
composer.anak7_4 = [[Dapat diberikan pada bayi lahir dari ibu HIV positif kecuali jika ada konfirmasi bayi telah terinfeksi HIV]]
composer.anak7_5 = [[Profilaksis primer]]
composer.anak7_6 = [[Profilaksis INH 10mg/kg BB dengan rentang dosis 7- 15mg/kgBB diberikan pada anak balita dan anak imunokompromais di segala usia yang kontak erat dengan pasien TB BTA positif]]
composer.anak7_7 = [[Pemberian profilaksis selama 6 bulan dengan pemantauan dan evaluasi minimal satu kali per bulan]]
composer.anak7_8 = [[Bila anak belum mendapatkan imunisasi BCG maka imunisasi diberikan setelah profilaksis selesai dan anak belum atau tidak terinfeksi (uji tuberkulin negatif).]]
composer.anak7_9 = [[Pada anak dengan imunokompromais yang kontak dengan pasien TB aktif, profilaksis INH tetap diberikan meskipun usia di atas 5 tahun.]]
composer.anak7_10 =[[Profilaksis sekunder]]
composer.anak7_11 =[[Diberikan pada anak-anak dengan bukti infeksi TB (uji tuberkulin atau IGRA positif) namun tidak terdapat gejala dan tanda klinis]]
composer.anak7_12 =[[Dosis dan lama pemberian sama dengan profilaksis primer]]


composer.anak3x_1 = [[Sistem skoring hanya digunakan di fasilitas kesehatan primer yang terbatas, baik keterbatasan tenaga medis maupun perangkat diagnosis.]]
composer.anak3x_2 = [[Kasus yang meragukan harus dirujuk ke fasilitas kesehatan yang lebih lengkap.]]
composer.anak3x_3 = [[Untuk fasilitas layanan kesehatan yang lebih lengkap, sistem skoring dapat digunakan sebagai skrining, namun harus dilengkapi dengan pemeriksaan diagnosis yang lebih lengkap.]]
composer.anak3x_4 = [[Anak dinyatakan probable TB jika skoring mencapai nilai 6 atau lebih. Namun, jika anak yang kontak dengan pasien BTA positif dan uji tuberkulinnya positif namun tidak didapatkan gejala, maka anak cukup diberikan profilaksis INH terutama anak balita.]]
composer.anak3x_5 = [[Jika ditemukan salah satu keadaan di bawah ini, pasien dirujuk ke fasilitas pelayanan kesehatan rujukan:]]
composer.anak3x_6 = [[Pasien balita dengan skor 5 dengan gejala klinis yang meragukan, dirujuk ke RS untuk evaluasi lebih lanjut.]]
composer.anak3x_7 = [[Setelah dinyatakan sebagai pasien TB anak dan diberikan OAT, harus dilakukan pemantauan hasil pengobatan secara cermat. Bila respon baik, OAT dilanjutkan. Bila respon klinis tidak baik, maka pasien dirujuk untuk pemeriksaan lebih lanjut.]]


composer.anak5_1 = [[Tata laksana TB anak terdiri terapi dan profilaksis]]
composer.anak5_2 = [[Prinsip pengobatan sama dengan TB dewasa]]
composer.anak5_3 = [[Hal penting dalam tata laksana TB anak:]]
composer.anak5_4 = [[Mengingat tingginya risiko TB disseminata pada anak kurang dari 5 tahun, maka terapi TB hendaknya diberikan segera setelah diagnosis ditegakkan.]]
composer.anak5_5 = [[Perbedaan penting antara anak dengan dewasa, di antaranya adalah usia muda mempengaruhi kecepatan metabolisme obat sehingga anak terutama usia kurang dari 5 tahun memerlukan dosis yang lebih tinggi (mg/kgBB) dibandingkan anak besar atau dewasa.]]
composer.anak5_6 = [[Penelitian menunjukkan pemberian OAT setiap hari lebih baik dibandingkan pemberian OAT intermiten.]]
composer.anak5_7 = [[Anak yang lebih kecil umumnya memiliki jumlah kuman yang jauh lebih sedikit (paucibacillary) sehingga transmisi kuman TB dari pasien anak juga lebih rendah, serta rekomendasi pemberian 4 macam OAT pada fase intensif tidak sekuat pada orang dewasa, kecuali pada BTA positif, TB berat dan adult-type TB.]]
composer.anak5_8 = [[Terapi TB pada anak dengan BTA negatif menggunakan paduan INH, Rifampisin, dan Pirazinamid pada fase inisial 2 bulan pertama kemudian diikuti oleh Rifampisin dan INH pada 4 bulan fase lanjutan. Kombinasi 3 obat tersebut memiliki success rate lebih dari 95% dan efek samping obat kurang dari 2%. Pada table 2 disajikan paduan obat anti TB pada anak.]]
composer.anak5_9 = [[Panduan OAT pada anak]]
composer.anak5_10 = [[Respon terapi dan pemantauan:]]



--Ekstra-------------------------------------------------------------------------
composer.ekstra1_1 = [[        Definisi tuberkulosis ekstraparu adalah pasien dengan tuberkulosis organ selain paru seperti
pleura, kelenjar getah bening, abdomen, traktus genitorinarius, kulit, tulang dan sendi serta selaput
otak.

        Pemeriksaan yang Dianjurkan untuk Diagnosis Tuberkulosis Ekstra paru:]]


composer.ekstra2_1 = [[        Gejala klinis yang paling sering adalah batuk (70%), nyeri dada (75%) dan demam dengan derajat yang rendah hingga tinggi (86%). Pleuritis TB hampir selalu melibatkan salah satu hemitoraks saja (90-95%).

        Diagnosis TB pleuritis bergantung pada terdapatnya basil tuberkulosis pada sputum, cairan pleura, biopsi pleura maupun granuloma di pleura pada pemeriksaan histopatologis. Diagnosis pleuritis TB juga dapat menggunakan aktifitas adenosine deaminase, protein cairan pleura, laktat dehidrogenase dan komponen seluler.

        Pengobatan TB pleura sama dengan pengobatan TB paru dengan paduan 2RHZE/4RH, evakuasi cairan seoptimal mungkin sesuai keadaan pasien dan dapat diberikan kortikosteroid (kecuali DM dan TB luas), serta empiemektomi/pleurektomi dan dapat disertai dekortikasi jika diperlukan.

        Komplikasi yang paling penting dari TB pleura adalah terjadinya fibrotoraks dan penebalan pleura yang menetap. Komplikasi lain yang dapat muncul adalah pleuritis kalkarea, PPOK, eksaserbasi TB lambat, dan fistula internal maupun eksternal.]]


composer.ekstra3_1 = [[        Limfadenitis servikal tuberkulosis dapat terjadi terutama pada usia 10-30 tahun. Limfadenopati lebih sering terjadi pada perempuan. Diagnosis ditegakkan melalui aspirasi jarum halus dan biopsi kelenjar.

        Terapi limfadenopati tuberkulosis sama dengan pengobatan TB paru yaitu 2RHZE/4RH (6 atau 9 bulan). Pasien dapat mengalami perburukan gejala selama pengobatan (paradox upgrade reaction/PUR) minimal 10 hari pengobatan (yang mana tetap dilanjutkan pengobatan dan diberikan kortikosteroid). Eksisi bedah dipertimbangkan pada limfadenitis yang memberikan gejala klinis simptomatis dan kasus resistensi pengobatan.]]



composer.ekstra4_1 = [[        Dengan periode laten bisa sampai 30 tahun dan gejala nonspesifik, diagnosis tuberkulosis saluran urogenital sulit ditegakkan. Gangguan miksi dan urgensi kronik yang tidak respons terhadap antibiotik dapat mengarah kepada tuberkulosis saluran urogenital. Manifestasi tuberkulosis saluran urogenital dapat berupa epididimimitis kronik (paling sering), fistula skrotal. hematospermia, sistitis rekuren, dan pembengkakan testis.
 
        Diagnosis mikrobiologi tuberkulosis saluran urogenital ditegakkan melalui isolasi organisme penyebab dari urin atau biopsi jaringan pada media padat konvensional atau radiometri dan PCR. Setidaknya 3 spesimen urin pagi hari (5 spesimen lebih baik) dibiakkan pada (1) media biakan Lowenstein-Jensen untuk mengisolasi M. tb, bacille calmette-Guerin (BCG) dan mikobakteria nontuberkulosis (2 )media telur piruvat mengandung penisilin untuk mengidentifikasi M. bovis.
 
        Deteksi bakteri tahan asam pada urin dengan mikroskopi (pewarnaan asam Ziehl-Nielsen) tidak dapat menjadi patokan karena dapat juga ditemukan M. smegmatis yang merupakan bakteri tahan asam juga.
         
        Pemeriksaan foto polos saluran urogenital sangat penting karena dapat menunjukkan kalsifikasi di daerah ginjal dan saluran urogenital bawah. Pemeriksaan urografi pada awal penyakit dapat ditemukan nekrosis parenkim. Pada stadium lanjut dapat ditemukan distorsi kaliseal, striktur uretra dan fibrosis kandung kemih.
 
        Prosedur Diagnosis Tuberkulosis Saluran Urogenital
]]


composer.ekstra5_1 = [[        Sebagian besar pasien dengan TB meningitis memiliki riwayat sakit kepala dengan keluhan tidak khas selama 2-8 minggu sebelum timbulnya gejala iritasi meningeal. Gejala nonspesifik meliputi malaise, anoreksia, rasa lelah, demam, mialgia dan sakit kepala. Orang dewasa biasanya menunjukkan gejala klasik meningitis, yaitu demam, sakit kepala dan kaku kuduk yang disertai defisit neurologis fokal, perubahan perilaku dan penurunan kesadaran. Apabila TB meningitis tidak diobati maka dapat menyebabkan kerusakan otak seperti gangguan mental, paralisis motorik, kejang serta perilaku abnormal.]]
composer.ekstra5_2 = [[Tuberkulosis meningitis merupakan kegawatan medis, keterlambatan penanganan sangat berhubungan dengan mortalitas. Terapi OAT empiris harus segera diberikan pada pasien yang diduga TB meningitis. Jangan menunggu konfirmasi diagnosis molekuler maupun mikrobiologis.]]
composer.ekstra5_3 = [[Diagnosis TB meningitis ditegakkan berdasarkan lumbal pungsi dan pemeriksaan cairan seresbrospinal]]
composer.ekstra5_4 = [[Pencitraan penting (CT Scan, MRI, Ro Toraks) untuk diagnosis tuberkuloma serebral dan tuberkulosis yang melibatkan korda spinalis meskipun gambaran radiologis tidak mengkonfirmasi diagnosis.]]
composer.ekstra5_5 = [[Penatalaksanaan segala bentuk TB sistem saraf pusat harus terdiri dari 4 obat yaitu isoniazid, rifampisin, etambutol dan pirazinamid pada dua bulan pertama dan dilanjutkan dengan dua obat yaitu isoniazid dan rifampisin selama minimal 10 bulan. Kortikosteroid (deksametason atau prednisolon) harus diberikan pada seluruh pasien TB meningitis tanpa melihat derajatnya.]]
composer.ekstra5_6 = [[Semua pasien yang diduga maupun terbukti TB susunan saraf pusat harus ditawarkan untuk pemeriksaan HIV.]]
composer.ekstra5_7 = [[        Penemuan BTA pada cairan serebrospinal dan jaringan merupakan diagnosis cepat terbaik untuk diagnosis tuberkulosis sistem saraf pusat. Bakteri dapat terlihat di cairan serebrospinal pada hampir 80% dewasa dengan TB meningitis meskipun diagnosis tergantung pada volume cairan serebrospinal dan cara pemeriksaan. Pada usia berapapun 10% volume cairan serebrospinal dapat diambil untuk pemeriksaan, setidaknya sebanyak 6 ml cairan serebrospinal. Biopsi jaringan mempunyai nilai diagnostik yang lebih tinggi dibandingkan cairan serebrospinal untuk dignosis tuberkuloma dan tuberkulosis spinal. Biopsi otak stereotaktik dapat dipertimbangkan untuk diagnosis tuberkuloma apabila alat diagnostik lain gagal menegakkan diagnosis tuberkulosis ekstraneural (Rekomendasi A).]]
composer.ekstra5_8 = [[        Setiap pasien TB meningitis harus dilakukan CT-Scan kepala dengan kontras sebelum diterapi atau dalam 48 jam pertama terapi. CT-Scan kepala dapat membantu diagnosis TB meningitis dan memberikan informasi dasar yang penting terutama untuk pertimbangan intervensi bedah pada hidrosefalus. Semua pasien dengan tuberkuloma serebral atau tuberkulosis spinal sebaiknya dilakukan MRI untuk menentukan perlunya intervensi bedah dan melihat respons terapi. Seluruh pasien harus mempunyai foto toraks (Rekomendasi A).
 
        Setiap pasien TB meningitis diberikan kortikosteroid tanpa memandang tingkat keparahan. Dosis kortikosteroid untuk dewasa (&gt; 14 tahun) dapat dimulai dari 0,4 mg/kgbb/hari dengan tappering off dalam 6-8 minggu. Thalidomide tidak digunakan untuk terapi rutin TB meningitis. Indikasi bedah: hidrosefalus, abses serebral tuberkulosis dan tuberkulosis vertebra dengan paraparesis. Dekompresi bedah segera harus dipertimbangkan pada lesi ekstradural yang menyebabkan paraparesis. Hidrosefalus communicating dapat diterapi dengan furosemide (40 mg/24 jam) dan acetazolamide (10-20 mg/kgBB) atau dengan pungsi lumbal berulang (Rekomendasi A).
 
        Hidrosefalus communicating dapat diterapi dengan furosemide (40 mg/24 jam) dan acetazolamide (10-20 mg/kgBB) atau dengan pungsi lumbal berulang (Rekomendasi B).
]]


composer.ekstra6_1 = [[        Gejala tuberkulosis tulang dan sendi tidak spesifik dan perjalanan klinisnya lambat sehingga menyebabkan keterlambatan diagnosis dan destruksi tulang dan sendi. Nyeri atau bengkak merupakan keluhan yang paling sering ditemui. Fistula kulit, abses, deformitas sendi dapat ditemukan pada penyakit lanjut.
 
        Pasien dapat mengalami malaise, penurunan berat badan, penurunan nafsu makan, keringat malam dan demam pada malam hari, tulang belakang kaku dan nyeri bila digerakkan serta deformitas kifosis yang nyeri bila diperkusi. Tuberkulosis arthritis biasanya meliputi sendi tunggal namun lesi multifocal dapat ditemukan.
 
        Gejala klinis yang penting adalah pembengkakan, nyeri dan gangguan fungsi yang progresif selama beberapa minggu sampai beberapa bulan. Pada arthritis panggul terdapat spasme paraspinal di sekitar tulang vertebra yang terlibat yang relaks ketika tidur sehingga memungkinkan pergerakan pada permukaan yang terinflamasi dan menyebabkan tangisan di malam hari yang khas. Manifestasi tuberculosis osteomielitis ekstraspinal dapat berupa abses dingin yaitu pembengkakan yang tidak teraba hangat, eritema maupun nyeri. Pada pemeriksaan seksama dapat ditemukan small knuckle kyphosis pada palpasi.

        Baku emas untuk diagnosis tuberkulosis tulang dan sendi adalah biakan mikobakterium jaringan tulang atau cairansinovial. Aspirasi jarum dan biopsi (CT- guided) direkomendasikan untuk konfirmasi TB spondilitis. Uji sensitivitas antimikrobial isolat penting dikerjakan. Tidak ada temuan radiologis yang patognomonik untuk TB tulang dan sendi. Foto toraks dapat dilakukan untuk mengetahui bekas TB atau TB paru. Pemeriksaan MRI dapat menentukan perluasan infeksi ke jaringan lunak dan struktur di sekitar tulang seperti medulaspinalis.

        Pengobatan biasanya diberikan selama 9-12 bulan dengan mempertimbangkan penetrasi obat yang lemah ke dalam jaringan tulang dan jaringan fibrosa serta sulitnya memonitor respons pengobatan. Respons klinis paling baik dinilai melalui indikator klinis seperti nyeri, gejala konstitusional, mobilitas dan tanda neurologis.

        Komplikasi terpenting TB spondilitis adalah kompresi korda spinalis. Pasien TB spondilitis mempunyai risiko paraparesis atau paraplegia.

        Indikasi bedah pada tuberkulosis tulang dan sendi adalah:
]]
composer.ekstra6_2 = [[Komplikasi neurologis yang tidak respons terhadap terapi konservatif]]
composer.ekstra6_3 = [[Destruksi tulang progresif]]
composer.ekstra6_4 = [[Tidak respons terhadap terapi konservatif]]
composer.ekstra6_5 = [[Pencegahan kifosis berat pada anak dengan lesi dorsal ekstensif (kifosis&gt; 40 derajat pada awitan penyakit)]]
composer.ekstra6_6 = [[Pasien dengan abses dingin pada dada]]
composer.ekstra6_7 = [[Diagnosis tidak jelas]]


composer.ekstra7_1 = [[        Gejala yang paling sering ditemukan adalah nyeri perut (80,6 %), penurunan pada Saluran Cerna berat badan (74,6 %), diare/konstipasi (25,4 %), diare (16, 4 %), darah pada rektum (11,9 %), nyeri tekan abdomen (37,3 %), massa abdomen (13, 4%) dan limfadenopati (1,5 %). Lesi makroskopik yang ditemukan pada endoskopi paling sering ditemukan di sebelah kanan (caecum dan ascending colon) dan ulkus primer (ulkus 88 %, nodul 50,7 %, penyempitan lumen (44,8 %), lesi polipoid 10,4 %). Organ yang paling sering terlibat adalah ileum terminal. Lesi yang paling sering ditemukan adalah ulkus dan penyempitan lumen paling sering ditemukan di usus halus.
 
        Diagnosis TB gastrointestinal sulit terutama pada daerah nonendemis. Beberapa pasien terkadang didiagnosis dengan inflammmatory bowel disease dan mendapatkan obat-obatan imunosupresan yang menyebabkan penyebaran TB lebih lanjut.

        Gejala klinis dapat berupa gejala akut maupun kronik intermiten. Sebagian besar pasien mengalami nyeri perut, demam, diare dan konstipasi, penurunan berat badan, anoreksia dan malaise. Pasien dengan TB peritoneum biasanya bermanifestasi sebagai TB gastrointestinal, ditemukan pada individu berusia &lt;40 tahun dan frekuensinya lebih besar pada perempuan. Manifestasi klinisnya tidak spesifik dan mirip dengan penyakit gastrointestinal lainnya seperti inflammatory bowel disease, kanker ovarium lanjut, mikosis dalam, infeksi Yersinia dan amebomas. Tuberkulosis peritoneal mempunyai 3 tipe yaitu:
]]

composer.ekstra7_2 = [[Tipe basah dengan asites]]
composer.ekstra7_3 = [[Tipe kista dengan pembesaran abdomen]]
composer.ekstra7_4 = [[Tipe fibrotik dengan massa abdomen yang terdiri dari penebalan mesenterium dan omentum]]
composer.ekstra7_5 = [[        Terapi TB abdomen merekomendasikan terapi antituberkulosis konvensional selama minimal 6 bulan termasuk RHZE pada 2 bulan pertama. Durasi pengobatan dapat diperpanjang hingga 12-18 bulan. Komplikasi TB abdomen dapat berupa ulkus, perforasi, perlengketan, obstruksi, pendarahan, pembentukan fistula dan stenosis. Terapi bedah diperlukan pada beberapa kasus terutama pada kasus yang sudah menimbulkan komplikasi seperti perforasi, obstruksi, fistula atau pendarahan.]]

composer.ekstra8_1 = [[        Tuberkulosis genital mencakup sekitar 5% infeksi pelvis dan ditemukan pada sekitar 10% kasus TB paru. Salah satu jenis TB genital adalah TB endometrial yang mencakup sekitar 60-70% kasus TB genital pada wanita pascamenopause. Tuberkulosis endometrium jarang terdiagnosis sebab seringkali disertai dengan gejala tidak spesifik bahkan asimtomatis. Gejala yang paling sering dijumpai pada wanita usia subur adalah gangguan siklus menstruasi atau nyeri pelvis, sementara pada wanita pasca menopause seringkali ditemukan pyometra atau leucorrhea.
 
        Pemeriksaan radiologis digunakan sebagai petunjuk adanya infeksi M. tuberculosis di endometrium. Pada pasien TB endometrial, pemeriksaan USG transvaginal menunjukkan penebalan endometrium atau pyometra. Histerosalpingogram dapat memperlihatkan gambaran distorsi rongga uterus. Kuretase endometrial dapat digunakan untuk diagnosis TB endometrial. Diagnosis TB endometrial dapat ditegakkan apabila ditemukan gambaran granulomatosa melalui pemeriksaan histopatologi sediaan biopsi atau kuretase jaringan endometrium.

        Terapi yang diberikan sama dengan terapi TB paru. Setelah pemberian OAT, dapat dilakukan dilatasi dan kuretase ulang untuk menilai apakah terdapat konversi jaringan endometrial. Pada sebagian besar kasus, akan dijumpai perbaikan siklus mentruasi. Apabila setelah pengobatan konsepsi tidak terjadi, dapat dipertimbangkan untuk dilakukan histerosalpingografi dan laparoskopi.
]]


composer.ekstra9_1 = [[        Tuberkulosis merupakan penyebab 4% perikarditis akut, 7% tamponade jantung dan 6% perikarditis konstriktif. Gejala yang muncul terutama bersifat sistemik, yaitu demam, penurunan berat badan, anoreksia dan malaise.
 
        Evaluasi awal TB perikarditis meliputi pemeriksaan foto toraks, ekokardiografi untuk membuktikan ada efusi, dan CT/MRI untuk melihat tanda peradangan, efusi perikardial dan pembesaran nodus limfatikus mediastinal/trakeobronkial. Perikardiosintesis dilakukan untuk tujuan diagnostik dan terapeutik. Ekokardiografi juga sangat berguna untuk diagnosis efusi pericardial. Diagnosis definitif TB perikarditis berdasarkan 1 dari beberapa kriteria berikut:

]]
composer.ekstra9_2 = [[        Manajemen optimal termasuk pericardial window terbuka untuk mencegah reakumulasi cairan. Perikardiosintesis sering gagal karena stadium lanjut efusi fibrinosa, peikardiotomi dengan drain terbuka komplit dapat dilakukan. Paduan obat yang sama dengan TB paru yaitu 2RHZE/4RH. Kortikosteroid memberikan manfaat untuk mencegah reakumulasi cairan.
 
Pemberian kortikosteroid dengan dosis prednisolon 1 mg/kgbb dengan tappering off dalam 11 minggu (Rekomendasi A).
]]


composer.ekstra11_1 = [[        Invasi kulit M. tuberculosis jarang ditemukan di negara maju. P enularan terjadi akibat inhalasi droplet dan jarang disebabkan oleh inokulasi langsung di kulit. Presentasi klinis TB kulit berupa lesi kronik, tidak nyeri, non-patognomonik, dapat berupa papula kecil dan eritema hingga tuberkuloma besar. Meskipun morfologi lesi sangat bervariasi, terdapat beberapa temuan khas, yaitu gambaran scrofuloform, plak anular dengan batas verukosa pada lupus vulgaris atau plak hipertrofi. Diagnosis definitif ditegakkan berdasarkan biakan sediaan biopsi dan idealnya diambil sebelum OAT diberikan.
]]
composer.ekstra11_2 = [[        Terapi standar tuberkulosis 2RHZE/4RH diberikan untuk tuberkulosis kulit selama 6 bulan. Kombinasi dengan pembedahan dapat dipertimbangkan pada lupus vulgaris, tuberkulosis verukosa dan skrofuloderma.]]

composer.ekstra4_2 = [[        Sebanyak 50-75% laki-laki dengan tuberkulosis genital mempunyai kelainan radiologis di saluran kemih sehingga lokasi primer di epididimis harus diperiksa. (Rekomendasi B)]]
composer.ekstra4_3 = [[        Paduan obat antituberkulosis standar selama 6 bulan efektif untuk tuberkulosis saluran urogenital tanpa komplikasi. Pertimbangan khusus dilakukan apabila terdapat gangguan fungsi ginjal. Meskipun paduan obat antituberkulosis merupakan terapi utama namun prosedur bedah seperti bedah ablasi dapat dilakukan pada sepsis atau abses. Nefrektomi diindikasikan apabila terjadi komplikasi seperti infeksi saluran kemih atas berat dengan bakteri gram positif maupun gram negatif, batu dan hipertensi. Bedah rekonstruksi diperlukan terutama untuk memperbaiki striktur pada ureter 1/3 distal dan fibrosis kandung kemih. Bedah radikal maupun rekonstruktif dilakukan pada 2 bulan pertama fase intensif anti tuberkulosis.]]
composer.ekstra4_4 = [[Durasi pengobatan tuberkulosis saluran urogenital adalah 6 bulan untuk kasus tanpa komplikasi. Terapi 9-12 bulan diberikan pada kasus dengan komplikasi (kasus kambuh, imunospresi dan HIV/AIDS)]]
composer.ekstra4_5 = [[Kateter ureter J ganda dapat digunakan pada striktur uretra untuk beberapa tujuan seperti stenting setelah dilatasi, mempertahankan drainase selama proses penyembuhan dan untuk efikasi terapi]]
composer.ekstra4_6 = [[Nefrektomi direkomendasikan pada pasien dengan hipertensi akibat komplikasi nefropati tuberkulosis (Rekomendasi B)]]

composer.ekstra10_1 = [[Paduan terapi adekuat dapat dimulai tanpa menunggu hasil biakan bila histologi dan gambaran klinis sesuai dengan diagnosis tuberkulosis.]]
composer.ekstra10_2 = [[Seluruh pasien TB ekstraparu harus melakukan foto toraks untuk menyingkirkan TB paru.]]
composer.ekstra10_3 = [[Paduan terapi adekuat harus diteruskan meskipun hasil biakan negatif.]]
composer.ekstra10_4 = [[Tuberkulosis paru dan TB ekstraparu diterapi dengan paduan obat yang sama namun beberapa pakar menyarankan 9-12 bulan untuk TB meningitis karena mempunyai risiko serius pada disabilitas dan mortalitas dan 9 bulan untuk TB tulang dan sendi karena sulitnya memonitor respons terapi.]]
composer.ekstra10_5 = [[Kostikosteroid direkomendasikan untuk TB perikardial dan TB meningitis.]]
composer.ekstra10_6 = [[Pada TB meningitis etambutol diganti dengan streptomisin.]]
composer.ekstra10_7 = [[Terapi bedah mempunyai peran kecil dalam penatalaksanaan TB ekstraparu.]]
composer.ekstra10_8 = [[Sama halnya dengan TB Anak, pada pasien tuberkulosis ekstra paru respons pengobatan terbaik dinilai secara klinis.]]



composer.pertanyaan1 = [[Mengeluhkan batuk berdahak selama 2 minggu atau lebih]]
composer.pertanyaan2 = [[Mengeluh sesak nafas]]
composer.pertanyaan3 = [[Mengeluh nyeri dada]]
composer.pertanyaan4 = [[Mengalami penurunan berat badan belakangan ini]]
composer.pertanyaan5 = [[Berkeringan malam hari meski tidak melakukan kegiatan fisik]]
composer.pertanyaan6 = [[Sering merasa lemas tidak bertenaga]]
composer.pertanyaan7 = [[Teman / keluarga di sekitar pasien ada yang mengalami batuk lama]]
composer.pertanyaan8 = [[Teman / keluarga di sekitar pasien terdiagnosa TB resisten obat]]
composer.pertanyaan9 = [[Sudah pernah menjalani pengobatan TB sebelumnya?]]
composer.pertanyaan10 = [[Pernah putus berobat selama 2 bulan atau lebih dalam menjalani pengobatan TB]]


composer.pertanyaan2_1= [[Salah satu sputum menunjukan BTA positif]]
composer.pertanyaan2_2= [[Foto Ro dada sugestif TB]]
composer.pertanyaan2_3= [[GenExpert]]
composer.pertanyaan2_4= [[Biakan kuman]]