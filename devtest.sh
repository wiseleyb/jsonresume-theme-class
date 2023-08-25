# testing script for development - total hack
git add .
git commit --amend --no-edit
git push origin dev --force
pushd ../wiseleyb_resume
npm install https://github.com/wiseleyb/jsonresume-theme-class.git#dev --save
rm -f resume.pdf
resume export resume.pdf -t @wiseleyb/jsonresume-theme-class
open resume.pdf
popd
