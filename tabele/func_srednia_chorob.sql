delimiter //

CREATE FUNCTION f_srednia_zachorowalnosc ()
  RETURNS INT
    BEGIN
     DECLARE avarage INT;
     SET avarage = (SELECT AVG(liczba_chorob) FROM pacjenci);
     RETURN avarage;
    END;

//
delimiter ;