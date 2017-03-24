DOMAINS
nama,jender,pekerjaan,benda,alasan,zat = symbol
umur=integer

PREDICATES
nondeterm orang(nama, umur, jender, pekerjaan)
nondeterm selingkuh(nama, nama)
terbunuh_dengan(nama, benda)
terbunuh(nama)
nondeterm pembunuh(nama)
motif(alasan)
ternodai(nama, zat)
milik(nama, benda)
nondeterm cara_kerja_mirip(benda, benda)
nondeterm kemungkinan_milik(nama, benda)
nondeterm dicurigai(nama)
/* * * Fakta-fakta tentang pembunuhan * * */

CLAUSES
orang(budi,55,m,tukang_kayu).
orang(aldi,25,m,pemain_sepak_bola).
orang(aldi,25,m,tukang_jagal).
orang(joni,25,m,pencopet).
selingkuh(ina,joni).
selingkuh(ina,budi).
selingkuh(siti,joni).
terbunuh_dengan(siti,pentungan).
terbunuh(siti).
motif(uang).
motif(cemburu).
motif(dendam).
ternodai(budi, darah).
ternodai(siti, darah).
ternodai(aldi, lumpur).
ternodai(joni, coklat).
ternodai(ina, coklat).
milik(budi,kaki_palsu).
milik(joni,pistol).
/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan).
cara_kerja_mirip(balok, pentungan).
cara_kerja_mirip(gunting, pisau).
cara_kerja_mirip(sepatu_bola, pentungan).
kemungkinan_milik(X,sepatu_bola):-
orang(X,_,_,pemain_sepak_bola).
kemungkinan_milik(X,gunting):-
orang(X,_,_,pekerja_salon).
kemungkinan_milik(X,Benda):-
milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
terbunuh_dengan(siti,Senjata),
cara_kerja_mirip(Benda,Senjata) ,
kemungkinan_milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(cemburu),
orang(X,_,m,_),
selingkuh(siti,X).
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(cemburu),
orang(X,_,f,_),
selingkuh(X,Lakilaki),
selingkuh(siti,Lakilaki).
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(uang),
orang(X,_,_,pencopet).
pembunuh(Pembunuh):-
orang(Pembunuh,_,_,_),
terbunuh(Terbunuh),
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh),
ternodai(Pembunuh,Zat),
ternodai(Terbunuh,Zat).

GOAL
pembunuh(X).

		/***************Analisis Program ini******************?/
/	Program di jalankan dengan baik, di awal program akan melakukan proses dari section
clauses, mencari data-data orang yang telah dideklarasikan pada section clauses, yg
dimana terdapat data yg terlibat dalam kasus pembunuhan ini.
 	Dari fakta yang ada, argument X merupakan argument Pembunuh. Dari argument
pembunuh terdapat beberapa pernyataan persyaratan dan program akan melakukan
unifikasi terhadap pernyataan ini.Jadi program ini akan mencari fakta orang yg
mengetahui pembunuh dalam kasus ini.Pernyataan pertama yg di dapat adalah si
Budi.
	Selanjutnya program ini mencari pernyataan terbunuh, maka yg ditemukan faktanya
adalah si Siti.Dan setelah program melakukan pencarian pada pernyataan dicurigai si(X),
dari pernyataan ini dilakukan pencarian menggunakan unifikasi terhadap
pernyataan syarat-syarat tersebut. Kemudian program akan mencari senjata yang di pakai oleh
seorang membunuh,dengan melakukan proses di variable terbunuh_dengan. Maka fakta yang diperoleh ialah terbunuh_dengan(siti, pentungan).
	Setelah itu program ini melakukan proses pencarian fakta benda yang cara kerjanya
seperti senjata,maka diperoleh cara_kerja_mirip(Benda,Senjata).Kemudian Visual Prolog
memanggil pernyataan tersebut untuk mengetahui benda yg cara kerjanya mirip
pentungan yang telah di eksekusi pada langkah sebelumnya.Maka fakta yang didapat adalah
cara_kerja_mirip(kaki_palsu, pentungan).Setelah itu program akan melakukan proses yang dimana
fakta dari variable kemungkinan_milik(X,Benda),milik (X,Benda).Dari pernyataan ini
maka program mencari fakta bahwa siapa pemilik kaki palsu,dan hasilnya milik(budi,
kaki_palsu).Jadi kaki_palsu itu miliknya Budi.
	Kemudian program ini menjalankan proses pernyataan dari pembunuh karena masih
terdapat pernyataan yang belum diproses,yaitu pada variable ternodai(Pembunuh,Zat).
Maka dijalankanlah proses ke dalam pernyataan tersebut,yg menyangkut nama/kata
budi, maka hasilnya didapat ternodai(budi,darah).
	Setelah ini program akan melakukan proses akhir ialah pada ternodai(Terbunuh,Zat).
Jadi akan di dapat hasil ternodai(siti,darah).Dan kesimpulan dari pernyataan-pernyataan
dan fakta-fakta yg telah ada,maka Siti memiliki noda sama persis dengan Budi.
Berdasarkan kesamaan fakta-fakta tersebut,Goal akan menampilkan bahwa Budilah yg
membunuh si Siti.									*************************/
	

