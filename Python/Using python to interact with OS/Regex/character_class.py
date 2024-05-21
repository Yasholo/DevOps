import re

print(re.search(r"[Pp]ython", "Python"))
print("\n **************************** \n")

print(re.search(r"[a-z]way", "The end of the highway"))
print("\n **************************** \n")

print(re.search(r"[a-z]way", "What a way to go"))
print("\n **************************** \n")

print(re.search("cloud[a-zA-Z0-9]", "cloudy"))
print("\n **************************** \n")

print(re.search("cloud[a-zA-Z0-9]", "cloud9"))
print("\n **************************** \n")

print(re.search(r"[^a-zA-Z]", "This is a sentence with spaces."))
print("\n **************************** \n")

print(re.search(r"[^a-zA-Z ]", "This is a sentence with spaces."))
print("\n **************************** \n")

print(re.search(r"cat|dog", "I like cats."))
print("\n **************************** \n")

print(re.search(r"cat|dog", "I like dogs."))
print("\n **************************** \n")

print(re.search(r"cat|dog", "I like both dogs and cats."))
print("\n **************************** \n")

print(re.findall(r"cat|dog", "I like both dogs and cats."))
print("\n **************************** \n")
