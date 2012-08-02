# output passwd file to awk, which parses on : separator, sorts
# the list and writes to ./users file
cat /etc/passwd | awk -F: '{print $1 "\t" $6}' | sort > ./users

# number the output from ls
ls | nl

# show git branches by date, useful for showing active branches.
# print out list of all branches with last commit date to the branch,
# including relative time since commit and color coding
for k in `git branch|perl -pe s/^..//`;do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k|head -n 1`\\t$k;done

# show git branches by date - useful for showing active branches
for k in `git branch|sed s/^..//`;do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k";done|sort

# list all authors of a particular git project
git log --format='%aN' | sort -u

# matrix
LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"

# show git commit history
git reflog show | grep '}: commit' | nl | sort -nr | nl | sort -nr | sed s/commit://g | sed -e 's/HEAD*@{[0-9]*}://g'

# add .gitignore files to all empty directories recursively from your current directory
find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \;

# figures out what has changed in the last 12 hours
git diff --stat `git log --author="XXXXX" --since="12 hours ago" --pretty=oneline | tail -n1 | cut -c1-40` HEAD

# our permissions in octal format with filename
stat -f '%Sp %p %N' * | rev | sed -E 's/^([^[:space:]]+)[[:space:]]([[:digit:]]{4})[^[:space:]]*[[:space:]]([^[:space:]]+)/\1 \2 \3/' | rev

# git pull all repos
find ~ -maxdepth 2 -name .git -print | while read repo; do cd $(dirname $repo); git pull; done



