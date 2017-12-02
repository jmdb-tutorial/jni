package jmdb.tutorial.jni;

public class CHelloWorld {

    static {
        System.loadLibrary("hello"); // Load native library at runtime
        // hello.dll (Windows) or libhello.so (Unixes)
    }

    public native String sayHello(String to);


}
