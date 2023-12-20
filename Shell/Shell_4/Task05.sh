#!/bin/bash
<<Exercise
Create a script that has 3 functions: mk_folder, download_image and change_perm.

mk_folder function asks a new folder path from the user and creates the folder.
download_image function downloads the following image to the previously created directory and
renames it as a linux-tux.png: image

change_perm function sets the folder and image permissions in a way that only owner has rights to them (rwx).

Every possible variable substitution and command execution must be shown in the terminal during the execution.
Exercise
set -x
read -p "give a path: " path
function mk_folder {
mkdir ${path}
}
mk_folder
function download_image {

wget https://student.labranet.jamk.fi/~pekkju/script/tux.png -P ${path}
cd ${path}
newfile=$(${path} | ls)
mv ${newfile} linux-tux.png


}
download_image

function change_perm {



newfile=$(${path} | ls)
chmod u=rwx ${path}/${newfile}
chmod u=rwx ${path}
}
change_perm
set +x
