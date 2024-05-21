import re

print(re.search(r"[a-zA-Z]{5}", "a ghost"))
print("******************")

print(re.search(r"[a-zA-Z]{5}", "a scary ghost appeared"))

print("******************")

print(re.findall(r"[a-zA-Z]{5}", "a scary ghost appeared"))

print("******************")

print(re.findall(r"\b[a-zA-Z]{5}\b", "A scary ghost appeared"))

print("******************")

print(re.findall(r"\w{5,10}", "I really like strawberries"))

print("******************")

print(re.findall(r"\w{5,}", "I really like strawberries"))

print("******************")

print(re.search(r"s\w{,20}", "I really like strawberries"))
