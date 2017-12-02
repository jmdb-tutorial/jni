clean:
	rm -rf lib
	rm -rf target

generate:
	mkdir -p target/classes
	javac -d target/classes src/main/java/jmdb/tutorial/jni/CHelloWorld.java src/main/java/jmdb/tutorial/jni/Main.java
	javah -cp target/classes -d src/main/c jmdb.tutorial.jni.CHelloWorld

compile-osx:
	mkdir -p lib
	cc -v -c -fPIC -I/System/Library/Frameworks/JavaVM.framework/Versions/Current/Headers src/main/c/jmdb_tutorial_jni_CHelloWorld.c -o lib/libhello.o
	libtool -dynamic -lSystem lib/libhello.o -o lib/libhello.dylib
