# Entering data 
### For a file that is already created:
The data will be stored on the GitHub servers, but each collaborator can sync the files to their personal computers or the lab computer using the GitHub Desktop app. To edit the files (e.g., enter additional data), you may need to sync the `repository` by clicking `Fetch origin`, then create a `branch`, edit the file, then open a `pull request` (PR). Raffica or Nancy will review the pull request and if all looks good, they will `merge` it to the `master` file.

* Early on, figure out how you want your data sorted so that it can be easily returned to that order and the changes can be tracked. I typically put it in the order I want and then label the last column "order" and fill down with 1, 2, 3, etc. so that later I can easily return to this order if I sort by other columns in the interum. This method also takes care of an Excel quirk (see below).

## Using GitHub Desktop (v. 1.5.0) to edit files:
Updated 2018-12-04

### Syncing the repo and the files within
1. Open up GitHub Desktop. Before you open up any of the files in the repository ("repo"), you should first make sure your versions are up-to-date by syncing the repo. Choose the emery-lab repo from the left side, click Fetch Origin in the upper right to make sure that your version is the most up to date. If you weren't already up-to-date, a little number will appear next to "Fetch origin." You'll need to click that button again to pull the changes. 

### Create a branch
_Always_ do this before making any changes to a file. Creating a branch will ensure that the `master` is kept clean and tidy. 
2. a. In GitHub Desktop: make sure `emery-lab` is selected on the left hand side. Click on the middle Current Branch tab branch <img width="34" alt="branch" src="https://cloud.githubusercontent.com/assets/11378064/16962742/33c249da-4db0-11e6-96e2-25c107938ecb.png">

In the text box that says "Filter" type the name of your new branch. I recommend your name followed by the date (e.g., raffica-20181204). The branch name can't have spaces, but if you forget this, you will be prompted to accept a name with dashes in place of the spaces. 

<https://github.com/rjlarosa/emery-lab/blob/master/Images/create-branch.pdf>

Click `New Branch` or `Create New Branch`. 

2. b. If you are wanting to continue working in a branch that you already created, then select the emery-lab repo at the top left,  click on the drop down in the top center to choose your branch. **Make sure your named branch is selected so that you are not editing the Master**.

### Make changes to the data file
3. Using the Finder (Mac) or Documents (Windows) go to the folder where the GitHub files are stored. You will be looking for a folder that has the same name as the repo (e.g., emery-lab). Find the file that you want to edit, open it in your preferred spreadsheet application (Excel, Numbers, etc.).
3. Enter data, **saving as you go**. If you sorted the data while working on it, return it to its original order before saving it a final time.
4. Now go to back to GitHub Desktop, making sure that emery-lab is your Current Repository, and the Current Branch has your name. If you have made any changes to the files and saved them, the changes will show up under the Changes tab below the Current Repository. This will show the rows that had additions (in green) or deletions (in red) that you made. 
5. **Before going on to the next step** be sure to look at the changes in GitHub Desktop to make sure everything looks as it should
  - Every row has its own number (if not, see "Quirky Excel" below)
  - Additions are green
  - Deletions are red

### Commit your changes to your branch
Committing changes will lock in a version of the files. It is best to commit when you've finished some discrete task that will be easy to summarize. For example, if you need to update a sample id that was incorectly entered in several files, you may want to change the sample name in all of the files and then make one commit with a simple description, "corrected the name of sample id XX to YY in several files." Another example would be to commit your changes after every page or couple of pages of data entry. _You can make multiple commits on the same branch._
6. When you are ready to commit, look at the Changes tab, and if everything looks as you expected, commit the changes you made to the files in your branch by checking the boxes by each file you made changes to, entering a very brief and descriptive summary title (e.g. "entered fitness data pages 1-5") in the next box in the lower left by your icon, and then below that enter a more specific description.
7. Now press `Commit to (your branch)`. If the blue box in the lower left says "Commit to **master**" DO NOT click it. Go to the top center and make sure you are working in a branch with your name and NOT the master.

### Push or publish your changes
Push/Publish your changes so that they are not just on your computer, but are also saved in the remote location with GitHub. Once you have finished all of your commits for the day, it may be time to open a pull request to get your changes merged into the Master copy. If you will be continuing work the next day, it may be fine to wait until you are completely done before opening a pull request. Discuss this with the person managing the repo.

8. Once you have committed your changes, you will notice that the `Fetch origin` button is now a `Push origin` or `Publish` button showing the number of files that you have made changes to. Press this button to push your changes to the remote. 

### Open a pull request
Opening a pull request is a way of merging the changes you made with the `master` file. You should do this at the end of the day if you have entered a good chunk of data. If you have only made a few changes and are not yet ready to open a pull request, make sure you have at least publishished your commits to GitHub.

9. To open a pull request, go to the Branch menu at the top of the window (different from where you created your new branch) and select `Create pull request`. This will take you to the GitHub website where you will fill out info for the pull request.

- In the Title box, enter your name and a dash, followed by a short descriptive title. Add a description. 
- Choose who you want to review your changes.
- Make sure that the two versions being compared are the `Master` and the branch with your name (These are the gray boxes under the Title box). Does it say "Okay to Merge"? If so, great! Click `Submit pull request`. If not, consult with the repo manager.

### Quirky Excel
Some of these quirks are specific to Excel for Macs, but may only be relevant versions older Excel 15.

* If you use Excel, save files as "Windows Comma Separated (.csv)" __NOT__ "Comma Separated Values (.csv)" or GitHub will not be able to properly identify new rows.
* Two ways to double check that the file is in the correct format is to 
  1. look at the GitHub Desktop to see if each line is numbered, or
  2. click on the file on github.com to see if it formats it as a nice looking table
* If Excel crashes (haha, "if"), and you haven't just saved, the recovered file will be in the wrong .csv format (see above). So, if you need the recovery file, open it and make sure to go to Save As and change the format to Windows Comma Separated and replace the old (pre-crash) version of the file.
* The last column must be completely full for github.com to make a nice looking table. I usually fill it with some organizational 

### Using Numbers instead of Excel
* Export As.. CSV every time you want to save
* The last column can have blanks

## Using the GitHub website to enter data
Updated in 2017

### Logging in
Make sure that you are logged into [GitHub](www.github.com) as yourself and logged out when you are done.

Navigate to the emery-lab repo by clicking on `rjlarosa/emery-lab` in the lower right box labeled "Your repositories."

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
1. In the web browser, navigate to rjlarosa/emery-lab and **make sure you are in your branch**. The drop down should say Branch:yourname. **Do not drop files into the `master`!**
2. Drag your updated file that is in the Downloads folder onto the list of files in the browser. A large box should appear that says, "Drop to upload your files." Drop your file there.
3. A "Commit changes" changes box will be at the bottom of the page. Give your changes a short descriptive title, and longer description if necessary. **Make sure that the option that is selected lists `yourname` and NOT `master`.** Click Commit changes.
<img width="1002" alt="commit-changes" src="https://cloud.githubusercontent.com/assets/11378064/16969494/7c18fd2e-4dd2-11e6-8341-b87486c8942f.png">

### Open a pull request
Opening a pull request is a way of merging the changes you made with the `master` file. You should do this at the end of the day if you have entered a good chunk of data. If you have only made a few changes and are not yet ready to open a pull request, you can commit your changes to save them to GitHub, but don't forget to open a pull request soon to keep the master file up to date.

1. To open a pull request, go back to rjlarosa/emery-lab, Click the `Pull Request` button that is next to the Branch drop down.
2. The request should say: `base:master` ... `compare:yourname`. If the two are compatible, there will be a message that says they are "Able to merge." If you do not get that message, ask for help. <img width="1013" alt="pull-request-web" src="https://cloud.githubusercontent.com/assets/11378064/16969663/aec8fdae-4dd3-11e6-9a58-34f09c6c9173.png">
3. Enter a descriptive title. If you have any comments about the data, enter them in the comments box. This would be a good place to mention if there are any data entries that need to be investigated. If anything was fishy, it would be best to create an [Issue](https://github.com/rjlarosa/emery-lab/blob/master/tips.md#issues) and assign it to whoever is supervising the research.
4. Assign the pull request to `rjlarosa` so that she will be notified of the request and can merge it in a timely manner.
5. Done! :tada: :tada:
6. Raffica will look over your changes, merge them, then delete your branch. If you submitted a pull request, but need to work on a different file before the other one has been merged, you can make a new branch called `YourName2`, and so on.
