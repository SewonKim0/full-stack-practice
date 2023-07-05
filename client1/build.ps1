# define constants
$PACKAGE_JSON_PATH = "./client1/package.json"

# # confirm that remote repos is set up by user
# $remote_setup = Read-Host -Prompt "This program will only work if:
# 1: Your remote github repository (empty) is set up
# 2: You are already authenticated with your github account
# 3: You are currently running this program from the root directory of your react project
# Would you like to continue? (yes/no)"
# if ($remote_setup -ne "yes") {
#     exit 0
# }

# # install dependencies
# npm install

# # install gh-pages
# npm install gh-pages --save-dev

# get user info
# 	//in package.json in "scripts":
# 		"predeploy": "npm run build",
# 		"deploy": "gh-pages -d build"
# $username = Read-Host -Prompt "Please enter your github username"
# $repos_name = Read-Host -Prompt "Please enter the name of your remote git repository"

# # edit package.json
# $package_json = Get-Content -Path $PACKAGE_JSON_PATH | ConvertFrom-Json
# $package_json | Add-Member -MemberType NoteProperty -Name "homepage" -Value "http://$($username).github.io/$($repos_name)"
# $package_json_scripts = $package_json.scripts
# $package_json_scripts | Add-Member -MemberType NoteProperty -Name "predeploy" -Value "npm run build"
# $package_json_scripts | Add-Member -MemberType NoteProperty -Name "deploy" -Value "gh-pages -d build"

# # save package.json changes
# $package_json_str = ConvertTo-Json -InputObject $package_json -depth 10
# Set-Content -Path $PACKAGE_JSON_PATH -Value $package_json_str

# setup and upload to remote
git init
git add .
git commit -m "first commit"
git branch -M main
$repos_url = Read-Host -Prompt "Please enter your github repository url (ending with .git)"
git remote add origin $repos_url
git push -u origin main

# deploy to git repo
npm run deploy