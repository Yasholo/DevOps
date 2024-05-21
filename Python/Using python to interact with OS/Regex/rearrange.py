import re

def rearrange_name(name):
    result = re.search(r'^([\w .]*), ([\w .]*)$', name)
    return "{} {}".format(result[2], result[1])

print (rearrange_name("Lovelace, Ada"))

from rearrange import rearrange_name
rearrange_name("Lovelace, Ada")