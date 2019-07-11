#!/bin/sh

git worktree add /tmp/book gh-pages
mdbook build
rm -rf /tmp/book/* # this won't delete the .git directory
cp -rp book/* /tmp/book/
cd /tmp/book
git add -A
git commit -m'new book message'
git push origin gh-pages
cd -
