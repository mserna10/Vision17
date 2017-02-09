1.Command grep is used for serch matching strings in a file. So you can search for a word. And depending on its options you can get a lot of properties of the strings you are looking for.

2.The -prune option of the command find is used to not including subdirectories when you are looking for a file.
Example>
find -name .snapshot -prune -o -name '*.foo' -print
what this will do is to find files without the subdirectory snapshot 

3.Command cute its used to cut out sections of a file, which also depends on the options. 

4.Command rsync is used for copying files. It is a replacement for the command rcpand it has a lot of options that contorol every aspect of its behavior and it allows very specification of the set of files to be copied. 

5.Command diff compares two different files and shows the lines that are different  

6.Command tail shows the last lines of a file. By default it prints the last 10 
lines, but you can specified the number of lines you want it to print.
7.The option -f in the command tail shows the last 10 lines of the document and it keeps track of it, this means that it prints the new lines of the document. 

8.command link creates a file related to a existing file. Therefore the changes made in the file created are going to change the file it is linked to. 















References
http://stackoverflow.com/questions/1489277/how-to-use-prune-option-of-find-in-sh
https://www.howtoforge.com/faq/how-to-edit-files-on-the-command-line
http://www.computerhope.com/unix/ucut.htm
http://www.computerhope.com/unix/rsync.htm
http://www.computerhope.com/unix/udiff.htm
http://www.computerhope.com/unix/utail.htm
http://www.computerhope.com/unix/link.htm

