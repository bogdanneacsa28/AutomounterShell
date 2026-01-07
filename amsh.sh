 #!/bin/bash
echo -e "###############################################################################
#      _    __  __ ____  _   _ 
#     / \  |  \/  / ___|| | | |
#    / _ \ | |\/| \___ \| |_| |
#   / ___ \| |  | |___) |  _  |
#  /_/   \_\_|  |_|____/|_| |_|
#
#           AutoMounterShell
#
###############################################################################

# Script Logic Starts Below\n"
path=$(pwd)
initialPath=$path
if [ "$(find Config.txt)" != "Config.txt" ]; then
    echo -e "amsh: First create a file named "Config.txt" then retry the script\n"
    exit 1
fi
configPath="$(pwd)/Config.txt"
x="amsh:$path> "
echo -n "$x"
read input

while [ "$input" != "exit" -a "$input" != "bye" ]; do
	command=$(echo $input | cut -d " " -f 1)
    if [ "$command" = "cd" ]; then
        eval $input
        path=$(pwd)
        config=$(grep -m 1 "$path" $initialPath/Config.txt)
        pathConfig=$(echo $config | cut -d " " -f 1)
        mountConfig=$(echo $config | cut -d " " -f 2)
        if [ "$pathConfig" = "$path" ]; then
            lastDir=${path##*/}
            cd ..
            y=$(mountpoint $lastDir)
            verifyMountPoint=$(echo $y | cut -d " " -f 3)
            if [ "$verifyMountPoint" = "not" ]; then
                sudo mount $mountConfig $pathConfig
            fi
            cd $lastDir
        fi
        x="amsh:$path> "
        echo -n "$x"
    else
        eval $input
        echo -n "$x"
    fi
	read input
done
