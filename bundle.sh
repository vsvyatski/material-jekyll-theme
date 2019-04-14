#!/bin/sh

currentDir=$(dirname "$0")

outDir="$currentDir/publish"
if [ ! -d "$outDir" ]
then
	mkdir -p "$outDir"
else
	rm -r -f "$outDir/"*
fi

echo Copying files...
cp -r "$currentDir/_includes" "$outDir"
cp -r "$currentDir/_layouts" "$outDir"
cp -r "$currentDir/_pages" "$outDir"
cp -r "$currentDir/_posts" "$outDir"
cp -r "$currentDir/_sass" "$outDir"
cp -r "$currentDir/css" "$outDir"
cp "$currentDir/_config.yml" "$outDir"
cp "$currentDir/favicon.ico" "$outDir"
cp "$currentDir/feed.xml" "$outDir"
cp "$currentDir/Gemfile" "$outDir"
cp "$currentDir/index.md" "$outDir"
echo Done
