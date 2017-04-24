:: This is port of script written by Jente Hidskes (hjdskes.github.io) to windows cmd

:: This script does the required work to set up your personal GitHub Pages
:: repository for deployment using Hugo. Run this script only once -- when the
:: setup has been done, run the `deploy.sh` script to deploy changes and update
:: your website. See
:: https://hjdskes.github.io/blog/deploying-hugo-on-personal-github-pages/index.html
:: for more information.

@echo off

:: GitHub username
SET "USERNAME=mehthehedgehog"
:: Name of the branch containing the Hugo source files.
SET "SOURCE=sources"

echo "Deleting the \`master\` branch"
git branch -D master
git push origin --delete master

echo "Creating an empty, orphaned \`master\` branch"
git checkout --orphan master

echo "Grabbing one file from the \`%SOURCE%\` branch so that a commit can be made"
git checkout "%SOURCE%" "README.md"
git commit -m "Initial commit on master branch"
git push origin master

echo "Returning to the \`%SOURCE%\` branch"
git checkout -f "%SOURCE%"

echo "Removing the \`docs\` folder to make room for the \`master\` subtree"
rmdir /S /Q docs
git add -u
git commit -m "Remove stale docs folder"

echo "Adding the new \`master\` branch as a subtree"
git subtree add --prefix=docs git@github.com:%USERNAME%/%USERNAME%.github.io.git master --squash

echo "Pulling down the just committed file to help avoid merge conflicts"
git subtree pull --prefix=docs git@github.com:%USERNAME%/%USERNAME%.github.io.git master