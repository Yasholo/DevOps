import time 
import pywhatkit
import requests
# import random
# import re
import pyautogui
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
    n = input("Enter Phone no: ")
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
        print("Message sent!")
    except Exception as e:
        print("An error occurred:", str(e))

final_function()

