
#!/bin/bash
MyFile=cars.txt
if [ -f "$MyFile" ]; then
echo "$MyFile exists."
else 
echo "$MyFile does not exist."
fi
