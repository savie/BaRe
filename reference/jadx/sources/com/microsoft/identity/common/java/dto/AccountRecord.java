package com.microsoft.identity.common.java.dto;

import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAccount;
import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AccountRecord extends AccountCredentialBase implements IAccountRecord {

    @y77("alternative_account_id")
    private String mAlternativeAccountId;

    @y77("authority_type")
    private String mAuthorityType;

    @y77("avatar_url")
    private String mAvatarUrl;

    @y77("client_info")
    private String mClientInfo;

    @y77("environment")
    private String mEnvironment;

    @y77("family_name")
    private String mFamilyName;

    @y77("first_name")
    private String mFirstName;

    @y77("home_account_id")
    private String mHomeAccountId;

    @y77("local_account_id")
    private String mLocalAccountId;

    @y77("middle_name")
    private String mMiddleName;

    @y77("name")
    private String mName;

    @y77("realm")
    private String mRealm;

    @y77("username")
    private String mUsername;

    public AccountRecord(MicrosoftStsAccount microsoftStsAccount) {
        this.mHomeAccountId = microsoftStsAccount.getHomeAccountId();
        this.mEnvironment = microsoftStsAccount.getEnvironment();
        this.mRealm = microsoftStsAccount.getRealm();
        this.mLocalAccountId = microsoftStsAccount.getLocalAccountId();
        this.mUsername = microsoftStsAccount.getUsername();
        this.mAuthorityType = "MSSTS";
        this.mClientInfo = microsoftStsAccount.getClientInfo();
        this.mAlternativeAccountId = microsoftStsAccount.getAlternativeAccountId();
        this.mFirstName = microsoftStsAccount.getFirstName();
        this.mFamilyName = microsoftStsAccount.getFamilyName();
        this.mMiddleName = microsoftStsAccount.getMiddleName();
        this.mName = microsoftStsAccount.getName();
        this.mAvatarUrl = microsoftStsAccount.getAvatarUrl();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AccountRecord accountRecord = (AccountRecord) obj;
            String str = this.mHomeAccountId;
            String str2 = accountRecord.mHomeAccountId;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            String str3 = this.mEnvironment;
            String str4 = accountRecord.mEnvironment;
            if (str3 == null ? str4 != null : !str3.equals(str4)) {
                return false;
            }
            String str5 = this.mRealm;
            String str6 = accountRecord.mRealm;
            if (str5 == null ? str6 != null : !str5.equals(str6)) {
                return false;
            }
            String str7 = this.mLocalAccountId;
            String str8 = accountRecord.mLocalAccountId;
            if (str7 == null ? str8 != null : !str7.equals(str8)) {
                return false;
            }
            String str9 = this.mUsername;
            String str10 = accountRecord.mUsername;
            if (str9 == null ? str10 != null : !str9.equals(str10)) {
                return false;
            }
            String str11 = this.mAuthorityType;
            String str12 = accountRecord.mAuthorityType;
            if (str11 == null ? str12 != null : !str11.equals(str12)) {
                return false;
            }
            String str13 = this.mAlternativeAccountId;
            String str14 = accountRecord.mAlternativeAccountId;
            if (str13 == null ? str14 != null : !str13.equals(str14)) {
                return false;
            }
            String str15 = this.mFirstName;
            String str16 = accountRecord.mFirstName;
            if (str15 == null ? str16 != null : !str15.equals(str16)) {
                return false;
            }
            String str17 = this.mFamilyName;
            String str18 = accountRecord.mFamilyName;
            if (str17 == null ? str18 != null : !str17.equals(str18)) {
                return false;
            }
            String str19 = this.mAvatarUrl;
            String str20 = accountRecord.mAvatarUrl;
            if (str19 != null) {
                return str19.equals(str20);
            }
            if (str20 == null) {
                return true;
            }
        }
        return false;
    }

    public final String getAuthorityType() {
        return this.mAuthorityType;
    }

    public final String getClientInfo() {
        return this.mClientInfo;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final String getEnvironment() {
        return this.mEnvironment;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final String getHomeAccountId() {
        return this.mHomeAccountId;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final String getLocalAccountId() {
        return this.mLocalAccountId;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final String getRealm() {
        return this.mRealm;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final String getUsername() {
        return this.mUsername;
    }

    public final int hashCode() {
        String str = this.mHomeAccountId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.mEnvironment;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mRealm;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.mLocalAccountId;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.mUsername;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.mAuthorityType;
        int iHashCode6 = (iHashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.mAlternativeAccountId;
        int iHashCode7 = (iHashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.mFirstName;
        int iHashCode8 = (iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.mFamilyName;
        int iHashCode9 = (iHashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.mAvatarUrl;
        return iHashCode9 + (str10 != null ? str10.hashCode() : 0);
    }

    public final void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public final void setHomeAccountId(String str) {
        this.mHomeAccountId = str;
    }

    public final void setLocalAccountId(String str) {
        this.mLocalAccountId = str;
    }

    public final void setRealm(String str) {
        this.mRealm = str;
    }

    public final void setUsername(String str) {
        this.mUsername = str;
    }

    public AccountRecord() {
    }
}
