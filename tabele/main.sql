DROP DATABASE IF EXISTS przychodnia_lekarska;
CREATE DATABASE przychodnia_lekarska;
use przychodnia_lekarska;
source badanie.sql;
source chor_pac_relation.sql;
source chor_wiz_relation.sql;
source choroba.sql;
source gabinet.sql;
source lek.sql;
source lek_pac_relation.sql;
source lek_spec_relation.sql;
source lekarz.sql;
source pacjent.sql;
source recepta.sql;
source recepta_lek_relation.sql;
source specjalizacja.sql;
source wizyta.sql;
source create_indexes.sql;
source klucze_obce.sql
source insert_choroba.sql;
source insert_pacjent.sql;
source insert_lekarz.sql;
source insert_gabinet.sql;
source insert_specjalizacja.sql;
source insert_lek.sql;
source insert_badanie.sql;
source insert_wizyta.sql;
source insert_recepta.sql;
source insert_pozycja_recepty.sql;
source insert_lekarz_pacjent_relation.sql;
source insert_lekarz_specjalizacja_relation.sql;
source insert_zdiagnozowana_choroba.sql;
source create_views.sql;
source create_triggers.sql;
source func_srednia_chorob.sql;
source insert_values.sql;