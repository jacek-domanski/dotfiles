`git COMMAND -h` <br> 
Help - quick refresher <br>
ex.:
git add -h

`git archive master --prefix='project/' --format=zip > 'git describe master'.zip` <br>
Creates zip archive of project

`git branch -v` <br>
Shows last commit on each branch

`git branch --no-merged` <br>
Shows only branched not merged into current branch

`git branch --merged` <br>
Shows only branched merged into current branch 

`git checkout [commit] -- path/to/file` <br>
Revert single file

`git config --list --show-origin` <br>
Show all settings and which file they are coming from

`git clone URL dir_name` <br>
Clone into directory named differently than remote repo <br>
ex.:
git clone https://github.com/libgit2/libgit2 mylibgit

`git describe master` <br>
v1.6.2-rc1-20-g8c5b85c <br>
Generates a human readable string with:
- most recent tag
- number of commit since that tag
- described commit partial SHA-1 prefixed by letter "g" (for git)

`git diff $(git merge-base branch1 master)` <br>
or <br>
`git diff master...branch1` <br>
Show changes since common ancestor

`git fetch . foo:master`
Fast-forward merge foo into master without checking it out first. Dot means local repo
`git fetch . +foo:master`
Like above, but allow for non-fast-forward merges

`git log --since=2.weeks` <br>
Limit log output. Other formats: <br> 
- "2008-01-15" <br>
- "2 years 1 day 3 minutes ago"

`git log --author=john` <br>
Show only commits by given author

`git log -S function_name` <br>
git pickaxe - show only commits, that changed the number of occurences of that string

`git log branch1..branch2` <br>
or <br>
`git log branch1 --not branch2` <br>
Show only commits that are on branch2, but not on branch1

`git log --left-right master...experiments`
shows commits that are only on one of the branches, but not on both <br>
`<` C1 <br>
`<` C2 <br>
`>` C3 <br>
`>` C4 

`git merge --squash branch_name` <br>
Takes all the work on the merged branch and squashes it into one changeset,
producing repository state as if real marge happened, without actually making a commit

`git merge -s ort branch_name` <br>
Merge using new "ort" merging strategy

`git push origin --delete branch_name` <br>
Delete remote branch

`git push -u origin branch_name` <br>
-u is short for --set-upstream

`git remote show origin` <br>
Info about origin

`git reset --soft [commit]` <br>
- Move the tip of the branch HEAD points to

`git reset --mixed [commit]` <br>
- Move the tip of the branch HEAD points to
- Make the index look like HEAD

`git reset --hard [commit]` <br>
- Move the tip of the branch HEAD points to
- Make the index look like HEAD
- Make the working directory look like the index

`git shortlog --no-merges master --not v1.0.1` <br>
Summarizes all commits in range

`git switch branch_name` <br>
Similar to git checkout branch_name

`git switch -c branch_name` <br>
or <br>
`git switch --create branch_name` <br>
Similar to git checkout -b branch_name

`git switch -` <br>
Switch to previously checked out branch

`git show HEAD~1` <br>
Shows 1st ancestor of HEAD

`git show d921970^2` <br>
Shows 2nd parent of commit (when more than 1 parent - merge commit).<br> 
Can be combined with ~2 to create ~2^2 (2nd parent of 2nd ancestor)

`git stash branch new_branch`
- Creates new branch, 
- Checks out the commit on which the work was stashed, 
- Reaplies the work, 
- Drop the stash if applied cleanly.

`git tag -a v1.2.3 9fceb02` <br>
Add tag to specific commit instead of the last one
























