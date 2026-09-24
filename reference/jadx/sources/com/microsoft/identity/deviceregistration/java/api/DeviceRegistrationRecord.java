package com.microsoft.identity.deviceregistration.java.api;

import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DeviceRegistrationRecord implements IDeviceRegistrationRecord {
    public static final String TAG = "DeviceRegistrationRecord";
    private final String mDeviceId;
    private final boolean mIsRegisteredWithStrongKeys;
    private final boolean mSharedDevice;
    private final String mTenantId;
    private final String mUpn;

    public DeviceRegistrationRecord(String str, String str2, String str3, boolean z, boolean z2) {
        if (str == null) {
            f6.n("tenantId is marked non-null but is null");
            throw null;
        }
        if (str3 == null) {
            f6.n("deviceId is marked non-null but is null");
            throw null;
        }
        this.mTenantId = str;
        this.mUpn = str2;
        this.mDeviceId = str3;
        this.mSharedDevice = z;
        this.mIsRegisteredWithStrongKeys = z2;
    }

    public String getDeviceId() {
        return this.mDeviceId;
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    public String getUpn() {
        return this.mUpn;
    }

    public boolean isRegisteredWithStrongKeys() {
        return this.mIsRegisteredWithStrongKeys;
    }

    public boolean isSharedDevice() {
        return this.mSharedDevice;
    }
}
