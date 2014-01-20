delimiter //
CREATE PROCEDURE insert_lek(
	IN in_nazwa varchar(255),
	IN in_opis text,
	IN in_informacje_dodatkowe text
)

BEGIN
	INSERT INTO lek(
		nazwa,
		opis,
		informacje_dodatkowe
	)
	VALUES(
		in_nazwa,
		in_opis,
		in_informacje_dodatkowe
	);
END
//
delimiter ;