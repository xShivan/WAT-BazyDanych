INSERT INTO gabinet(nazwa)
VALUES ('15'),
('30'),
('Sala operacyjna');

INSERT INTO specjalizacja(nazwa, id_gabinet)
VALUES ('Lekarz ogolny', 1),
('Stomatolog', 2),
('Chirurg', 3);

INSERT INTO lekarz( imie, nazwisko, data_urodzenia ) 
VALUES ('Lukasz',  'Tomica',  '1969-12-12');

INSERT INTO lek_spec_relation(id_lekarz, id_specjalizacja)
VALUES (1, 1),
(1, 3);

INSERT INTO pacjent(imie, nazwisko, data_urodzenia, liczba_wizyt, liczba_chorob) 
VALUES ('Ignacy',  'Cieslar',  '1975-11-20', 3, 3),
('Michal',  'Cywinski',  '1992-07-29', 2, 2),
('Joanna',  'Wilczek',  '2001-07-29', 0, 0);

INSERT INTO choroba(nazwa)
VALUES ('Przeziebienie'),
('Grypa'),
('Zapalenie pluc'),
('Bol zeba'),
('Zapalenie wyrostka robaczkowego');

INSERT INTO chor_pac_relation(id_choroba, id_pacjent)
VALUES (1, 1),
(2, 1),
(3, 1),
(2, 2),
(2, 3);

INSERT INTO wizyta(id_gabinet, id_pacjent, id_lekarz, data_wizyty)
VALUES
(1, 1, 1, '2014-05-01'),
(1, 1, 1, '2014-06-01'),
(1, 1, 1, '2014-20-01'),
(1, 2, 1, '2013-10-12'),
(1, 2, 1, '2014-15-01');

INSERT INTO chor_wiz_relation(id_choroba, id_wizyta)
VALUES
(1, 1),
(2, 2),
(5, 3),
(1, 4),
(3, 5);

INSERT INTO lek(nazwa)
VALUES
('Witamina C'),
('Gripex'),
('Scorbolamid'),
('Masc');

INSERT INTO recepta(data_wystawienia, id_pacjent, id_lekarz, id_wizyta)
VALUES
('2014-05-01', 1, 1, 1),
('2014-06-01', 1, 1, 2),
('2014-20-01', 1, 1, 3),
('2013-10-12', 2, 1, 4),
('2014-15-01', 2, 1, 5);

INSERT INTO recepta_lek_relation(id_recepta, id_lek)
VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 4),
(4, 2),
(5, 2),
(5, 3),
(5, 4);