package com.bareapps.rootservice;

interface ISbaOperationCallback {
    void onProgress(long operationId, int state, int errorCode, int errorSubCode,
                    int progressCode, String message, long processed, long total);
}
