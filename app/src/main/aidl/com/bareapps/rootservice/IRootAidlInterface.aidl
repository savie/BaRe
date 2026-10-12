package com.bareapps.rootservice;

import android.os.Bundle;

/**
 * BΛR☰ command IPC contract. The Shizuku UserService executes argv without shell interpolation.
 * Each command element is one executable/argument; callers must not pass untrusted shell strings.
 */
interface IRootAidlInterface {
    Bundle execute(in String[] command, long timeoutMillis);
    int getPid();
    int getUid();
    String getServiceVersion();
}
