delimiter //
CREATE PROCEDURE insert_pacjent_lekarza(
	IN in_id_pacjent int,
	IN in_id_lekarz int
)
BEGIN
	INSERT INTO lek_pac_relation(
		id_pacjent,
		id_lekarz
	)
	VALUES(
		in_id_pacjent,
		in_id_lekarz
	);
END
//
delimiter ;