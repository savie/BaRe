package com.microsoft.identity.common.java.dto;

import defpackage.y77;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AccessTokenRecord extends Credential {

    @y77(alternate = {"access_token_type"}, value = "token_type")
    private String mAccessTokenType;

    @y77("application_identifier")
    private String mApplicationIdentifier;

    @y77("authority")
    private String mAuthority;

    @y77("expires_on")
    private String mExpiresOn;

    @y77("extended_expires_on")
    private String mExtendedExpiresOn;

    @y77("kid")
    private String mKid;

    @y77("mam_enrollment_identifier")
    private String mMamEnrollmentIdentifier;

    @y77("realm")
    private String mRealm;

    @y77("refresh_on")
    private String mRefreshOn;

    @y77("requested_claims")
    private String mRequestedClaims;

    @y77("target")
    private String mTarget;

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccessTokenRecord)) {
            return false;
        }
        AccessTokenRecord accessTokenRecord = (AccessTokenRecord) obj;
        if (!super.equals(obj)) {
            return false;
        }
        String str = this.mRequestedClaims;
        String str2 = accessTokenRecord.mRequestedClaims;
        if (str != null ? !str.equals(str2) : str2 != null) {
            return false;
        }
        String str3 = this.mKid;
        String str4 = accessTokenRecord.mKid;
        if (str3 != null ? !str3.equals(str4) : str4 != null) {
            return false;
        }
        String str5 = this.mAccessTokenType;
        String str6 = accessTokenRecord.mAccessTokenType;
        if (str5 != null ? !str5.equals(str6) : str6 != null) {
            return false;
        }
        String str7 = this.mAuthority;
        String str8 = accessTokenRecord.mAuthority;
        if (str7 != null ? !str7.equals(str8) : str8 != null) {
            return false;
        }
        String str9 = this.mExtendedExpiresOn;
        String str10 = accessTokenRecord.mExtendedExpiresOn;
        if (str9 != null ? !str9.equals(str10) : str10 != null) {
            return false;
        }
        String str11 = this.mRealm;
        String str12 = accessTokenRecord.mRealm;
        if (str11 != null ? !str11.equals(str12) : str12 != null) {
            return false;
        }
        String str13 = this.mTarget;
        String str14 = accessTokenRecord.mTarget;
        if (str13 != null ? !str13.equals(str14) : str14 != null) {
            return false;
        }
        String str15 = this.mExpiresOn;
        String str16 = accessTokenRecord.mExpiresOn;
        if (str15 != null ? !str15.equals(str16) : str16 != null) {
            return false;
        }
        String str17 = this.mRefreshOn;
        String str18 = accessTokenRecord.mRefreshOn;
        if (str17 != null ? !str17.equals(str18) : str18 != null) {
            return false;
        }
        String str19 = this.mApplicationIdentifier;
        String str20 = accessTokenRecord.mApplicationIdentifier;
        if (str19 != null ? !str19.equals(str20) : str20 != null) {
            return false;
        }
        String str21 = this.mMamEnrollmentIdentifier;
        String str22 = accessTokenRecord.mMamEnrollmentIdentifier;
        return str21 != null ? str21.equals(str22) : str22 == null;
    }

    public final String getAccessTokenType() {
        return this.mAccessTokenType;
    }

    public final String getApplicationIdentifier() {
        return this.mApplicationIdentifier;
    }

    public final String getExpiresOn() {
        return this.mExpiresOn;
    }

    public final String getKid() {
        return this.mKid;
    }

    public final String getMamEnrollmentIdentifier() {
        return this.mMamEnrollmentIdentifier;
    }

    public final String getRealm() {
        return this.mRealm;
    }

    public final String getRequestedClaims() {
        return this.mRequestedClaims;
    }

    public final String getTarget() {
        return this.mTarget;
    }

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final int hashCode() {
        int iHashCode = super.hashCode();
        String str = this.mRequestedClaims;
        int iHashCode2 = (iHashCode * 59) + (str == null ? 43 : str.hashCode());
        String str2 = this.mKid;
        int iHashCode3 = (iHashCode2 * 59) + (str2 == null ? 43 : str2.hashCode());
        String str3 = this.mAccessTokenType;
        int iHashCode4 = (iHashCode3 * 59) + (str3 == null ? 43 : str3.hashCode());
        String str4 = this.mAuthority;
        int iHashCode5 = (iHashCode4 * 59) + (str4 == null ? 43 : str4.hashCode());
        String str5 = this.mExtendedExpiresOn;
        int iHashCode6 = (iHashCode5 * 59) + (str5 == null ? 43 : str5.hashCode());
        String str6 = this.mRealm;
        int iHashCode7 = (iHashCode6 * 59) + (str6 == null ? 43 : str6.hashCode());
        String str7 = this.mTarget;
        int iHashCode8 = (iHashCode7 * 59) + (str7 == null ? 43 : str7.hashCode());
        String str8 = this.mExpiresOn;
        int iHashCode9 = (iHashCode8 * 59) + (str8 == null ? 43 : str8.hashCode());
        String str9 = this.mRefreshOn;
        int iHashCode10 = (iHashCode9 * 59) + (str9 == null ? 43 : str9.hashCode());
        String str10 = this.mApplicationIdentifier;
        int i = iHashCode10 * 59;
        int iHashCode11 = str10 == null ? 43 : str10.hashCode();
        String str11 = this.mMamEnrollmentIdentifier;
        return ((i + iHashCode11) * 59) + (str11 != null ? str11.hashCode() : 43);
    }

    @Override // com.microsoft.identity.common.java.dto.Credential
    public final boolean isExpired() {
        String str = this.mExpiresOn;
        return new Date(TimeUnit.SECONDS.toMillis(Long.parseLong(str))).before(Calendar.getInstance().getTime());
    }

    public final void setAccessTokenType(String str) {
        this.mAccessTokenType = str;
    }

    public final void setApplicationIdentifier(String str) {
        this.mApplicationIdentifier = str;
    }

    public final void setAuthority(String str) {
        this.mAuthority = str;
    }

    public final void setExpiresOn(String str) {
        this.mExpiresOn = str;
    }

    public final void setExtendedExpiresOn(String str) {
        this.mExtendedExpiresOn = str;
    }

    public final void setKid(String str) {
        this.mKid = str;
    }

    public final void setMamEnrollmentIdentifier() {
        this.mMamEnrollmentIdentifier = null;
    }

    public final void setRealm(String str) {
        this.mRealm = str;
    }

    public final void setRefreshOn(String str) {
        this.mRefreshOn = str;
    }

    public final void setTarget(String str) {
        this.mTarget = str;
    }
}
