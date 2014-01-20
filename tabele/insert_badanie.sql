delimiter //
CREATE PROCEDURE insert_badanie(
	IN in_nazwa_badania varchar(255),
	IN in_szczegoly text,
	IN in_id_pacjent int,
	IN in_id_wizyta int
)
BEGIN

INSERT INTO badanie(
	nazwa_badania,
	szczegoly,
	id_pacjent,
	id_wizyta
)
VALUES(
	in_nazwa_badania,
	in_szczegoly,
	in_id_pacjent,
	in_id_wizyta
);

END
//
delimiter ;