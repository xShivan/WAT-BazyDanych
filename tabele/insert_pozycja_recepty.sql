delimiter //
CREATE PROCEDURE insert_pozycja_recepty(
	IN in_id_recepta int,
	IN in_id_lek int
)

BEGIN

	INSERT INTO recepta_lek_relation(
		id_recepta,
		id_lek
	)
	VALUES(
		in_id_recepta,
		in_id_lek
	);
END
//
delimiter ;