#!/bin/bash

go2atf()
{
	dirs=(	"$HOME/workspace/arm/arm-trusted-firmware"
		"$HOME/workspace/optee/arm-trusted-firmware"
		)
	if [ -z $1 ]; then
		i=0
		for d in "${dirs[@]}"
		do
			echo $i : $d
			i=$((i+1))
		done
	else
		d=${dirs[$1]}
		cd $d;
	fi
}


sfind()
{
	for d in $@
	do
		local search_dir=$PWD/$d
		find -L $search_dir -name "*.[chS]" -o -name "*.cc" -o -name "*.cpp" -o -name "*.aidl" -o -name "*.java" -o -name "*.xml" -o -name "*.mk" -o -name "*.sh" -o -name "Make*" -o -name "*.ld*"
	done
}
