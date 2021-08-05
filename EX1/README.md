# Exercise 1: git basics
This exercise will cover the basic creation of a git repository and your first commit.
Normally the first step when deciding you need to apply version control to a project or idea is
to create an empty local repository. The direct opposite is the usage and creation of a new
repository on your remote git server. When creating a new repository there the graphical interface
will cover the basic commands for you.

A new repository is created by using `git init` at the place where the repository should have its root
directory. A executing the command the directory will present a new .git folder (if you have activated
that hidden files and directories should be shown). In there git will handle all of its clerical work
to manage the git repository for you. You should leave it untouched because normally you have no business
within this directory. Notice that when you use `git status` this folder will not be shown as something
that needs to be tracked.

Now it is time to create a file with some content for which you will track its changes. After doing this
the `git status` command will show a new file that is currently not tracked through the repository. Use the
`git add <file>` command with to add the file on the index or the stating area. This actions signals the 
repository that changes to this file should be tracked from now on. Reviewing the status of your repository
should show your file within the staging area colorized in green.

Commit the changes with the `git commit` command that opens the editor defined in the editor variable to define
a commit message. Type your commit message. Basically the first line is the headline if you want to review it
on your remote git server. Additional descriptions should follow after an empty line following the head.
By saving and exiting the editor your commit will be finished. Check if your can see your commit by using the
`git log` command.

Do some additional changes to your file and see how the repository behaves. Create an additional commit if you
like and check the result.
