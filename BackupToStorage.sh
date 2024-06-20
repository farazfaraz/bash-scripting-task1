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

echo $path
