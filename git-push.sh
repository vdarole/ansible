echo " Enter the comment for git commit"
read commit
git init
git add .
git config --global user.email "vallabh_darole@yahoo.co.in"
git config --global user.name "vallabh"

git commit -m "$commit"

git branch -M main
git remote add origin git@github.com:vdarole/ansible.git
git push -u origin main

