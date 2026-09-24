package com.microsoft.identity.common.java.dto;

import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PrimaryRefreshTokenRecord extends Credential {

    @y77("expires_on")
    private String mExpiresOn;

    @y77("family_id")
    private String mFamilyId;

    @y77("prt_protocol_version")
    private String mPrtProtocolVersion;

    @y77("session_key")
    private String mSessionKey;

    @y77("session_key_rolling_date")
    private String mSessionKeyRollingDate;

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PrimaryRefreshTokenRecord)) {
            return false;
        }
        PrimaryRefreshTokenRecord primaryRefreshTokenRecord = (PrimaryRefreshTokenRecord) obj;
        if (!super.equals(obj)) {
            return false;
        }
        String str = this.mFamilyId;
        String str2 = primaryRefreshTokenRecord.mFamilyId;
        if (str != null ? !str.equals(str2) : str2 != null) {
            return false;
        }
        String str3 = this.mExpiresOn;
        String str4 = primaryRefreshTokenRecord.mExpiresOn;
        if (str3 != null ? !str3.equals(str4) : str4 != null) {
            return false;
        }
        String str5 = this.mSessionKey;
        String str6 = primaryRefreshTokenRecord.mSessionKey;
        if (str5 != null ? !str5.equals(str6) : str6 != null) {
            return false;
        }
        String str7 = this.mPrtProtocolVersion;
        String str8 = primaryRefreshTokenRecord.mPrtProtocolVersion;
        if (str7 != null ? !str7.equals(str8) : str8 != null) {
            return false;
        }
        String str9 = this.mSessionKeyRollingDate;
        String str10 = primaryRefreshTokenRecord.mSessionKeyRollingDate;
        return str9 != null ? str9.equals(str10) : str10 == null;
    }

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final int hashCode() {
        int iHashCode = super.hashCode();
        String str = this.mFamilyId;
        int iHashCode2 = (iHashCode * 59) + (str == null ? 43 : str.hashCode());
        String str2 = this.mExpiresOn;
        int iHashCode3 = (iHashCode2 * 59) + (str2 == null ? 43 : str2.hashCode());
        String str3 = this.mSessionKey;
        int iHashCode4 = (iHashCode3 * 59) + (str3 == null ? 43 : str3.hashCode());
        String str4 = this.mPrtProtocolVersion;
        int i = iHashCode4 * 59;
        int iHashCode5 = str4 == null ? 43 : str4.hashCode();
        String str5 = this.mSessionKeyRollingDate;
        return ((i + iHashCode5) * 59) + (str5 != null ? str5.hashCode() : 43);
    }

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final boolean isExpired() {
        return Long.parseLong(this.mExpiresOn) * 1000 < System.currentTimeMillis();
    }

    @Override // com.microsoft.identity.common.java.dto.AccountCredentialBase
    public final String toString() {
        return "PrimaryRefreshTokenRecord{mFamilyId='" + this.mFamilyId + "', mExpiresOn='" + this.mExpiresOn + "', mSessionKey='" + this.mSessionKey + "', mPrtProtocolVersion='" + this.mPrtProtocolVersion + "', mSessionKeyRollingDate='" + this.mSessionKeyRollingDate + "'} " + super.toString();
    }
}
