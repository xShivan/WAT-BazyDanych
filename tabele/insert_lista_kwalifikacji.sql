CREATE VIEW view_lista_kwalifikacji AS
SELECT s.nazwa "Specjalność", g.numer_pokoju "Pokój", CONCAT(l.imie, " ", l.nazwisko) "Imię i nazwisko lekarza"
FROM specjalizacja s, gabinet g, lekarz l, lek_spec_relation rel
WHERE (rel.id_lekarz = l.id_lekarz) AND (rel.id_specjalizacja = s.id_specjalizacja) AND (s.id_gabinet = g.id_gabinet)
ORDER BY l.id_lekarz;
