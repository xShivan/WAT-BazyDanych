CREATE TABLE pacjent(
	id_pacjent int not null auto_increment primary key,
	imie varchar(255) not null,
	nazwisko varchar(255) not null,
	data_urodzenia datetime,
	adres_zamieszkania text,
	liczba_wizyt int default 0,
	liczba_badan int default 0,
	liczba_chorob int default 0,
	CONSTRAINT chk_counters CHECK (liczba_wizyt > -1 AND liczba_badan > -1 AND liczba_chorob > -1),
	CONSTRAINT chc_birth_date CHECK (data_urodzenia < NOW())
);