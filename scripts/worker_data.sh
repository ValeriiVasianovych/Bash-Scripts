#!/bin/bash

echo "Hello, enter some information about yourself"
read -r -p "[Your Name]: " name
read -r -p "[Your Surname]: " surname
read -r -p "[Your Position]: " position
read -r -p "[Phone Number]: " phone

if [[ -n $name ]] && [[ -n $surname ]] && [[ -n $position ]] && [[ -n $phone ]] && [[ $name =~ ^[a-zA-Z\s-]+$ ]] && [[ $surname =~ ^[a-zA-Z\s-]+$ ]] && [[ $position =~ ^[a-zA-Z\s-]+$ ]] && [[ $phone =~ ^[0-9]+$ ]]; then
    cat << EOF > data.json
{
    "name": "$name",
    "surname": "$surname",
    "position": "$position",
    "phone": "$phone"
}
EOF
else
    echo "Invalid input"
    exit 1
fi
