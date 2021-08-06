# Exercise 2: branch basics
This exercise will show you the basic idea of branches and the visibility concept, that comes
with it. When working in a repository with different people you might want to create something
awesome for your project, but without providing these changes directly to your current stable
version of your repository. To do this git offers something called a branch. 

A branch is an isolated version of the repository at the repository snapshot of which you create
it. When working in this branch you are completely separated from changes commited elsewhere in
your repository. A branch is a lightweighted mechanism in git and you will work on different branches
very often. Commits done in a branch are only visible to this branch until you decide to make them
available to other branches inside your repository. 

When you create a repository it consists of a single branch that is created by default. Depending 
from you settings this branch is called master or main. But despite beeing the first branch it 
does not have any differences to other branches you might create during your work. The only 
speciality considering branches is the flag of calling a branch the default branch. This
branch is the branch on which you are set when cloning the repository from a remote git server.

To create a new branch use the command `git branch <branch_name>`. This will create a new branch
whose content is based on the current commit you are on. After creating a new branch you can switch
to it by using `git checkout <branch_name>`. There is a command flag to combine these two commands.
When you extend the checkout command to `git checkout -b <branch_name>` you will create and branch
and also switch to it.

Try switching between branches. To see all existing branches you can use `git branch -a`. When you
return to your newly created branch make some changes and persist them in a commit. After that change
to your main branch and check if you can see your new commit in this branch. Also make some changes
here and commit them. Can you see this commit when changing back to your newly created branch?
