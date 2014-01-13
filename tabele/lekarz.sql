CREATE TABLE lekarz(
	id_lekarz int primary key not null auto_increment,
	imie varchar(255),
	nazwisko varchar(255),
	adres_zamieszkania text,
	data_urodzenia datetime
);