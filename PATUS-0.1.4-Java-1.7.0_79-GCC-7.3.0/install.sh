#!/bin/bash
set -e

METHOD_TYPE_DESC=$1
#read method type name
METHOD_TYPE=$(gawk -F '[""]' '/name/{ print $4 }' $METHOD_TYPE_DESC)

#read EasyBuild modules needed by the method type in EB_MODULES
read -ra EB_MODULES <<< $(gawk -F '[""]' '/eb_modules/{ getline; while ( $0 !~ /]/ ) { print $2; getline; } }' $METHOD_TYPE_DESC)

#take the number of EasyBuild modules
ebModLen=${#EB_MODULES[*]}

#for each EasyBuild module check if available. If not, try to install it!
for (( i=0; i<${ebModLen}; i++ ))
do
	#try to install eb module
	echo "Try to install ${EB_MODULES[$i]//\//-}.eb"
	eb "${EB_MODULES[$i]//\//-}.eb"
	#check the module installation
	CMD="ml av 2>&1 | gawk '/${EB_MODULES[$i]//\//[/]}/{ for (i = 1; i <= NF; i++) { if ( \$i == \"${EB_MODULES[$i]}\" ) print \$i } }'"

	OK=$(eval "$CMD")

	if [ "$OK" == "" ]; then
		echo "Error installing EasyBuild module "${EB_MODULES[$i]}"needed by "$METHOD_TYPE
		exit 1
	fi

	#ERROR=$(eb ${EB_MODULES[$i]}.eb | gawk '/ERROR:/{ print }')
	#if [ "$ERROR" != "" ], then
	#	echo "Error installing EasyBuild module "${EB_MODULES[$i]}"needed by "$METHOD_TYPE
	#	exit 1
	#fi
done

# #for each EasyBuild module check if installed. If not, try to install it!
# for (( i=0; i<${ebModLen}; i++ ))
# do
# 	#try to install eb module
# 	eb ${EB_MODULES[$i]}.eb
# 	echo EB: "${EB_MODULES[$i]}.eb"
# 	echo LIST: "${EB_MODULES[$i]//[/]/-}"
# 	#check the module installation
# 	OK="$(ml av 2>&1 | gawk '/"${EB_MODULES[$i]}"/{ for (i = 1; i <= NF; i++) { if ( $i == "lmod/6.0.1" ) print $i } }')"

# 	if [ "$OK" == "" ], then
# 		echo "Error installing EasyBuild module "${EB_MODULES[$i]}"needed by "$METHOD_TYPE
# 		exit 1
# 	fi

# 	#ERROR=$(eb ${EB_MODULES[$i]}.eb | gawk '/ERROR:/{ print }')
# 	#if [ "$ERROR" != "" ], then
# 	#	echo "Error installing EasyBuild module "${EB_MODULES[$i]}"needed by "$METHOD_TYPE
# 	#	exit 1
# 	#fi
# done

exit 0
