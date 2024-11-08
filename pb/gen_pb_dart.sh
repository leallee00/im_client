#!/bin/bash
#CUR=`pwd`

# 公共部分顺便生成一下
protoc pb_pub/*.proto --dart_out=. #--java_out=. --objc_out=.
protoc pb_stats/*.proto --dart_out=. #--java_out=. --objc_out=.
protoc google/protobuf/*.proto --dart_out=. #--java_out=. --objc_out=.
protoc google/rpc/*.proto --dart_out=. #--java_out=. --objc_out=.

dirlist=`ls -d pb_msg/*`
echo $dirlist

for dname in $dirlist
do
	echo $CUR/$dname
	#cd $CUR/$dname
	protoc $dname/*.proto --dart_out=. #--java_out=. --objc_out=.
done

dirlist=`ls -d pb_grpc/*`
echo $dirlist

for dname in $dirlist
do
	echo $CUR/$dname
	#cd $CUR/$dname
	protoc $dname/*.proto --dart_out=grpc:. #--java_out=. --objc_out=.
done

#cp ./github.com/leallee00/pb/* . -rf
#rm -rf ./source.yzsci.cn



