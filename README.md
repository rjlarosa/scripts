These scripts can be used in the terminal to modify or merge different files.
- Open the terminal _Applications>Utilities>Terminal_ and set your working directory. I set mine to my GitHub repo folder by typing cd (space) and then dragging in the repo folder that I wanted to be my home directory.

> cd /Users/user/Tools/GitHub\ Repositories

- The script files are in _Repositories>scripts_ 

## `colmerge.rb`Merging two files with matching columns to create a new file
- Identify the path to your two files
- Determine which file is your source file (the one that you want to copy unchanged) and your reference file (the one you want to copy columns from to add to the end of the source file columns)
- You'll need to give 4-5 inputs: `-c`,`-f`,`-s`,`-r`, and `output`

> ./scripts/colmerge.rb -c 3:6 -f 1,2,3 -s DataRepo/data1.csv -r DataRepo/data2.csv >output.csv

- `-s` is the source file. This is your main file that you want to make additions to (the original source file will remain unchanged unless you set the output to save over it).
- `-r` is the reference file. This is the file that you want to match columns with the source file, and copy columns from.
- Columns from your `-r` file will be tacked onto the end of your `-s` file. **Make sure neither of your files have commas other than the ones used to delineate your columns**.
- `-c` is the columns to compare. You can compare just one or several columns. The number before the colon is the source and the number after is the reference, so 3:6 compares column 3 from the source file to column 6 of the reference file. If you need to compare multiple columns, put commas in between, like `-c 3:6,4:7,6:1`
- `-f` is columns you want to copy from the reference file to the source file. Use commas between the column numbers if you need to copy more than one. e.g., `-f 1,2,3` will copy columns 1 through 3 from the reference file.
- If you don't include an output file name, the output will be printed in the terminal window. To save the output as a csv file, you will need to give a name for the file after `>`. In my example, I called the output file `output.csv`. 
- The output file will be saved in the working directory, unless you direct it somewhere else, like `>scripts/output.csv` if a scripts folder already exists, or `mkdir -p scripts/outputs/output.csv` if the path doesn't yet exist. In this second case, I'm creating a new folder called _outputs_ in the newly made _scripts_ folder.
