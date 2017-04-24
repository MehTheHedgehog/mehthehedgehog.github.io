:: This is port of script written by Jente Hidskes (hjdskes.github.io) to windows cmd

:: This script allows you to easily and quickly generate and deploy your website
:: using Hugo to your personal GitHub Pages repository. This script requires a
:: certain configuration, run the `setup.sh` script to configure this. See
:: https://hjdskes.github.io/blog/deploying-hugo-on-personal-github-pages/index.html
:: for more information. 

@echo off

:: GitHub username.
set "USERNAME=mehthehedgehog"
:: Name of the branch containing the Hugo source files.
set "SOURCE=sources"
:: The commit message.
set "MESSAGE=Site rebuild %date% %time%"

echo "Pulling down the \`master\` branch into \`docs\` to help avoid merge conflicts"
git subtree pull --prefix=docs git@github.com:%USERNAME%/%USERNAME%.github.io.git master -m "Merge master"

echo "Building the website"
hugo

echo "Pushing the updated \`docs\` folder to the \`$SOURCE\` branch"
git add docs
git commit -m "%MESSAGE%"
git push origin "%SOURCE%"

echo "Pushing the updated \`docs\` folder to the \`master\` branch"
git subtree push --prefix=docs git@github.com:%USERNAME%/%USERNAME%.github.io.git master
