delimiter //
CREATE PROCEDURE insert_lekarz(
	IN in_imie varchar(255),
	IN in_nazwisko varchar(255),
	IN in_data_urodzenia datetime,
	IN in_adres_zamieszkania text
)

BEGIN

INSERT INTO lekarz(
	imie,
	nazwisko,
	data_urodzenia,
	adres_zamieszkania)
VALUES(
	in_imie,
	in_nazwisko,
	in_data_urodzenia,
	in_adres_zamieszkania
);

END
//
delimiter ;