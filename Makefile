



 apk-test:
	@echo "打包中"
	flutter build apk --release --no-tree-shake-icons   --dart-define=isTest=true;
	cd ./build/app/outputs/flutter-apk;mv app-release.apk "laiwang_test_1.3.5.apk";
	@echo "打包结束";

 apk:
	@echo "打包中"
	flutter build apk --release --no-tree-shake-icons   --dart-define=isTest=false;
	cd ./build/app/outputs/flutter-apk;mv app-release.apk "laiwang_kaifa.apk";
	@echo "打包结束";

