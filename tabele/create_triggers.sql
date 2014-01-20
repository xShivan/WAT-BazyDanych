delimiter //
CREATE TRIGGER trigger_aktualizuj_badanie
AFTER INSERT ON badanie
FOR EACH ROW
BEGIN
	UPDATE pacjent p SET p.liczba_badan = p.liczba_badan + 1 WHERE p.id_pacjent = new.id_pacjent;
END
//
delimiter ;

delimiter //

CREATE TRIGGER trigger_aktualizuj_choroby
AFTER INSERT ON chor_pac_relation
FOR EACH ROW
BEGIN
	UPDATE pacjent p SET p.liczba_chorob = p.liczba_chorob + 1 WHERE p.id_pacjent = new.id_pacjent;
END

//
delimiter ;

delimiter //
CREATE TRIGGER trigger_aktualizuj_wizyty
AFTER INSERT ON wizyta
FOR EACH ROW
BEGIN
	UPDATE pacjent p SET p.liczba_wizyt = p.liczba_wizyt + 1 WHERE p.id_pacjent = new.id_pacjent;
END
//
delimiter ;
