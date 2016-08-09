# Entering data 
### For a file that is already created:
The data will be stored on the GitHub servers, but each collaborator can sync the files to their personal computers or the lab computer using the GitHub Desktop app. To edit the files (e.g., enter additional data), you may need to `sync` the `repository`, then create a `branch`, edit the file, then open a `pull request` (PR). Raffica or Nancy will review the pull request and if all looks good, they will `merge` it to the `master` file.

* Early on, figure out how you want your data sorted so that it can be easily returned to that order and the changes can be tracked. I typically put it in the order I want and then label the last column "order" and fill down with 1, 2, 3, etc. so that later I can easily return to this order if I sort by other columns in the interum. This method also takes care of an Excel quirk (see below).

## Using the GitHub website to enter data

### Logging in
Make sure that you are logged into [GitHub](www.github.com) as yourself and logged out when you are done.

Navigate to the lasthenia repo by clicking on `rjlarosa/lasthenia` in the lower right box labeled "Your repositories."

### Create a branch
Click on the `Branch: master` drop down box and type in your name in the box, then click "Create branch: yourname." Every time you enter data to add to the master branch, you will be making a new branch with your name. Every time I merge the data you entered with the `master` I will delete the branch you made. 

<img width="324" alt="branch-web" src="https://cloud.githubusercontent.com/assets/11378064/16968240/d4f30384-4dca-11e6-96c2-bfcef44f12b3.png">
<img width="313" alt="branch-raffica" src="https://cloud.githubusercontent.com/assets/11378064/16968242/d657aed2-4dca-11e6-82f0-9369f3086f95.png">

Now that you created a new branch, the branch dropdown should show your name: `Branch: YourName`

### Download the file or edit in place
1. Click on the .csv file you need to edit
2. For minor changes/fixes, click on the pencil icon on the right <img width="35" alt="pencil" src="https://cloud.githubusercontent.com/assets/11378064/16969492/79542316-4dd2-11e6-9b50-13ffa0b35899.png">, make your changes, then go to step 3 of Upload your updated...
3. For more extensive changes, right click on `Raw` and Windows users should choose "Save target as" and leave the file name as is and save it to the Downloads folder. Mac users should choose "Download Linked File."

### Make changes to the data file
1. Using the Finder (Mac) or Documents (Windows) find your file in the Downloads folder and open it in your preferred spreadsheet application (Excel, Numbers, etc.).
2. Enter data, **saving as you go**. If you sorted the data while working on it, return it to its original order before saving it a final time.

### Upload your updated version back to GitHub and commit changes
1. In the web browser, navigate to rjlarosa/lasthenia and **make sure you are in your branch**. The drop down should say Branch:yourname. **Do not drop files into the `master`!**
2. Drag your updated file that is in the Downloads folder onto the list of files in the browser. A large box should appear that says, "Drop to upload your files." Drop your file there.
3. A "Commit changes" changes box will be at the bottom of the page. Give your changes a short descriptive title, and longer description if necessary. **Make sure that the option that is selected lists `yourname` and NOT `master`.** Click Commit changes.
<img width="1002" alt="commit-changes" src="https://cloud.githubusercontent.com/assets/11378064/16969494/7c18fd2e-4dd2-11e6-8341-b87486c8942f.png">

### Open a pull request
Opening a pull request is a way of merging the changes you made with the `master` file. You should do this at the end of the day if you have entered a good chunk of data. If you have only made a few changes and are not yet ready to open a pull request, you can commit your changes to save them to GitHub, but don't forget to open a pull request soon to keep the master file up to date.

1. To open a pull request, go back to rjlarosa/lasthenia, Click the `Pull Request` button that is next to the Branch drop down.
2. The request should say: `base:master` ... `compare:yourname`. If the two are compatible, there will be a message that says they are "Able to merge." If you do not get that message, ask for help. <img width="1013" alt="pull-request-web" src="https://cloud.githubusercontent.com/assets/11378064/16969663/aec8fdae-4dd3-11e6-9a58-34f09c6c9173.png">
3. Enter a descriptive title. If you have any comments about the data, enter them in the comments box. This would be a good place to mention if there are any data entries that need to be investigated. If anything was fishy, it would be best to create an [Issue](https://github.com/rjlarosa/lasthenia/blob/master/tips.md#issues) and assign it to whoever is supervising the research.
4. Assign the pull request to `rjlarosa` so that she will be notified of the request and can merge it in a timely manner.
5. Done! :tada: :tada:
6. Raffica will look over your changes, merge them, then delete your branch. If you submitted a pull request, but need to work on a different file before the other one has been merged, you can make a new branch called `YourName2`, and so on.

## Using GitHub Desktop (for now we will not use this method)

### Syncing the file
1. Open up GitHub Desktop. Before you open up any of the files in the repository ("repo"), you should first make sure your versions are up-to-date by syncing the repo. Choose the lasthenia repo from the left side, click Sync in the upper right to make sure that your version is the most up to date.

### Create a branch
Creating a branch will ensure that the `master` is kept clean and tidy. 
2. a. In GitHub Desktop: make sure `lasthenia` is selected on the left hand side. Go to the top of the window and click on the branch icon (mac)<img width="34" alt="branch" src="https://cloud.githubusercontent.com/assets/11378064/16962742/33c249da-4db0-11e6-96e2-25c107938ecb.png"> (win)<img width="32" alt="branch-win" src="https://cloud.githubusercontent.com/assets/11378064/16967381/ea1026fc-4dc5-11e6-8e31-985b0b1f1891.png">

Type your name into the name box, and make sure master is selected in the From box. 

(mac)<img width="423" alt="new-branch" src="https://cloud.githubusercontent.com/assets/11378064/16962782/6a5affaa-4db0-11e6-9674-478abe2a71c3.png"> (win)<img width="365" alt="new-branch-win" src="https://cloud.githubusercontent.com/assets/11378064/16967397/f8ac5352-4dc5-11e6-8431-8ebf103c88f8.png">

Click `Create Branch`. 

2. b. If you have already created a branch in your name, then select the lasthenia repo, and click on the drop down to the right of the merge icon (at the top) and **make sure your named branch is selected**.

### Make changes to the data file
3. Using the Finder (Mac) or Documents (Windows) go to the folder where the GitHub files are stored (on the desktop on the lab computer), find the file that you want to edit, open it in your preferred spreadsheet application (Excel, Numbers, etc.).
3. Enter data, **saving as you go**. If you sorted the data while working on it, return it to its original order before saving it a final time.
4. Now go to the GitHub Desktop and select lasthenia from the repo list on the left, then choose the Uncommitted changes "tab" near the top center of the window (next to History). This will show any files that you have changed and should show the additions or deletions that you made. 
5. **Before going on to the next step** be sure to look at the changes in GitHub Desktop to make sure everything looks as it should
  - Every row has its own number (if not, see "Quirky Excel" below)
  - Additions are green
  - Deletions are red

### Commit your changes to your branch
6. Commit the changes you made to the files in your branch by checking the boxes by each file, entering a very brief and descriptive summary (e.g. "added late harvest fitness") and a more specific description.
7. If all looks good, press `Commit to (your branch)`.

### Open a pull request
Opening a pull request is a way of merging the changes you made with the `master` file. You should do this at the end of the day if you have entered a good chunk of data. If you have only made a few changes and are not yet ready to open a pull request, you can commit your changes locally and then publish them to GitHub. Instructions for both are below.

1. To open a pull request, Click the `Pull Request` button in the top right.

(mac)<img width="275" alt="pull-request" src="https://cloud.githubusercontent.com/assets/11378064/16964469/c1be1f9a-4db8-11e6-8cb7-86c5b584dd13.png"> (win)<img width="310" alt="pull-request-win" src="https://cloud.githubusercontent.com/assets/11378064/16967418/082dcce8-4dc6-11e6-8652-de8cb971bdd2.png">

In the Title box, enter your name and a dash, followed by a short descriptive title. Add a description. Make sure that the two versions being compared are the `Master` and the branch with your name (These are the gray boxes under the Title box).

If you are not yet ready to open a pull request, simple click `Publish` in the upper right under the `Pull Request` button **after** you have committed your changes.

### Quirky Excel
Some of these quirks are specific to Excel for Macs.

* If you use Excel, save files as "Windows Comma Separated (.csv)" __NOT__ "Comma Separated Values (.csv)" or GitHub will not be able to properly identify new rows.
* Two ways to double check that the file is in the correct format is to 
  1. look at the GitHub Desktop to see if each line is numbered, or
  2. click on the file on github.com to see if it formats it as a nice looking table
* If Excel crashes (haha, "if"), and you haven't just saved, the recovered file will be in the wrong .csv format (see above). So, if you need the recovery file, open it and make sure to go to Save As and change the format to Windows Comma Separated and replace the old (pre-crash) version of the file.
* The last column must be completely full for github.com to make a nice looking table. I usually fill it with some organizational 

### Using Numbers instead of Excel
* Export As.. CSV every time you want to save
* The last column can have blanks
