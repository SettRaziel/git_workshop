# Git Workshop

Interactive git tutorial for the terminal.

## Usage
Navigate into an exercise folder to solve the given exercise. Each exercise holds a small helper script called `gitctl.sh`.
With it you can create, reset or clean up the current exercise space. The following commands can be used here:
```bash
  script usage: ./gitctl.sh parameter
  run parameter:
   --help         show help text
   --clean        clean up the exercise and personal changes
   --hint         show hints for the current exercise
   --init         initialize the exercise
   --reset        reset the exercise
```

## General notice
As you can see this collection of exercises is already stored inside a git repository. That means typing commands in the root folder of this repository will
influence the whole exercise space. So check that you work in the correct directory before using git commands. If you should run into a problem or do type git 
commands outside the exercise folders with an initialized excercise check with `git status` if something is odd. If the repository shows you that everything is
in the same state as the origin and noch modified, new or deleted files are shown everything is all right.

In case you changed something there is no need to worry. Since you run a local copy of this repository your changes are only visible to yourself. If the 
repository appears to be beyond repair just throw it away and get another clone via the command `git clone <repo_url>`. If you changed something or created some
new files the follwing commands can be used to do some local housekeeping:
The command `git reset HEAD` removes files that are added to index area (using `git status` they are marked in green color, unstaged changes are marked in red).
The command `git checkout .` in the root directory of the repository restores all modified files to the latest tracked version, removing all changes that have 
been done.  
The command `git clean -df` removes every newly created file that is not tracked in this repository.

If you created some commits the easiest way to restore the repository to its initial state is through the command `git reset --hard origin/main`. This command 
will reset the repository to the version of the remote repository at the time of your last `git pull` command (or the `git clone` if you only created a local 
copy).

## Preparation
Before jumping into the exercises you need some basic knowledge what git is and how it works. Since the exercises are prepared as a practical approach to use 
previous gained knowledge it will hint to you which commands should be used to solve the exercise, but there will be not detailed explanation what the command
and its additional flags do. You can always use the terminal help pages by typing `git help <command>` to get an overview of the the command and its numerous 
flags.  
There are many awesome introductions to git, that you can check if you are completely new to git.

## Exercises
To start one of the exercises navigate into the directory of the execise you want to solve and initialize the environment typing `gitctl.sh --init`.

### EX1
Initialize a new git repository and create your first commit  
Details check [readme](./EX1/README.md)

### EX2
Create a new branch, make a commit in that branch and compare it with the main branch  
Details check [readme](./EX2/README.md)

### EX3
Work on an existing branch and merge it to the main branch to learn more about visibility  
Details check [readme](./EX3/README.md)

### EX4
Work with branches that have conflicting changes and solve the conflict for a consistent snapshot  
Details check [readme](./EX4/README.md)
