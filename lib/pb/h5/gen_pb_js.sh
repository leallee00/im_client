#!/bin/bash
echo 'syntax = "proto3";' > client_pb.proto

protoList=`ls ../pb_pub/*.proto ../pb_msg/*/*.proto`
#echo 'syntax = "proto3";' > client_pb.proto
for proto in $protoList
do
	echo $proto
	echo "import  " '"'${proto}'";' >> client_pb.proto
done

#echo "module.exports = " > client_pb.js
:> client_pb.json
pbjs -t json client_pb.proto >> client_pb.json
