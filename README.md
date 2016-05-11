#xamarin-example-c
android/ios/win/mac dev under xamarin ide to call native library in c/c++

##iOS build
- /Developer/usr/bin/xcodebuild -project MyProject.xcodeproj -target MyLibrary -sdk iphonesimulator -arch i386 -configuration Release clean build
- /Developer/usr/bin/xcodebuild -project MyProject.xcodeproj -target MyLibrary -sdk iphoneos -arch arm64 -configuration Release clean build
- /Developer/usr/bin/xcodebuild -project MyProject.xcodeproj -target MyLibrary -sdk iphoneos -arch armv7 -configuration Release clean build
- lipo -create -output libMyLibrary.a libMyLibrary-i386.a libMyLibrary-arm64.a libMyLibrary-armv7.a

####xamarin project setting
- 将生成的libMyLibrary.a库添加到xamarin.ios项目中，并在*.a库上右键选择Build Action-->None
- 右键xamarin.ios项目，选择options-->iOS Build，在Additional mtouch arguments下添加：
  - -cxx -gcc_flags "-L${ProjectDir} -lMyLibrary -force_load ${ProjectDir}/libMyLibrary.a"

##Android build
####xamarin project setting
- 将生成的libMyLibrary.so库添加到xamarin.android项目中，并在*.so库上右键选择Build Action-->AndroidNativeLibrary
- libMyLibrary.so的路径需存到特定ABI文件夹下，例如：armeabi-v7a/libMyLibrary.so
