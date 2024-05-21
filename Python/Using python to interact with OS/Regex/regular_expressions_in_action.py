import re

print(re.search(r"A.*a", "Argentina"))
print("***************\n")

print(re.search(r"A.*a", "Azerbaijan"))
print("***************\n")

print(re.search(r"^A.*a$", "Azerbaijan"))
print("***************\n")

print(re.search(r"A.*a", "Australia"))
print("***************\n")

pattern = r"^[a-zA-Z_][a-zA-Z0-9_]*$"

print(re.search(pattern, "_this_is_a_valid_variable_name"))
print("***************\n")

print(re.search(pattern, "this isn't a valid variable"))
print("***************\n")

print(re.search(pattern, "my_variable1"))
print("***************\n")

print(re.search(pattern, "2my_variable1"))
print("***************\n")

