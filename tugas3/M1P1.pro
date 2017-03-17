PREDICATES

putra(STRING,STRING)						/* fungsi memberikan pernyataan atau fakta pada putra dan mempunyai fungsi string */
saudara_perempuan(STRING,STRING)                                /* saudara_perempuan mempunyai nilai string dlm pernyataannya */
saudara_laki(STRING,STRING)                                     /* sudara_laki mempunyai nilai string dlm pernyataannya */
menikah(STRING,STRING)                                          /* menikah mempunyai nilai string dalam pernyataannya */
ayah(STRING ayah,STRING putra)                                  /* ayah mempunyai dua nilai yg sama dlm pernyataan ayah dan peryataan putra dan berbentuk string */ 
kakek(STRING kakek,STRING cucu) 				/* kakek mempunyai dua nilai yg sama dlm pernyataan kakek dan peryataan cucu dan berbentuk string */
nondeterm ipar_perempuan(STRING,STRING)				/* fungsi nondeterm sendiri merupakan suatu predikt yg memiliki lebih dari satu jawaban/solusi dan ipar_perempuan berbentuk nilai string */

CLAUSES

putra("Ikhsan","Bentang").					/* Ikhan putra Bentang */ 
saudara_perempuan("Dini","Dina").				/* Dini saudara perempuan Dina */
saudara_laki("Adi","Lintang").					/* Adi saudara laki" Lintang */
menikah("Ikhsan","Dini").					/* Ikhsan menikah dengan Dini */
menikah("Lintang","Surga").					/* Lintang menikah dengan Surga */
ayah(A,B):-putra(B,A).						/* deklarasi ayah sama dengan putra adalah dibaca A adalah ayah B sama dengan B putranya A */
kakek(A,B):-ayah(A,C), ayah(C,B).                               /* A adalah kakeknya B, sedangkan sebelah kanan dapat dibaca A adalah ayahnya si C dan C sendiri adalah ayahnya B, jadi sebelah kanan adalah penjelasan dari sebelah kiri */
ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B).      /* A adalah ipar perempuan B jika A menikah dengan C dan C adalah saudara perempuan B */
ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B).           /* A adalah ipar perempuan B jika A adalah saudara laki C dan C menikah dengan B */

GOAL

ipar_perempuan("Ikhsan",X).					/* Ikhsan mempunyai ipar perempuan X dan X sendiri statment untuk mencari solusi dari PREDICATES bernilai string dari saudara perempaun */
								/* Dan solusinya yang X sendiri adalah Dina */