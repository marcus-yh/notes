# ACL

## Visa ACL

getfacl file.txt


## Lägga till/ändra rättigheter för en specifik användare
setfacl -m u:joni:rwx fil.txt

## Lägga till/ändra rättigheter för en specifik grupp:
setfacl -m g:bybor:rwx fil.txt

## Ta bort alla ACL från en fil:
setfacl -b fil.txt

## Ta bort en specifik användares eller grupps ACL
setfacl -x u:joni fil.txt

## Sätt masken
setfacl -m m:rwx fil.txt

## Ta bort masken
setfacl -x m: fil.txt

