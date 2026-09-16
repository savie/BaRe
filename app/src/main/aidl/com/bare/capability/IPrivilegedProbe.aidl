package com.bare.capability;

interface IPrivilegedProbe {
    String getIdentity();
    String[] getPackagePaths(String packageName);
}
