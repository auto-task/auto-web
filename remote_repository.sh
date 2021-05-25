#!/bin/bash
#Created by githubuser:@dmanueljo 2021 
#Being more specific 
#excludedProject=(repositoryCache resolutionCache ".metadata" local-repo)
projects=(
			ujc-fct-web
			ujc-fct-web-docs
			auto-page
		)
#get current
now=`date +"%Y-%m-%d"`
#loop into projects #for file in ../*
for project in ${projects[@]}
	do
	echo "**************** Adding Remote Directory to --> [${project}] ****************"
	#changing directory
	cd ../${project}
	git branch -M master --force
	git remote add origin git@github.com:ujclab/${project}.git 
	#git push -u origin master
	git push --set-upstream origin master
done
 echo "Finish reading (${#projects[@]}) project(s)"
 echo "****************END****************"