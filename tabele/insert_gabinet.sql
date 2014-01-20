delimiter //
CREATE PROCEDURE insert_gabinet(
	IN in_numer_pokoju varchar(255)
)
BEGIN

INSERT INTO gabinet(
	nazwa
)
VALUES(
	in_numer_pokoju
);

END
//
delimiter ;