import paho.mqtt.client as mqtt
import time
import random
import datetime

broker_address="broker.hivemq.com"
client = mqtt.Client("LiliFee333", clean_session=False) 
client.connect(broker_address)

def publish_data(fin, speed, loc_id, now):
    data = f'''{{
        "fin":"{fin}",
        "zeit":"{now}",
        "geschwindigkeit":{speed},
        "ort":{loc_id}
        }}'''
    client.publish("DataMgmt/FIN", data, qos=1)

def calculate_speed(speed, speeding):
    if speeding:
        speed_up = random.randint(1, 10)
        speed = speed + speed_up
        if speed > 50:
            speed = 50
    else:
        speed_down = random.randint(5, 15)
        speed = speed - speed_down
        if speed < 0:
            speed = 0
    if speed <= 5:
        speeding = True

    if speed == 50:
        speeding = False
    return speed, speeding

fin = "WB124536785788536"
speed = 0
loc_id = 4
now = datetime.datetime.now()
speeding = True
publish_data(fin, speed, loc_id, now)

while True:   
    time.sleep(5)
    speed, speeding = calculate_speed(speed, speeding)
    loc_id = loc_id + 1
    if loc_id == 11:
        loc_id = 1
    now = datetime.datetime.now()
    publish_data(fin, speed, loc_id, now)