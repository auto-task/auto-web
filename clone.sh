#!/bin/bash

#Created by @dmanueljo 2021

#set username
#echo -n Enter github-user:
#	read username

#set password
echo -n Enter your credential:
	read -s password #hide password

#clone repositories and define urls https://$username:$password@

projects=(
			ujc-fct-web
			ujc-fct-server
			ujc-fct-docs
			auto-web
		)

#get current
now=`date +"%Y-%m-%d"`

cd .. 

cd ${projects[0]}
git clone https://$1:$password@github.com/backend-webpage/${projects[0]}.git  #> clone-backend-$now.log

cd ${projects[1]}
git clone https://$1:$password@github.com/backend-webpage/${projects[1]}.git  #> clone-backend-$now.log

cd ${projects[2]}
git clone https://$1:$password@github.com/backend-webpage/${projects[2]}.git  #> clone-backend-$now.log

cd ${projects[3]}
git clone https://$1:$password@github.com/auto-task/${projects[3]}.git  #> clone-backend-$now.log

echo "Finish reading (${#projects[@]}) project(s)"

#loop into projects #for file in ../*
#for project in ${projects[@]}
#	do
#	echo "**************** Adding Remote Directory to --> [${project}] ****************"
	
	#changing to workspace directory
#	cd ../..${project}
#	git clone https://$1:$password@github.com/auto-task/${project}.git  #> clone-auto-$now.lo../g

	#cd ../..${project}
	#git clone https://$1:$password@github.com/frontend-webpage/${project}.git #> clone-frontend-$now.log

	#cd ../..${project}
	#git clone https://$1:$password@github.com/backend-webpage/${project}.git  #> clone-backend-$now.log

#done
 #echo "Finish reading (${#projects[@]}) project(s)"
 #echo "****************END****************
 