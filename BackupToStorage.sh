#!/usr/bin/bash

function usage {
 cat <<EOF
 $0 <option> <path>
 --path --> path for doing backup and save it on AWS storage
EOF
}

if [[ $# -ne 2 ]];then
 usage
 exit 1
fi

case $1 in
 --path)
  path=$(realpath $2)
  shift 2
 ;;
 *)
  echo "ERROR: Wrong Argument!"
  exit 1
 ;;
esac

echo "PATH: $path"
#checks if the aws command is available in the system's PATH and if it is executable. If the aws command is found, command -v aws would normally 
#print the path to the aws executable. However, since the output is redirected to /dev/null, no output is produced.
# Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
  echo "AWS CLI not found, please install it."
  exit 1
fi
