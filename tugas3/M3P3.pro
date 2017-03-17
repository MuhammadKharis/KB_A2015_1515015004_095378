PREDICATES
nondeterm suka(symbol,symbol) /* untuk memberitahu predikat tersebut mempunyai lebih dari satu kemungkinan jawaban */

CLAUSES
suka(asep,membaca).           /* asep suka membaca */ 
suka(asari,computers).        /* asari suka computers */ 
suka(nunung,bulutangkis).     /* nunung suka bulutangkis */ 
suka(vida,bulutangkis).       /* vida suka bulutangkis */ 
suka(astana,renang).          /* astana suka renang */ 
suka(astana,membaca).        /* astana suka membaca */ 

GOAL
suka(Orang, membaca), /*menunjukkan bahwa hasil/solusi di atas merupakan astana suka membaca */  
suka(Orang, renang).  /*menunjukkan bahwa hasil/solusi di atas merupakan astana suka renang */  
		      /* jadi kesimpulannya adalah solusinya 1 karena goal tersebut memilih suka(orang, membaca) dan suka(orang, renang). Orang tersebut adalah astana */