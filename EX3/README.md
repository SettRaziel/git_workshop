# Exercise 3: merge basics
This exercise will introduce the consolidation of changes in different branches and extend
the visibility concept of branches in git. When working in different branches the changes done
since the branch was created are only visible to the given branch until you decide to make them
visible to other branches inside your repository. This happends by integrating one branch into
another. 

Since a commit always serves as a shapshot of the current state of the repository the 
integration of one branch into another does always require the creation of a consisten state of
the repository. This can be achieved by created a new commit that consolidates the changes of the
different branches of some kind or restructuring the repository history to have a consistent 
snapshot on basis of an already existing commit.

Both mechanics can be used in git. Creating an additional commit to consolidate the changes
is called merging. It is the default when handling interactions between branches, since it
does leave the history of changes intact. But this comes with the prize of creating an
additional commit every time you merge two branches. Merging is more tolerant to error and
interferences, especially when working with other people. The other mechanic is called 
rebase. In a nutshell it applies changes of one branch on top of another basically recommiting
the changes of the other branch onto the target branch. This can lead to some problems if
applied in the wrong situation, so at the moment we will stay with the merging strategy.

This example provides two branches with changes only visible to the specific branch it was
commited to. Check the changes in these branches by checking out each branch and showing its
commits and changes by using `git log --stat`. If you want to see the detailed changes between
two commits you can use `git diff <start_hash>..<end_hash>`.

Now merge the branch `secondary` in to main branch. To do so you need to be in the target branch
where you want to merge into. With the command `git merge secondary` you say git that you want to
merge the changes of `secondary` into the branch you have currently checked out. After merging
the branches check both branches through the `git log` command. Can you see the differences regarding
visiblity of the changes between the two branches?
