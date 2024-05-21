import re

print(re.search(r"Py.*n", "Pygmalion"))
print("*****************\n")

print(re.search(r"Py.*n", "Python Programming"))
print("*****************\n")

print(re.search(r"Py[a-z]*n", "Python Programming"))
print("*****************\n")

print(re.search(r"Py[a-z]*n", "Pyn"))
print("*****************\n")

print(re.search(r"o+l+", "goldfish"))
print("*****************\n")

print(re.search(r"o+l+", "woolly"))
print("*****************\n")

print(re.search(r"o+l+", "boil"))
print("*****************\n")

print(re.search(r"p?each", "To each their own"))
print("*****************\n")

print(re.search(r"p?each", "I like peaches"))
print("*****************\n")

