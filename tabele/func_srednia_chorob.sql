delimiter //

CREATE FUNCTION f_srednia_zachorowalnosc ()
  RETURNS FLOAT
    BEGIN
     DECLARE avarage FLOAT;
     SET avarage = (SELECT AVG(liczba_chorob) FROM pacjent);
     RETURN avarage;
    END;

//
delimiter ;