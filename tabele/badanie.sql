CREATE TABLE badanie(
	id_badanie int primary key not null auto_increment,
	nazwa_badania varchar(255),
	szczegoly text,
	id_pacjent int,
	id_wizyta int
);