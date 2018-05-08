#!/bin/bash

clear
pwd
cd ~
echo We will create a directory name "cars" in your home directory
mkdir cars
#now we will move to the cars directory and add a file there with a list of car brands
cd cars
touch Brands
echo Chevy Ford Nissan Toyota Honda > Brands
cat Brands
cp Brands Models
# we will now replace the list of brands with Models
echo Malibu Focus GTR Tundra Civic> Models
ls 
#Using grep to find everything that has a "T" in the Models file 
grep "T" Models
#What kind of file is Brands
file Brands
#using head to print the head part of Models
head Models
#using tail to print the last lines of the Brands file
tail Brands
#Using sort to sort the list on the Brands file
sort -r Models
#The difference between Brands and Models files
diff Brands Models
#deleting the files
rm Models
rm Brands
#Deleting the Cars directory
cd ../
rmdir cars
