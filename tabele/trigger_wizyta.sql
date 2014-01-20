delimiter //
CREATE TRIGGER trigger_aktualizuj_wizyty
AFTER INSERT ON wizyta
FOR EACH ROW
BEGIN
	UPDATE pacjent p SET p.liczba_wizyt = p.liczba_wizyt + 1 WHERE p.id_pacjent = new.id_pacjent;
END
//
delimiter ;
;