package com.microsoft.identity.common.java.dto;

import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class RefreshTokenRecord extends Credential {

    @y77("family_id")
    private String mFamilyId;

    @y77("target")
    private String mTarget;

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        RefreshTokenRecord refreshTokenRecord = (RefreshTokenRecord) obj;
        String str = this.mFamilyId;
        String str2 = refreshTokenRecord.mFamilyId;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String str3 = this.mTarget;
        String str4 = refreshTokenRecord.mTarget;
        if (str3 != null) {
            return str3.equals(str4);
        }
        return str4 == null;
    }

    public final String getFamilyId() {
        return this.mFamilyId;
    }

    public final String getTarget() {
        return this.mTarget;
    }

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.mFamilyId;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.mTarget;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final boolean isExpired() {
        return false;
    }

    public final void setFamilyId(String str) {
        this.mFamilyId = str;
    }

    public final void setTarget(String str) {
        this.mTarget = str;
    }

    @Override // com.microsoft.identity.common.java.dto.AccountCredentialBase
    public final String toString() {
        return "RefreshToken{mFamilyId='" + this.mFamilyId + "', mTarget='" + this.mTarget + "'} " + super.toString();
    }
}
