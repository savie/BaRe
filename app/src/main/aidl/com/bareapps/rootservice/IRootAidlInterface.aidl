package com.bareapps.rootservice;

import android.os.Bundle;

/**
 * Minimal IPC contract for commands executed inside a Shizuku user-service process.
 * The caller must bind through Shizuku after the user grants Shizuku permission.
 */
interface IRootAidlInterface {
    Bundle execute(in String[] command, long timeoutMillis);
}
