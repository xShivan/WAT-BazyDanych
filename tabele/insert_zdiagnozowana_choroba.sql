delimiter //
CREATE PROCEDURE insert_zdiagnozowana_choroba(
	IN in_id_choroba int,
	IN in_id_wizyta int
)
BEGIN
	INSERT INTO chor_wiz_relation(
		id_choroba,
		id_wizyta
	)
	VALUES(
		in_id_choroba,
		in_id_wizyta
	);
END
//
delimiter ;