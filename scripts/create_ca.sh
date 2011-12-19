#!/bin/sh

SCRIPT_PATH=`dirname $0`

if [ "$#" -ne 1 ]; then
	echo "Syntax: $0 <ca_path>" >&2
	echo >&2
	echo "Create a certification authority at the specified path." >&2
	exit 1
fi

CA_PATH=$1

mkdir -p $CA_PATH
cd $CA_PATH
mkdir crt key crl
echo '01' > serial
echo '01' > crlnumber
touch index.txt
cp $SCRIPT_PATH/ca.cnf .
