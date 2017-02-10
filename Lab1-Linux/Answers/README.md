Laboratory 1 - Answers

Mariajosé Serna A.
Henry Daniel Torres A.

1. grep: The grep command on unix-based operating allows the user to search a certain text(char or string) on a given file. The result is a display of the matching lines on the file that contains the searched text. 
Retrieved from: https://www.cyberciti.biz/faq/howto-use-grep-command-in-linux-unix/ 

2. find -prune: The prune option allows the user to ignore a given proceding path. 
Example: find . -path './media' -prune -o -print
*Finds all files in the directory(.)
*prune(ignore) the proceding path of './media'
*THen if no match print (prune or print)
Retrieved from: http://www.liamdelahunty.com/tips/linux_find_prune_directory.php
Retrieved from: http://www.liamdelahunty.com/tips/linux_find_exclude_multiple_directories.php

3. cut: The cut command is used in linux to extract a portion of text from a file by selecting columns. The command has very useful options like select the column using start or end position, using a range, delimit the selection, among other. 
Retrieved from: http://www.thegeekstuff.com/2013/06/cut-command-examples

4. rsync: This command is commonly used to perform backups and mirroring between two Linux machines, as it permits copying ans synchronizing local or remote files and directories.
Retrieved from: http://www.tecmint.com/rsync-local-remote-file-synchronization-commands/

5. diff: The function of this command is to analyze two files and print the lines that are different. 
Retrieved from: http://www.computerhope.com/unix/udiff.htm

6. tail: tail command prints the last 10 lines(the tile) of a given file or set of files.
Retrieved from: http://www.computerhope.com/unix/utail.htm

7. tail -f: This option outputs the last 10 lines of the given file and monitors it to continue to output any new lines that are added.
Retrieved from: http://www.computerhope.com/unix/utail.htm

8. link: The command link allows the user to link two files. This means that any changes that occurred with either of these files would affect the othe file or link.
Retrieved from: http://www.computerhope.com/unix/link.htm

9. #! /bin/bash: It's a convention for the kernel to know what kind of interpreter (a software to translate to source code to machine languaje) to use. The "/bash" stands for the Bash enviroment as "/python" or "/pearl" stands for the python and pearl enviroment respectively.

10. In the course server exist 40 users. To find out this information we logged into the server and then enter the command cat /etc/passwd

retrieved from: 

11. cut -d : -f1,7 /etc/passwd | sort -t : -k2 

cut -d : -f1,7 /etc/passwd | sort -t : -k2 > shell.sorted --> organized names

12. 
#!/bin/bash
#Finding_duplicate_images

#Current directory
cd

#
#find images in the current directory 
 images=$(find ./ -type f \( -iname \*.jpg -o -iname \*.png\))

#sum of bytes of all images 
imagescar =$(cksum images)



for i in ${imagescar[*]}
for j in ${imagescar[*]}
  if [${imagescar[i]} -eq ${imagescar[j]} | i -ne j]

echo ${imagescar[i]} is duplicated 

else 

     ${imagescar[i]} is not duplicated

fi 

done 

14. The size of the uncompressed BSR dataset is 73.6 Mb. On the specified route there is 503 picture files divide into 3 folders (train, test and val)


15. The images have a .jpg format and some of them exhibit a size of 321x481 pixels and others 481x321 pixels.


16. In the entire database there are 351 images on landscape orientation.


17. cd your/path/to/images | convert '*.jpg[256x256]' imagen%.jpg

http://www.imagemagick.org/script/index.php

















