-- Ein neues Buch hinzufügen
insert into bibliothek.verlag (bibliothek.verlag.name, bibliothek.verlag.webseite) values ('Crystal', 'https://www.crystadev.at/');
insert into bibliothek.land (bibliothek.land.bezeichnung) values ('Österreich');
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Manuel', 'Kerschbaumer', '1999.03.04', 'manuel@crystal.at', 3);
insert into bibliothek.kategorie (bibliothek.kategorie.name) values ('Fantasy');
insert into bibliothek.buch values ('978-3-25890-123-3', 'Testbuch', 'Dies ist ein Testbuch', 2019, 1, 5, 6, 4);

-- Eindeutigkeit überprüfen (Alle außer der Autor sollten fehlschlagen, da es, wenn es auch sehr unwarscheinlich ist, 2 Personen mit dem gleichen Namen und Geburtstag im selben Land geben kann)
insert into bibliothek.verlag (bibliothek.verlag.name, bibliothek.verlag.webseite) values ('Crystal', 'https://www.crystadev.at/');
insert into bibliothek.land (bibliothek.land.bezeichnung) values ('Österreich');
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Manuel', 'Kerschbaumer', '1999.03.04', 'manuel@crystal.at', 3);
insert into bibliothek.kategorie (bibliothek.kategorie.name) values ('Fantasy');
insert into bibliothek.buch values ('978-3-25890-123-3', 'Testbuch', 'Dies ist ein Testbuch', 2019, 1, 5, 6, 4);

-- Einfürgen von NULL (Sollte nur bei der E-Mail funktionieren)
insert into bibliothek.verlag (bibliothek.verlag.name, bibliothek.verlag.webseite) values (null, 'https://www.web-seite.at/');
insert into bibliothek.verlag (bibliothek.verlag.name, bibliothek.verlag.webseite) values ('Webseite', null);
insert into bibliothek.land (bibliothek.land.bezeichnung) values (null);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values (null, 'Huber', '1999.03.04', 'manuel@crystal.at', 3);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Simon', null, '2000.12.09', 'Simon.B@gmail.at', 3);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Julia', 'Mayr', null, 'julia.coco@gmx.at', 2);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Herbert', 'Neumann', '2003.07.19', null, 1);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Reinhard', 'Berger', '2019.03.04', 'hackerman@mail.com', null);
insert into bibliothek.kategorie (bibliothek.kategorie.name) values (null);
insert into bibliothek.buch values (null, 'Testbuch Band 2', 'Dies ist ein Testbuch Band 2', 2019, 1, 5, 6, 4);
insert into bibliothek.buch values ('978-3-25890-123-3', null, 'Dies ist ein Testbuch', 2019, 1, 5, 6, 4);
insert into bibliothek.buch values ('978-3-25890-123-3', 'Das Buch', null, 2000, 1, 5, 6, 4);
insert into bibliothek.buch values ('978-3-25890-123-3', 'Dieses Buch liebt dich', 'Doch sagt es auch die Wahrheit?', null, 1, 5, 6, 4);
insert into bibliothek.buch values ('978-3-25890-123-3', 'Das Ende des Zufalls', 'Alles ist Berechenbar', 2016, null, 5, 6, 4);
insert into bibliothek.buch values ('978-3-25890-123-3', 'Erebos', 'Das Buch zum Spiel', 2017, 1, null, 6, 4);
insert into bibliothek.buch values ('978-3-25890-123-3', 'Faust', 'Ein Klassiker der klassischen Literatur', 1900, 1, 5, null, 4);
insert into bibliothek.buch values ('978-3-25890-123-3', 'Das Leben leben', 'doch kann man den Tod töten?', 2100, 1, 5, 6, null);

-- Nichtbefüllung einzelner Spalten
-- Anm. 1: Spalten welche das Auto Incement Attribut besitzen werden nicht überprüft, da diese bereits bei den anderen Testdaten funktionierten
insert into bibliothek.verlag (bibliothek.verlag.webseite) values ('https://www.anon.at/');
insert into bibliothek.verlag (bibliothek.verlag.name) values ('Anonymous');
insert into bibliothek.land () values ();
insert into bibliothek.autor (bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Huberer', '1998.05.09', 'null.hub@gmail.at', 3);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Simone', '2001.08.18', 's.moni@hotmail.at', 3);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.e_mail, bibliothek.autor.land_id) values ('Manuela', 'Neudorfer', 'manu.neu@mail.at', 3);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.land_id) values ('Franz', 'Ferdinant', '1900.09.07', 3);
insert into bibliothek.autor (bibliothek.autor.vorname, bibliothek.autor.nachname, bibliothek.autor.geburtsdatum, bibliothek.autor.e_mail) values ('Regina', 'Schmidt', '2003.11.17', 'r.schmidt@newmail.com');
insert into bibliothek.kategorie () values ();
insert into bibliothek.buch (bibliothek.buch.titel, bibliothek.buch.kurzbeschreibung, bibliothek.buch.erscheinungsjahr, bibliothek.buch.auflage, bibliothek.buch.ver_id, bibliothek.buch.aut_id, bibliothek.buch.kat_id) values ('Buch', 'Ein Buch', 2019, 1, 5, 6, 4);
insert into bibliothek.buch (bibliothek.buch.isbn, bibliothek.buch.kurzbeschreibung, bibliothek.buch.erscheinungsjahr, bibliothek.buch.auflage, bibliothek.buch.ver_id, bibliothek.buch.aut_id, bibliothek.buch.kat_id) values ('978-3-25890-123-3', 'nobook', 2120, 1, 5, 6, 4);
insert into bibliothek.buch (bibliothek.buch.isbn, bibliothek.buch.titel, bibliothek.buch.erscheinungsjahr, bibliothek.buch.auflage, bibliothek.buch.ver_id, bibliothek.buch.aut_id, bibliothek.buch.kat_id) values ('978-3-12345-123-3', 'Noch ein Buch', 2019, 1, 5, 6, 4);
insert into bibliothek.buch (bibliothek.buch.isbn, bibliothek.buch.titel, bibliothek.buch.kurzbeschreibung, bibliothek.buch.auflage, bibliothek.buch.ver_id, bibliothek.buch.aut_id, bibliothek.buch.kat_id) values ('978-3-54312-123-3', 'So viele Bücher', 'Sooo viele...', 1, 5, 6, 4);
insert into bibliothek.buch (bibliothek.buch.isbn, bibliothek.buch.titel, bibliothek.buch.kurzbeschreibung, bibliothek.buch.erscheinungsjahr, bibliothek.buch.ver_id, bibliothek.buch.aut_id, bibliothek.buch.kat_id) values ('978-3-24532-123-3', 'Ja, Bücher', 'Genau, Bücher', 2019, 5, 6, 4);
insert into bibliothek.buch (bibliothek.buch.isbn, bibliothek.buch.titel, bibliothek.buch.kurzbeschreibung, bibliothek.buch.erscheinungsjahr, bibliothek.buch.auflage, bibliothek.buch.aut_id, bibliothek.buch.kat_id) values ('978-3-15743-123-3', 'Zu viele Bücher', 'Viel zu viele Bücher', 2019, 1, 6, 4);
insert into bibliothek.buch (bibliothek.buch.isbn, bibliothek.buch.titel, bibliothek.buch.kurzbeschreibung, bibliothek.buch.erscheinungsjahr, bibliothek.buch.auflage, bibliothek.buch.ver_id, bibliothek.buch.kat_id) values ('978-3-23474-123-3', 'Mehr Bücher!', 'Noch viel mehr Bücher!', 2019, 1, 5, 4);
insert into bibliothek.buch (bibliothek.buch.isbn, bibliothek.buch.titel, bibliothek.buch.kurzbeschreibung, bibliothek.buch.erscheinungsjahr, bibliothek.buch.auflage, bibliothek.buch.ver_id, bibliothek.buch.aut_id) values ('978-3-63234-123-3', 'Das letzte Buch', 'Hoffe ich zumindest... ', 2019, 1, 5, 6);

-- Überprüfen ob alle Daten eingefügt wurden
select * from bibliothek.verlag order by bibliothek.verlag.id;
select * from bibliothek.land order by bibliothek.land.id;
select * from bibliothek.autor order by bibliothek.autor.id;
select * from bibliothek.kategorie order by bibliothek.kategorie.id;
select * from bibliothek.buch order by bibliothek.buch.isbn;

-- Alle Bücher mit ihrem Autor und Verlag anzeigen (inkl. allen vorhandenen Daten)
select b.Titel "Titel",
convert(b.kurzbeschreibung using utf8) "Kurzbeschreibung",
b.erscheinungsjahr "Erscheinungsjahr",
b.auflage "Auflage",
k.name "Kategorie",
v.name "Verlag",
v.webseite "Webseite",
concat(a.vorname, ' ', a.nachname) "Autor",
a.geburtsdatum "Geburtsdatum",
a.e_mail "E-Mail",
l.bezeichnung "Geburtsland"
from bibliothek.buch b, bibliothek.kategorie k, bibliothek.verlag v, bibliothek.autor a, bibliothek.land l
where b.kat_id = k.id
and b.ver_id = v.id
and b.aut_id = a.id
and a.land_id = l.id
order by b.isbn;