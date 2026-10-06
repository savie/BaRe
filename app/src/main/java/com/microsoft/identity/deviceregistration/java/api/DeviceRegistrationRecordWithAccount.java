package com.microsoft.identity.deviceregistration.java.api;

import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DeviceRegistrationRecordWithAccount extends DeviceRegistrationRecord {
    private final String mAccountName;

    public DeviceRegistrationRecordWithAccount(String str, String str2, String str3, String str4, boolean z, boolean z2) {
        super(str2, str3, str4, z, z2);
        if (str == null) {
            f6.n("accountName is marked non-null but is null");
            throw null;
        }
        if (str2 == null) {
            f6.n("tenantId is marked non-null but is null");
            throw null;
        }
        if (str4 != null) {
            this.mAccountName = str;
        } else {
            f6.n("deviceId is marked non-null but is null");
            throw null;
        }
    }

    public String getAccountName() {
        return this.mAccountName;
    }
}
