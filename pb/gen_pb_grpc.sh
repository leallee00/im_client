#!/bin/bash
#CUR=`pwd`

dirlist=`ls -d pb_grpc/*`
echo $dirlist

for dname in $dirlist
do
	#echo $CUR/$dname
	echo $dname
	#cd $CUR/$dname
	#protoc $dname/*.proto --go_out=plugins=grpc:. --micro_out=. --proto_path=.
	# 暂时不用micro，直到定制符合我们的要求
	protoc $dname/*.proto --go_out=plugins=grpc:. --proto_path=.
done

cp ./github.com/leallee00/pb/* . -rf
rm -rf ./source.yzsci.cn
