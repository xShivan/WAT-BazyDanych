delimiter //
CREATE PROCEDURE insert_choroba(
	IN in_nazwa varchar(255),
	IN in_opis text
)

BEGIN

INSERT INTO choroba(
	nazwa,
	opis)
VALUES(
	in_nazwa,
	in_opis
);

END
//
delimiter ;