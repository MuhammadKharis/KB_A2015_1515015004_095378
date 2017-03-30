DOMAINS
orang = orang(nama,alamat)/* declarasi dari nama dan alamat adalah data objek */
nama = nama(pertama,kedua)/* data objek jamak disini adalah nama karena memiliki pernyataan pertama dan kedua */
alamat = alamat(jalan,kota_kab,propinsi)/* data objek jamak disini adalah alamat karena si alamat memiliki pernyataan jalan,kota_kab,propinsi */
jalan = jalan(nama_jalan,nomor)/* data objek jamak disini adalah jalan yang memiliki pernyataan nama_jalan dan nomor */
kota_kab,propinsi,nama_jalan = string /* sintax ini dari kota_kab,propinsi,nama_jalan sama dengan bertipe data string */
pertama,kedua = symbol /* sintax ini berobjek jamak */
nomor = integer /* nomor bertipe data integer */

GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")), /* merupakan goal pertama */
P1 = orang(nama(_,fatihah),Alamat), /* dia akan mengambil data yang sudah di tetapkan di pertama tadi dan dia akan menampilkan diena dan alamat nya si wijaya kusuma */
P2 = orang(nama(nur,fatihah),Alamat),/* sintax ini akan menampilkan yang sudah ditetapkan di pertama tadi */
write("P1=",P1),nl,
write("P2=",P2),nl.
/* write ini adalah yang dieksekusi untuk pertama kali */