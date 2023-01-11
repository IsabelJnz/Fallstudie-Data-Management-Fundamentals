
insert into staging.hersteller (hersteller_code, hersteller, quelle)
  values 
      ('WDD', 'Mercedes-Benz', 'Fahrzeug DB')
	, ('WVW', 'Volkswagen', 'Fahrzeug DB')
	, ('WBA', 'BMW', 'Fahrzeug DB')
	, ('WB1', 'BMW Motorrad', 'Fahrzeug DB')
	, ('1FM', 'Ford', 'Fahrzeug DB')
	, ('ZFF', 'Ferrari', 'Fahrzeug DB')
	, ('WMA', 'MAN', 'Fahrzeug DB')
	, ('WAU', 'Audi', 'Fahrzeug DB')
	, ('WPO', 'Porsche', 'Fahrzeug DB')
	, ('SCC', 'Lotus', 'Fahrzeug DB')
	, ('WOL', 'Opel', 'Fahrzeug DB')
	, ('VF1', 'Renault', 'Fahrzeug DB')
	, ('SNT', 'Sachsenring Automobilwerke Zwickau GmbH', 'Fahrzeug DB')
;


insert into staging.land (land_id, land, quelle) values 
      (101, 'Deutschland', 'Geo System')
	, (102, 'Österreich', 'Geo System')
	, (103, 'Mittelerde', 'Geo System')
	, (104, 'Schweiz', 'Geo System')
	, (105, 'China', 'Geo System')
;

insert into staging.ort (ort_id, ort, land_id, quelle) values 
      (1, 'Stuttgart', 101, 'Geo System')
	, (2, 'München', 101, 'Geo System')
	, (3, 'Frankfurt', 101, 'Geo System')
	, (4, 'Türmli', 104, 'Geo System')
	, (5, 'Xian', 105, 'Geo System')
	, (6, 'Peking', 105, 'Geo System')
	, (7, 'Valmar', 103, 'Geo System')
	, (8, 'Númenor', 103, 'Geo System')
	, (9, 'Wien', 102, 'Geo System')
	, (10, 'Rot a.d. Rot', 100, 'Geo System')
;
	


insert into staging.kunde (kunde_account, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
  values ('kminion', 'Kevin', 'Minion', 'Herr', 'männlich', to_date('12.02.1990', 'DD.MM.YYYY'), 7, 'CRM');

insert into staging.fahrzeug (fin, kunde_account, baujahr, modell, quelle)
  values ('SNTU411STM9032150', 'kminion', 1985, 'Trabant 601 de luxe', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
  values ('SNTU411STM9032150', 'UL-DV 111', 'Fahrzeug DB');
