import re

result = re.search(r"aza", "plaza")
print(result)

print('\n *********************** \n')

result = re.search(r"aza", "bazaar")
print(result)

print('\n *********************** \n')

result = re.search(r"aza", "apple")
print(result)

print('\n *********************** \n')

result = re.search(r"^x", "xenon")
print(result)

print('\n *********************** \n')

result = re.search(r"p.ng", "penguin")
print(result)

print('\n *********************** \n')

result = re.search(r"p.ng", "clapping")
print(result)

print('\n *********************** \n')

result = re.search(r"p.ng", "spong")
print(result)

print('\n *********************** \n')

result = re.search(r"p.ng", "Pangea", re.IGNORECASE)
print(result)

print('\n *********************** \n')

result = re.search(r"b.ok", "broken")
print(result)

print('\n *********************** \n')

result = re.search(r"b.ok", "book")
print(result)

print('\n *********************** \n')

result = re.search(r"b.ok", "facebook")
print(result)

