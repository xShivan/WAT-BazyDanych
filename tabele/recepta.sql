CREATE TABLE recepta(
	id_recepta int primary key not null auto_increment,
	data_wystawienia datetime,
	id_pacjent int not null,
	id_lekarz int not null,
	id_wizyta int
);