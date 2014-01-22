CREATE INDEX pacjent_imienazwisko
ON pacjent (imie, nazwisko);

CREATE INDEX lekarz_imienazwisko
ON lekarz (imie, nazwisko);

CREATE INDEX specjalizacja_nazwa
ON specjalizacja (nazwa);

CREATE INDEX choroba_nazwa
ON choroba (nazwa);

CREATE INDEX  lek_nazwa
ON lek(nazwa);