package com.microsoft.identity.common.java.dto;

import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class IdTokenRecord extends Credential {

    @y77("authority")
    private String mAuthority;

    @y77("realm")
    private String mRealm;

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        IdTokenRecord idTokenRecord = (IdTokenRecord) obj;
        String str = this.mRealm;
        String str2 = idTokenRecord.mRealm;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String str3 = this.mAuthority;
        String str4 = idTokenRecord.mAuthority;
        if (str3 != null) {
            return str3.equals(str4);
        }
        return str4 == null;
    }

    public final String getRealm() {
        return this.mRealm;
    }

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.mRealm;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.mAuthority;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final boolean isExpired() {
        return false;
    }

    public final void setAuthority(String str) {
        this.mAuthority = str;
    }

    public final void setRealm(String str) {
        this.mRealm = str;
    }
}
