predicates
nondeterm bisa_belajar(symbol,symbol) 
kelas(symbol) - nondeterm (o)
dosen(symbol) - nondeterm (o)
dosen_dan_kelas(symbol,symbol) - nondeterm (i,i)
kelas_tersedia(symbol) - nondeterm (i)

clauses
bisa_belajar(D,M):-
kelas(M),
dosen(D),
dosen_dan_kelas(D,M),
kelas_tersedia(M).

kelas(a11a).
kelas(b11b).
kelas(c11c).

dosen(hario).
dosen(hagus).
dosen(ali).
dosen(rina).



dosen_dan_kelas(hario,a11a).
dosen_dan_kelas(ali,c11c).
dosen_dan_kelas(rina,xqop).
dosen_dan_kelas(hagus,mmk).

kelas_tersedia(a11a).
kelas_tersedia(c11c).
kelas_tersedia(aassd).
kelas_tersedia(tenis).
goal
bisa_belajar(Dosen,Kelas).

