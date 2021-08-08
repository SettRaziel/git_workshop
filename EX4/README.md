# Exercise 4: merge conflict basics
This exercise will show a special conflict case when merging to commit or branches to create a
consitent snapshot of the repository. These merge commits normally happen when two commit apply
changes in the same line in a file. This is called a conflicting change.

When you apply changes in the same file, but at different places, git will notice that and merge
these changes automatically since it does not need do decide which change of the line it should
apply. This is different when the changes occur in the same line. At that point git would need to
decide which change should survive. In the default git does not take this responsability and the
automatic merge will fail.

The user who wants to merge these changes needs to decide how to deal with the conflicting change.
Git presents both changes within the affected file with additional conflict marking, e.g.:
```ruby

def get_answer ()
<<<<<<< HEAD
    return 21
=======
    return 1337
>>>>>>> 1ede5f6565c9dffcfbe5348cf32fd8fce13689fb
```
With that the user can see which changes are conflicting. He can choose the correct block and remove the rest.
After that he needs to confirm that these changes should be applied.

This example will provide two branches with conflicted changes: the main branch and the `secondary` branch.
Check the content of the branches and then try to merge the `secondary` branch into main. When doing that
the console should present a merge conflict, which you can review with `git status`. You should be in the 
state `merging`. That means that a merge in ongoing but was interrupted. You can abort the merge by using
`git merge --abort`. Try to solve the conflict by deciding which change should be committed. Edit the 
conflict section, remove the conflict tags and prepare the changes. After that add the file to the index 
with `git add <filename>`. This will signal to git that you have checked the merge conflict and that 
these changes. Finish the merge with `git commit`. Git will prepare a commit message for you which states
that a merge will be done. Close the editor without doing changes to the commit message and finish
the merge. Check if the repository is in a working state again and the merge appears in the log.
