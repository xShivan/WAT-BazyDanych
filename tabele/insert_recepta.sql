delimiter //
CREATE PROCEDURE insert_recepta(
	IN in_data_wystawienia datetime,
	IN in_id_pacjent int,
	IN in_id_lekarz int,
	IN in_id_wizyta int
)

BEGIN
	INSERT INTO recepta(
		data_wystawienia,
		id_pacjent,
		id_lekarz,
		id_wizyta
	)
	VALUES(
		in_data_wystawienia,
		in_id_pacjent,
		in_id_lekarz,
		in_id_wizyta
	);
END
//
delimiter ;