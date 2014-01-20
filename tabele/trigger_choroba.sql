delimiter //

CREATE TRIGGER trigger_aktualizuj_choroby
AFTER INSERT ON chor_pac_relation
FOR EACH ROW
BEGIN
	UPDATE pacjent p SET p.liczba_chorob = p.liczba_chorob + 1 WHERE p.id_pacjent = new.id_pacjent;
END

//
delimiter ;
;