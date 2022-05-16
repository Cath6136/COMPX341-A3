#!/bin/bash
#This searches through all files with the .ts file type and adds a comment at the top of the file.
find . -type f -name "*.ts" -exec sed -i '1i //Cath Allan 1225210' {} \;



