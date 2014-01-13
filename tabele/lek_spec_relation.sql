CREATE TABLE lek_spec_relation(
	id_lek_spec_relation int primary key not null auto_increment,
	id_lekarz int not null,
	id_specjalizacja int not null
);