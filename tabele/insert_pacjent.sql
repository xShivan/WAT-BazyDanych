delimiter //
CREATE PROCEDURE insert_pacjent(
	IN in_imie varchar(255),
	IN in_nazwisko varchar(255),
	IN in_data_urodzenia datetime,
	IN in_adres_zamieszkania text,
	IN in_liczba_wizyt int,
	IN in_liczba_badan int,
	IN in_liczba_chorob int
)

BEGIN

INSERT INTO pacjent(
	imie,
	nazwisko,
	data_urodzenia,
	adres_zamieszkania,
	liczba_wizyt,
	liczba_badan,
	liczba_chorob)
VALUES(
	in_imie,
	in_nazwisko,
	in_data_urodzenia,
	in_adres_zamieszkania,
	in_liczba_wizyt,
	in_liczba_badan,
	in_liczba_chorob
);

END
//
delimiter ;