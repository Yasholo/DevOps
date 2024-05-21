import re

print(re.search(r".com", "welcome"))
print("*****************\n")

print(re.search(r"\.com", "welcome"))
print("*****************\n")

print(re.search(r".com", "mydomain.com"))
print("*****************\n")

print(re.search(r"\w*", "This is an example"))
print("*****************\n")

print(re.search(r"\w*", "And_this_is_another"))
print("*****************\n")