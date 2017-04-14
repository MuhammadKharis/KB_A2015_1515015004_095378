/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ /* Merupakan domain list yang menggunakan tipe data integer */

predicates
  length_of(list,integer,integer) - procedure (i,o,i) /* Merupakan length_of mempunyai list,integer dan integer dan menggunakan procedure input,output, dan input */ 

clauses
  length_of([], Result, Result).                 /* Jika list kosong variable pertama yaitu result nanti dia akan bernilai sama dengan dan jika result yang kedua di inputkan maka nilai 1 dan result pertama tadi juga di inputkan maka nilai keduanya akan sama yaitu 1 */
  length_of([_|T],Result,Counter):-		
	NewCounter = Counter + 1,		/* Counter berfungsi sebagai inputan yang nilainya akan ditambahkan pada melakukan perhitungan panjang list yang mengganti head -> */
	length_of(T, Result, NewCounter).	/* dan couter akan menambah 1 jika pergantian nilai nilai head karena untuk mencari hasil panjang list				<- */

goal
  length_of([1,2,3],L,0). %%start with Counter = 0 %%Mencari panjang list menggunakan caunter 0
  			     %%jadi head = 1 = 1
  			     %%tailnya = 2 and 3 = 2
  			     %%counternya kan tadi 0 jadi dia 0
  			     %%baru newcounternya = counter + 1 karena sudah dengan aturannya
  			     %%jadi 0 + 1 = 1
  			     %%maka length_of nya = lengthtail + counter 
  			     %% 2 + 1 = 3 Jadi kesimpulannya adalah panjang listnya 3