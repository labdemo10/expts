import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)

pir_pin = 16

GPIO.setup(pir_pin, GPIO.IN)

while True:
    if GPIO.input(pir_pin):
        print("Motion detected!")
    time.sleep(0.5)
