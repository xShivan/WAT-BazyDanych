delimiter //

CREATE PROCEDURE insert_wizyta(
	IN in_id_gabinet int,
	IN in_id_pacjent int,
	IN in_id_lekarz int,
	IN in_data_wizyty datetime,
	IN in_szczegoly text
)

BEGIN
	INSERT INTO wizyta(
		id_gabinet,
		id_pacjent,
		id_lekarz,
		data_wizyty,
		szczegoly
	)
	VALUES (
		in_id_gabinet,
		in_id_pacjent,
		in_id_lekarz,
		in_data_wizyty,
		in_szczegoly
	);
END
//
delimiter ;