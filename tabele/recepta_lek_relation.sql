CREATE TABLE recepta_lek_relation(
	id_recepta_lek_relation int primary key not null auto_increment,
	id_recepta int not null,
	id_lek int not null
);