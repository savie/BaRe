package com.bare.capability;

interface IPrivilegedProbe {
    String getIdentity();
    String[] getPackagePaths(String packageName);
    byte[] readFileChunk(String packageName, String path, long offset, int maxBytes);
}
