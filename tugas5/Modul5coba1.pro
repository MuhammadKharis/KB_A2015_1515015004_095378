DOMAINS
benda = buku(judul, pengarang) ; /* sintax ini adalah objek jamak dengan parameter judul dan penarang */
kuda(nama) ; kapal ; 
bukubank(saldo)
judul, pengarang, nama = symbol /* sintax dari pernyataan ini menggunakan tyipe symbol */
saldo = real /* saldo sudah ditentukan sama dengan variabel real */

PREDICATES
nondeterm milik(nama,benda) /* sintax ini menggunakan nondeterm karena kemungkinan mempunyai 1 lebih kemungkinan */

CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")). /* erwin memiliki sebuah buku Markesot Bertutur dan pengaranganya Emha Ainun Najib */
milik(erwin, kuda(buraq)). /* erwin memiliki sebuah kuda buraq */
milik(erwin, kapal). /* erwin memiliki sebuah kapal */
milik(erwin, bukubank(1000)). /* erwin memiliki sebuah bukubank dengan nilai 1000 */
GOAL
milik(erwin, Benda). /*erwin memiliki sebuah benda dan benda itu bisa berbentuk buku,pengarang,kuda dan bukubank */