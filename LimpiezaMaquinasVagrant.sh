#!/bin/bash

VBoxManage list vms | sed -r 's/^"(.*)" \{([a-z0-9-]+)\}$/\1/' | egrep -v '^<inaccessible>$' | while read vm id; do

echo "Apagando $vm";
	VBoxManage controlvm "$vm" poweroff ;
echo "Eliminando $vm" ;
	VBoxManage unregistervm "$vm" --delete ;
done

echo "status: ";
VBoxManage list vms | sed -r 's/^"(.*)" \{([a-z0-9-]+)\}$/\1/' | egrep -v '^<inaccessible>$'
