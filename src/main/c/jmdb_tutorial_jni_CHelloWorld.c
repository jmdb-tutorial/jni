#include <jni.h>
#include <stdio.h>
#include "jmdb_tutorial_jni_CHelloWorld.h"

/* From https://www3.ntu.edu.sg/home/ehchua/programming/java/JavaNativeInterface.html */

JNIEXPORT jstring JNICALL Java_jmdb_tutorial_jni_CHelloWorld_sayHello
  (JNIEnv *env, jobject thisObj, jstring inJNIStr) {

    // Step 1: Convert the JNI String (jstring) into C-String (char*)
    const char *inCStr = (*env)->GetStringUTFChars(env, inJNIStr, NULL);
    if (NULL == inCStr) return NULL;

    // Step 2: Perform its intended operations
    printf("In C, the received string is: %s\n", inCStr);
    (*env)->ReleaseStringUTFChars(env, inJNIStr, inCStr);  // release resources

    // Prompt user for a C-string
    char outCStr[128];
    int n, a=5, b=3;
    n = sprintf(outCStr, "Hello [%s]", inCStr);


    // Step 3: Convert the C-string (char*) into JNI String (jstring) and return
    return (*env)->NewStringUTF(env, outCStr);
}