echo "Building book...";
mdbook build || exit -1;
echo "Copying book to docs...";
rm -rf ./docs
cp -r book docs
