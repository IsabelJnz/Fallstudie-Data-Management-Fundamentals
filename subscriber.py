import paho.mqtt.client as mqtt
import psycopg2

broker_address="broker.hivemq.com"
def on_message(client, userdata, message):
    pass
# <JSON Message in DB schreiben>
client = mqtt.Client("S1", clean_session=False) #use your own unique ID
client.on_message=on_message
client.connect(broker_address)
client.subscribe("DataMgmt/FIN", qos=1)
# … (unvollständig, z.B. Schleife ergänzen)

# conn = psycopg2.connect("dbname='postgres' user='postgres' password='…' host='localhost' port='5432'")