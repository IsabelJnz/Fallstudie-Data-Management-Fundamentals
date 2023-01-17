# Fallstudie-Data-Management-Fundamentals
Erstellen Sie ein DWH aus internen und externen Daten

• Interne Daten: Kunden, Fahrzeuge, u.ä

• Externe Daten: Messdaten / Fahrzeugdaten

• Komponenten


RDBMS (PostgreSQL) zum Aufbau des DWH

• Python, Javascript, SQL für Datenerzeugung, Datentransfer, Datentransformation

• Batch: csv-Dateien (hier: SQL-Skripte) für interne Daten

• Stream: Sensordaten, die über MQTT (Message Queue Telemetry Transport) übertragen werden, für externe Daten
