rm -rf _book
rm -rf gh_pages
gitbook build
mkdir gh_pages
cp -r _book/* gh_pages/
cd gh_pages
git init
git remote add origin git@github.com:z3mu/gitbook-tutorial.git
git checkout -b gh-pages
git add .
git commit -m 'Publish book'
git push -f --set-upstream origin gh-pages