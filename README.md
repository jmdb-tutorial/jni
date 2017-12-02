# Java Native Interface (JNI) Tutorial

Follow from https://www3.ntu.edu.sg/home/ehchua/programming/java/JavaNativeInterface.html

Currently only set up to work on OSX.

In theory you should just be able to run the main

## Regenerate the c header file

To do this, run

```
make generate
```

This will create the file `src/main/c/jmdb_tutorial_jni_CHelloWorld.h` - this file is alread checked in so you should only need
to do this if you change the signature, you will also need to update the implementation `.c` file of course

## Create the libs

Run

```
make compile-osx
```

This should regenerate the .o and .dylib files