ALTER TABLE recepta_lek_relation
	add foreign key (id_recepta) references recepta(id_recepta) on delete cascade;
ALTER TABLE recepta_lek_relation
	add foreign key (id_lek) references lek(id_lek) on delete cascade;
ALTER TABLE chor_wiz_relation
	add foreign key (id_choroba) references choroba(id_choroba) on delete cascade;
ALTER TABLE chor_wiz_relation
	add foreign key (id_wizyta) references wizyta(id_wizyta) on delete cascade;
ALTER TABLE chor_pac_relation
	add foreign key (id_choroba) references choroba(id_choroba) on delete cascade;
ALTER TABLE chor_pac_relation
	add foreign key (id_pacjent) references pacjent(id_pacjent) on delete cascade;
ALTER TABLE lek_pac_relation
	add foreign key (id_pacjent) references pacjent(id_pacjent) on delete cascade;
ALTER TABLE lek_pac_relation
	add foreign key (id_lekarz) references lekarz(id_lekarz) on delete cascade;
ALTER TABLE lek_spec_relation
	add foreign key (id_specjalizacja) references specjalizacja(id_specjalizacja) on delete cascade;
ALTER TABLE lek_spec_relation
	add foreign key (id_lekarz) references lekarz(id_lekarz) on delete cascade;
ALTER TABLE recepta
	add foreign key (id_pacjent) references pacjent(id_pacjent) on delete cascade;
ALTER TABLE recepta
	add foreign key (id_lekarz) references lekarz(id_lekarz) on delete cascade;
ALTER TABLE recepta
	add foreign key (id_wizyta) references wizyta(id_wizyta) on delete cascade;
ALTER TABLE wizyta
	add foreign key (id_gabinet) references gabinet(id_gabinet) on delete cascade;
ALTER TABLE wizyta
	add foreign key (id_pacjent) references pacjent(id_pacjent) on delete cascade;
ALTER TABLE wizyta
	add foreign key (id_lekarz) references lekarz(id_lekarz) on delete cascade;
ALTER TABLE badanie
	add foreign key (id_pacjent) references pacjent(id_pacjent) on delete cascade;
ALTER TABLE badanie
	add foreign key (id_wizyta) references wizyta(id_wizyta) on delete cascade;
ALTER TABLE specjalizacja
	add foreign key (id_gabinet) references gabinet(id_gabinet) on delete cascade;
