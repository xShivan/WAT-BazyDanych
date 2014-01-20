delimiter //
CREATE PROCEDURE insert_specjalizacja_lekarza(
	IN in_id_lekarz int,
	IN in_id_specjalizacja int
)
BEGIN
	INSERT INTO lek_spec_relation(
		id_lekarz,
		id_specjalizacja
	)
	VALUES(
		in_id_lekarz,
		in_id_specjalizacja
	);
END
//
delimiter ;