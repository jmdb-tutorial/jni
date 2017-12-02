package jmdb.tutorial.jni;

import sun.jvm.hotspot.HelloWorld;

import static java.lang.System.out;

public class Main {

    public static void main(String[] args) {
        out.println("Hey this is very simple. I am about to call a C function that says hello to me...\n\n");

        CHelloWorld helloWorld = new CHelloWorld();

        out.println(helloWorld.sayHello("Ada"));

        out.println("\n\nSee that was easy, wasn't it?");
;
    }
}
