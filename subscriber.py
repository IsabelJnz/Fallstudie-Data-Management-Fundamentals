import paho.mqtt.client as mqtt
import psycopg2
conn = psycopg2.connect("dbname='postgres' user='postgres' password='p%zeUq$8uUw9' host='localhost' port='5432'")
cursor = conn.cursor()

broker_address="broker.hivemq.com"
def on_message(client, userdata, message):
    print("message received " ,str(message.payload.decode("utf-8")))
    print("message topic=",message.topic)
    print("message qos=",message.qos)
    print("message retain flag=",message.retain)
    cursor.execute("INSERT INTO staging.messung (payload) VALUES(%s)", [str(message.payload.decode("utf-8"))])
    conn.commit()
    
client = mqtt.Client("LiliFee333", clean_session=False) #use your own unique ID
client.on_message=on_message
client.connect(broker_address)
client.subscribe("DataMgmt/FIN", qos=1)
client.loop_forever()
cursor.close()
conn.close()