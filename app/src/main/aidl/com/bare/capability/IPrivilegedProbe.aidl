package com.bare.capability;

import android.os.ParcelFileDescriptor;

interface IPrivilegedProbe {
    String getIdentity();
    String[] getPackagePaths(String packageName);
    ParcelFileDescriptor openPackageFile(String packageName, String path);
}
