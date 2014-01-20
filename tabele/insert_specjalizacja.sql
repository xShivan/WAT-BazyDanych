delimiter //
CREATE PROCEDURE insert_specjalizacja(
	IN in_nazwa varchar(255),
	IN id_gabinet int
)

BEGIN

INSERT INTO specjalizacja(
	nazwa,
	id_gabinet)
VALUES(
	in_nazwa,
	in_gabinet
);

END
//
delimiter ;