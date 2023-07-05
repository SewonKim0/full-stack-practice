# confirm that remote repos is set up by user
$remote_setup = Read-Host -Prompt "This program will only work if: \n\n
1: Your remote github repository (empty) is set up\n
2: You are already authenticated with your github account\n\n
Would you like to continue? (yes/no)"
if ($remote_setup -ne "yes") {
    exit 0
}


# install dependencies
npm install

# install gh-pages
npm install gh-pages --save-dev

# get user info
# //in package.json:
# 		"homepage": "http://<username>.github.io/<reposName>"
# 	//in package.json in "scripts":
# 		"predeploy": "npm run build",
# 		"deploy": "gh-pages -d build"
$username = Read-Host -Prompt "Please enter your github username"
$repos_name = Read-Host -Prompt "Please enter the name of your remote git repository"
# edit package.json homepage
$package_json = Get-Content -Path "./package.json"
echo $package_json #TEST
# edit package.json scripts

# setup and upload git repo
#   git init
# 	git add .
# 	git commit -m "first commit"
# 	git branch -M main
# 	git remote add origin <reposURL>.git
# 	git push -u origin main

# deploy to git repo
# 	npm run deploy