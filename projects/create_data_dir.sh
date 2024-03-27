#!/bin/bash

function selectMethod {

    echo "Select compressing/archiving method"
    echo "tar.gz  (1)"
    echo "tar.bz2 (2)"
    echo "tar.xz  (3)"
    echo ".zip    (4)"
    read -p "Enter your method: " choice

    case  $choice in
    1)
        echo "You selected tar.gz method."
        tar -czf "$destDir/$archiveName.tar.gz" -C "$sourcePath" .
        ;;
    2)
        echo "You selected tar.bz2 method."
        tar -cjf "$destDir/$archiveName.tar.bz2" -C "$sourcePath" .
        ;;
    3)
        echo "You selected tar.xz method."
        tar -cJf "$destDir/$archiveName.tar.xz" -C "$sourcePath" .
        ;;
    4)
        echo "You selected zip method."
        zip -r "$destDir/$archiveName.zip" "$sourcePath"
        ;;
    esac
}

function selectPath {
    read -p "Source path to archive: " sourcePath
    sourcePath=$(readlink -f "$sourcePath")
    read -p "Destination directory: " destDir
    destDir=$(readlink -f "$destDir")
    read -p "Name of the archive: " archiveName

    if [ -e "$sourcePath" ]; then
        if [ ! -e "$destDir" ]; then 
            echo "Destination directory doesn't exist, creating..."
            mkdir -p "$destDir"
        fi
        selectMethod
    else
        echo "Source path doesn't exist. Please enter an existing path."
    fi
}

selectPath
