CREATE TABLE wizyta(
	id_wizyta int primary key not null auto_increment,
	id_gabinet int not null,
	id_pacjent int not null,
	id_lekarz int not null,
	data_wizyty datetime,
	szczegoly text
);