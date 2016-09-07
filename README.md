# ZIP Same Files

This is very basic shell script to compress large amount of JPG files and their pairs with different extension into separate ZIP files. Useful for photo stock contributors.

## What does this script do?

This script will take all JPG files and find each JPG file pair and then create a ZIP file with the JPG filename.
In other words, you have: file1.jpg, file1.eps, file2.jpg, file2.eps and after running this script you will get: file1.zip, file2.zip.

*Check a screenshot below to see what I mean*

<img src="https://raw.githubusercontent.com/kersh/zip-same-files/master/screenshots/transformation-example.png" width="530px">


## How to use it?

**For macOS users**

You can use it via `right click -> Services -> ZIP Same Files`. Script work if you click on **folder** or **select needed files**.

![How To Use On the macOS](https://raw.githubusercontent.com/kersh/zip-same-files/master/screenshots/how-to-use.png)


**For other Unix systems**

- Download shell script.
- Put .sh file into a folder with your files.
- Open terminal and navigate to the folder with a script and your files.
- Run shell script via this command: `./zip-same-files.sh`


## How to install it?

- Download automator [**ZIP Same Files.workflow**](https://github.com/kersh/zip-same-files/blob/master/ZIP%20Same%20Files.workflow.zip?raw=true) file.
- Double click on **ZIP Same Files.workflow** file.
- Press install.

<img src="https://raw.githubusercontent.com/kersh/zip-same-files/master/screenshots/how-to-install-automator.png" width="530px">
