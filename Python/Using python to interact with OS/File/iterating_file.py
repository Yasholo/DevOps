with open("D:\projects\Python\File\oldman.txt") as file:
    for line in file:
        print(line.upper())
    print ("********************************")

with open("D:\projects\Python\File\oldman.txt") as file:
    for line in file:
        print(line.strip().upper())
    print ("********************************")    

file = open("D:\projects\Python\File\oldman.txt")
lines = file.readlines()
file.close()
lines.sort()
print(lines)