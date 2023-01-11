Übung 1 Aufgabe 3 11.01.2023

insert into staging.kunde (kunde_account, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
  values ('lilifee', 'Lili', 'Fee', 'Fräulein', 'weiblich', to_date('03.03.2003', 'DD.MM.YYYY'), 4, 'CRM');

insert into staging.fahrzeug (fin, kunde_account, baujahr, modell, quelle)
  values ('WB124536785788536', 'lilifee', 2018, 'S 1000 RR', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
  values ('WB124536785788536', 'UL-LF 333', 'Fahrzeug DB');