generate:
	javah -cp out/production/classes -d src/main/c jmdb.tutorial.jni.CHelloWorld

compile-osx:
	mkdir -p lib
	cc -v -c -fPIC -I/System/Library/Frameworks/JavaVM.framework/Versions/Current/Headers src/main/c/jmdb_tutorial_jni_CHelloWorld.c -o lib/hello.o
	libtool -dynamic -lSystem lib/hello.o -o lib/hello.dylib
