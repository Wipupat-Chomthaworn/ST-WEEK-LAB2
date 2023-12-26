PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> echo "# ST-WEEK-LAB2" >> README.md
>> git init
>> git add README.md
Initialized empty Git repository in C:/Users/LAB203-01/Desktop/ST W4 LAB2/.git/
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git commit -m "first commit"
>> git branch -M main
>> git remote add origin https://github.com/Wipupat-Chomthaworn/ST-WEEK-LAB2.git
[master (root-commit) fa93f1a] first commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/Wipupat-Chomthaworn/ST-WEEK-LAB2.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> echo "Initial content in file1" > file1.txt
>> git commit -m "Initial commit of file1"
[main f551a27] Initial commit of file1
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 file1.txt
>> git add file2.txt
>> git commit -m "Add file2"
[main 4bf0061] Add file2
 1 file changed, 0 insertions(+), 0 deletions(-)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2>    echo "Update to file1" >> file1.txt
>>    git add file1.txt
>>    git commit -m "Update file1"
[main 813f263] Update file1
 1 file changed, 0 insertions(+), 0 deletions(-)
>>    git add file2.txt
>>    git commit -m "Update file2"
[main fdcd4e2] Update file2
 1 file changed, 0 insertions(+), 0 deletions(-)
>>    git add file3.txt
>>    git commit -m "Initial commit of file3"
[main 44a42ee] Initial commit of file3
 create mode 100644 file3.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2>    echo "Update to file3" >> file3.txt
>>    git add file3.txt
>>    git commit -m "Update file3"
[main 7e2f67b] Update file3
 1 file changed, 0 insertions(+), 0 deletions(-)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2>  echo "xxxx More xxxx Update to file3" >> file3.txt
>>  git add file3.txt
>>  git commit -m "Update xxx More xxx file3"
[main 459d79d] Update xxx More xxx file3
 1 file changed, 0 insertions(+), 0 deletions(-)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git log --oneline
>> git status
7e2f67b Update file3
44a42ee Initial commit of file3
fdcd4e2 Update file2
813f263 Update file1
4bf0061 Add file2
f551a27 Initial commit of file1
fa93f1a (origin/main) first commit
On branch main
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git log --oneline
459d79d (HEAD -> main) Update xxx More xxx file3
7e2f67b Update file3
44a42ee Initial commit of file3
813f263 Update file1
4bf0061 Add file2
f551a27 Initial commit of file1
fa93f1a (origin/main) first commit
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> echo "Additional line in file1" >> file1.txt
>> git status  # Check the effect
>> git log --oneline  # Check the effect
On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file1.txt

no changes added to commit (use "git add" and/or "git commit -a")
459d79d (HEAD -> main) Update xxx More xxx file3
7e2f67b Update file3
44a42ee Initial commit of file3
fdcd4e2 Update file2
813f263 Update file1
4bf0061 Add file2
f551a27 Initial commit of file1
fa93f1a (origin/main) first commit
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file1.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2>  git restore --source=HEAD file1.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2>  git status  # Check the effect
On branch main
nothing to commit, working tree clean
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2>  git log --oneline  # Check the effect
459d79d (HEAD -> main) Update xxx More xxx file3
f551a27 Initial commit of file1
fa93f1a (origin/main) first commit
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> echo "More Change in file2" >> file2.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore --source=HEAD~1 file2.txt
Initial content in file2
Update to file2

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore --source=HEAD~1 file2.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore --source=HEAD~2 file2.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore --source=HEAD~3 file2.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore --source=HEAD~5 file2.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> more .\file2.txt
Initial content in file2

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> echo "Further changes in file3" >> file3.txt
>> git add file3.txt
>> git status  # Verify staged
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   file3.txt
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file2.txt

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> more .\file3.txt
Initial content in file3
Update to file3
xxxx More xxxx Update to file3
Further changes in file3

>>  git status  # Verify unstage
On branch main
Your branch is ahead of 'origin/main' by 7 commits.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file2.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> more .\file1.txt
Initial content in file1
Update to file1

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> more .\file3.txt
Initial content in file3
Update to file3
xxxx More xxxx Update to file3
Further changes in file3

On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file2.txt
        modified:   file3.txt

no changes added to commit (use "git add" and/or "git commit -a")
On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file2.txt
        modified:   file3.txt

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore file3.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file2.txt

On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file2.txt
        modified:   file3.txt

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git add .
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   file2.txt
        modified:   file3.txt

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2>  git restore --staged file3.txt
>>  git status  # Verify unstage
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   file2.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file3.txt

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

Changes to be committed:

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   file3.txt

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Your branch is ahead of 'origin/main' by 7 commits.

Changes to be committed:
        modified:   file2.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git add .
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   file2.txt
        modified:   file3.txt

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git commit -m ":tada:  commit done"
[main da5219f] :tada:  commit done
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Your branch is ahead of 'origin/main' by 8 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git add .
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git commit -m ":tada: final commit done"
 1 file changed, 277 insertions(+)
Enumerating objects: 28, done.
Counting objects: 100% (28/28), done.
Delta compression using up to 20 threads
Compressing objects: 100% (27/27), done.
Writing objects: 100% (27/27), 3.59 KiB | 3.59 MiB/s, done.
Total 27 (delta 13), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (13/13), done.
   fa93f1a..68b5f12  main -> main
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        test.txt

nothing added to commit but untracked files present (use "git add" to track)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore .\test.txt
error: pathspec '.\test.txt' did not match any file(s) known to git
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> more .\test.txt
test

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore --staged .\test.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        test.txt

nothing added to commit but untracked files present (use "git add" to track)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> more .\test.txt
test

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git add .
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> more .\test.txt
test

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git restore --source=HEAD~1 .\test.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> more test.txt
Get-Content : Cannot find path 'C:\Users\LAB203-01\Desktop\ST W4 LAB2\test.txt' because it does not exist.
At line:7 char:9
+         Get-Content $file | more.com
+         ~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Users\LAB203...4 LAB2\test.txt:String) [Get-Content], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.GetContentCommand
 

PS C:\Users\LAB203-01\Desktop\ST W4 LAB2> git commit -    