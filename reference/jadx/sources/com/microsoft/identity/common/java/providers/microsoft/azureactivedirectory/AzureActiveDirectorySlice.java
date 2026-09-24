package com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory;

import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AzureActiveDirectorySlice {

    @y77("dc")
    private String mDataCenter;

    @y77("slice")
    private String mSlice;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AzureActiveDirectorySlice)) {
            return false;
        }
        AzureActiveDirectorySlice azureActiveDirectorySlice = (AzureActiveDirectorySlice) obj;
        String str = this.mSlice;
        String str2 = azureActiveDirectorySlice.mSlice;
        if (str != null ? !str.equals(str2) : str2 != null) {
            return false;
        }
        String str3 = this.mDataCenter;
        String str4 = azureActiveDirectorySlice.mDataCenter;
        return str3 != null ? str3.equals(str4) : str4 == null;
    }

    public final String getDataCenter() {
        return this.mDataCenter;
    }

    public final String getSlice() {
        return this.mSlice;
    }

    public final int hashCode() {
        String str = this.mSlice;
        int iHashCode = str == null ? 43 : str.hashCode();
        String str2 = this.mDataCenter;
        return ((iHashCode + 59) * 59) + (str2 != null ? str2.hashCode() : 43);
    }

    public final void setDataCenter(String str) {
        this.mDataCenter = str;
    }

    public final void setSlice(String str) {
        this.mSlice = str;
    }
}
