import csv
#reading
f = open("csv_file.txt")
csv_f = csv.reader(f)
for row in csv_f:
    name, phone, role = row
    print("Name: {}, Phone: {}, Role: {}".format(name, phone, role))
f.close()
print("\n *********************** \n")

#writing

hosts = [["workstation.local", "192.186.25.46"], ["webserver.cloud", "10.2.5.6"]]
with open('hosts.csv', 'w') as hosts_csv:
    writer = csv.writer(hosts_csv)
    writer.writerows(hosts)
print("hosts.csv created!")
print("\n *********************** \n")

#Dictreader

with open('software.csv') as software:
    reader = csv.DictReader(software)
    for row in reader:
        print(("{} has {} users").format(row["name"], row["users"]))
print("\n *********************** \n")

#Dictwriter

users = [ {"name": "Sol Mansi", "username": "solm", "department": "IT infrastructure"},
{"name": "Lio Nelson", "username": "lion", "department": "User Experience Research"}, 
{"name": "Charlie Grey", "username": "greyc", "department": "Development"}]

keys = ["name", "username", "department"]
with open('by_department.csv', 'w') as by_department:
    writer = csv.DictWriter(by_department, fieldnames=keys)
    writer.writeheader()
    writer.writerows(users)
print("by_department created!")