import autowhat
import platform
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

#######
x = platform.system()
# y = dir(platform)
autowhat.botbegin(x)
# print (y)
########

driver = webdriver.Chrome('/usr/local/bin/chromedriver-linux64/chromedriver')
driver.get("https://www.nike.com/in")

print(driver.title)

search_bar = driver.find_element_by_class_name("pre-nav-design-icon")

search_bar.clear()
search_bar.send_keys("jordan")
search_bar.send_keys(Keys.RETURN)