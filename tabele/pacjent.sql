CREATE TABLE pacjent(
	id_pacjent int not null auto_increment primary key,
	imie varchar(255) not null,
	nazwisko varchar(255) not null,
	data_urodzenia datetime,
	adres_zamieszkania text,
	liczba_wizyt int default 0
);