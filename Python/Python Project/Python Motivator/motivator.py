#RUN THIS FILE USING XVFB-RUN (Xvfb is OpenSource and provides a deamon process that acts like a virtual DISPLAY)
#CMD xvfb-run python3 motivator.py
#OR
#CMD xhost + (and then execute motivator.py)
#also try to runn in a virtual environment.

import time 
import pywhatkit
import requests
# import random
# import re
import pyautogui
# import keyboard as k 
from pynput.keyboard import Key, Controller
# from config import key
keyboard = Controller()


# pattern = r'\W+'

# with open('categorylist', 'r') as txt:
#     file = txt.read().strip()
# r = re.split(pattern, file)

# category = random.choice(r)

# print(category)

#def get_quote_of_the_day(category):

def get_quote_of_the_day():
    api_url = 'https://api.quotable.io/quotes/random'
    #headers = {'X-Api-Key': key}   
    #res = requests.get(url=api_url, headers=headers)
    res = requests.get(url=api_url)
    data = res.json()
    status = res.status_code
    match status:
        case 200:
            if data: 
                q = data[0]["content"]
                a = data[0]["author"]
                quote = f"Thought of the day :) \n\n{q}\n[by {a}]"             
                return quote
        case 400:
            print("Error 400")
            print(data)

        case _:
            print("Sorry, could not get the quote today :(")
            print (data)
quotef = get_quote_of_the_day()
print(quotef)


def final_function():
    try:
        n = input("Enter Phone no: ")
    # Rest of your code that uses the input 'n'
    except EOFError:
        print("Error: Unexpected end of input.")
    phone_no = "+91"+n
    try:
        pywhatkit.sendwhatmsg_instantly(
            phone_no, 
            message=quotef
        )
        time.sleep(2)
        pyautogui.click()
        time.sleep(2)
        keyboard.press(Key.enter)
        keyboard.release(Key.enter)
        # k.press_and_release('enter')
        print("Message sent!")

    except Exception as e:
        print("An error occurred:", str(e))

final_function()

