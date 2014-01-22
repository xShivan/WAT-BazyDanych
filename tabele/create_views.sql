CREATE VIEW view_lista_kwalifikacji AS
SELECT CONCAT(l.imie, " ", l.nazwisko) "Lekarz", s.nazwa "Specjalność", g.nazwa "Pokój"
FROM specjalizacja s, gabinet g, lekarz l, lek_spec_relation rel
WHERE (rel.id_lekarz = l.id_lekarz) AND (rel.id_specjalizacja = s.id_specjalizacja) AND (s.id_gabinet = g.id_gabinet)
ORDER BY l.id_lekarz ASC;

CREATE VIEW view_historia_wizyt AS
SELECT CONCAT(l.imie, " ", l.nazwisko) "Lekarz", w.data_wizyty "Data wizyty", CONCAT(p.imie, " ", p.nazwisko) "Pacjent"
FROM lekarz l, wizyta w, pacjent p
WHERE (w.id_lekarz = l.id_lekarz) AND (w.id_pacjent = p.id_pacjent)
ORDER BY p.id_pacjent, w.data_wizyty;

delimiter //
CREATE PROCEDURE informacje_o_recepcie(
	IN in_id_recepta int
)
BEGIN
	DROP TABLE IF EXISTS widok_w_recepcie;
	CREATE TABLE widok_w_recepcie(
		wystawiajacy varchar(255),
		pacjent varchar(255),
		data_wystawienia datetime,
		liczba_lekow int
	);
	INSERT INTO widok_w_recepcie(wystawiajacy, pacjent, data_wystawienia, liczba_lekow)
	VALUES (
		(SELECT CONCAT(l.imie, ' ', l.nazwisko) FROM lekarz l WHERE id_lekarz = (SELECT id_lekarz FROM recepta WHERE id_recepta = in_id_recepta)),
		(SELECT CONCAT(p.imie, ' ', p.nazwisko) FROM pacjent p WHERE id_pacjent = (SELECT id_pacjent FROM recepta WHERE id_recepta = in_id_recepta)),
		(SELECT data_wystawienia FROM recepta WHERE id_recepta = in_id_recepta),
		(SELECT COUNT(*) FROM recepta_lek_relation WHERE id_recepta = in_id_recepta)
	);

END
//
delimiter ;