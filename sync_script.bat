@echo Started execution: %date% %time% >> tasklog.txt

SET prebranch = git branch
DEL .git\index.lock
git checkout master
git fetch origin
git merge origin/master

git add .
git commit -m "Automatic commit"
git push

git checkout %prebranch
@echo Completed at %date% %time% >> tasklog.txt
@echo ___________________________________ >> tasklog.txt
exit