CREATE TABLE lek_pac_relation(
	id_lek_pac_relation int primary key not null auto_increment,
	id_pacjent int not null,
	id_lekarz int not null
);