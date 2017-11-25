#!/bin/bash
packageJsonPath="./package.json" #Path to package.json

packageJson=$(cat ${packageJsonPath}); #Grabs packageJson contents in current directory run

versionNumberLine=$("${packageJson}" | grep -w "version" "${packageJsonPath}" | awk -F '["|"]' '{ print $4 }' "${versionNumberLine}");

IFS="." read -r -a versionNumberArray <<< "$versionNumberLine";

dateTime=$(date "+%d%m%y%H%M%S"); #Date/timestamp currently formatted with no spaces or characters

versionNumberArray[2]=${dateTime}; # Set the bug version to the dateTime

newVersion=${versionNumberArray[0]}"."${versionNumberArray[1]}"."${versionNumberArray[2]}; #Concatenate the major, minor and bug version.

jq '.version='\"${newVersion}\" package.json|sponge package.json; #Assign value to be the new version
