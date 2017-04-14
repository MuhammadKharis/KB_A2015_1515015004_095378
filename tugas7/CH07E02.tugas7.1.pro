/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ /* Merupakan domain yang mendeklarasikan list dengan menggunakan tipe data integer */

predicates
  length_of(list,integer) - procedure (i,o) /* Merupakan predicates length_of mempunyai sebuah parameter list dan integer dengan procedure nya input output */

clauses
  length_of([], 0).				/* length_of ([],0). maksudnya adalah list yang kosong jadi dia akan bernilai 0 */
    length_of([_|T],L):-			/* length_of([_|T],L):- maksudnya adalah list yang memiliki head dan tail */
	length_of(T,TailLength),		/* Maksudnya adalah jadi ini akan menghitung panjang list dari banyaknya tail yang ditambah head */
	L = TailLength + 1.			

goal
  length_of([1,2,3],L).				/* Jadi ini akan mencari hasil dari list length_of 
  						  head nya adalah 1 = 1
  						  tailnya adalah 2 dan 3 = 2
  						  jadi length_of = TailLength +1
  						  maka 2+1 = 3
  						  jadi kesimpulannya adalah panjang list L tersebut adalah 3 */
  						  
