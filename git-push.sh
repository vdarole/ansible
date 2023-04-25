echo " Enter the comment for git commit"
read commit
git init
git add .
git config --global user.email "vallabh_darole@yahoo.co.in"
git config --global user.name "vallabh"

git commit -m "$commit"

git remote add origin git@github.com:vdarole/ansible.git

echo " Enter the new brach name"
read brach-name

git branch
git branch $brach-name
git branch
git checkout $brach-name
git branch
git status
git push origin $brach-name





git push -u origin main

