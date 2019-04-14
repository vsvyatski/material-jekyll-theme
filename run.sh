#!/bin/sh

currentDir=$(dirname "$0")

cd "$currentDir"

bundle exec jekyll serve

cd -
