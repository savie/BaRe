package com.microsoft.identity.common.java.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.java.dto.IAccountRecord;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.java.providers.oauth2.IDToken;
import com.microsoft.identity.common.java.util.SchemaUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MicrosoftStsAccount implements IAccountRecord {
    private final String mDisplayableId;
    private String mEnvironment;
    private final String mFamilyName;
    private final String mGivenName;
    private final IDToken mIDToken;
    private final String mMiddleName;
    private final String mName;
    private final URL mPasswordChangeUrl;
    private final Date mPasswordExpiresOn;
    private final String mRawClientInfo;
    private final String mTenantId;
    private final String mUid;
    private final String mUserId;
    private final String mUtid;

    public MicrosoftStsAccount(IDToken iDToken, ClientInfo clientInfo) {
        String str;
        Logger.verbose("MicrosoftAccount", "Init: MicrosoftAccount");
        this.mIDToken = iDToken;
        this.mRawClientInfo = clientInfo.getRawClientInfo();
        Map<String, ?> tokenClaims = iDToken.getTokenClaims();
        if (!StringUtil.isNullOrEmpty((String) tokenClaims.get("oid"))) {
            Logger.info("MicrosoftAccount:getUniqueId", "Using ObjectId as uniqueId");
            str = (String) tokenClaims.get("oid");
        } else if (StringUtil.isNullOrEmpty((String) tokenClaims.get("sub"))) {
            str = null;
        } else {
            Logger.info("MicrosoftAccount:getUniqueId", "Using Subject as uniqueId");
            str = (String) tokenClaims.get("sub");
        }
        this.mUserId = str;
        this.mDisplayableId = SchemaUtil.getDisplayableId(tokenClaims);
        this.mName = (String) tokenClaims.get("name");
        this.mGivenName = (String) tokenClaims.get("given_name");
        this.mFamilyName = (String) tokenClaims.get("family_name");
        this.mMiddleName = (String) tokenClaims.get("middle_name");
        if (!StringUtil.isNullOrEmpty((String) tokenClaims.get("tid"))) {
            this.mTenantId = (String) tokenClaims.get("tid");
        } else if (StringUtil.isNullOrEmpty(clientInfo.getUtid())) {
            Logger.warnPII("MicrosoftAccount", "realm and utid is not returned from server. Use empty string as default tid.");
            this.mTenantId = "";
        } else {
            Logger.warnPII("MicrosoftAccount", "realm is not returned from server. Use utid as realm.");
            this.mTenantId = clientInfo.getUtid();
        }
        this.mUid = clientInfo.getUid();
        this.mUtid = clientInfo.getUtid();
        Object obj = tokenClaims.get("pwd_exp");
        long j = obj != null ? Long.parseLong(obj.toString()) : 0L;
        if (j > 0) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.add(13, (int) j);
            this.mPasswordExpiresOn = gregorianCalendar.getTime();
        }
        this.mPasswordChangeUrl = null;
        String str2 = (String) tokenClaims.get("pwd_url");
        if (StringUtil.isNullOrEmpty(str2)) {
            return;
        }
        try {
            this.mPasswordChangeUrl = new URL(str2);
        } catch (MalformedURLException e) {
            Logger.error("MicrosoftAccount", "Failed to parse passwordChangeUrl.", e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof MicrosoftStsAccount) && equals$com$microsoft$identity$common$java$providers$microsoft$MicrosoftAccount(obj);
    }

    public final boolean equals$com$microsoft$identity$common$java$providers$microsoft$MicrosoftAccount(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        URL url;
        URL url2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MicrosoftStsAccount)) {
            return false;
        }
        MicrosoftStsAccount microsoftStsAccount = (MicrosoftStsAccount) obj;
        if (!(this instanceof MicrosoftStsAccount) || this != obj) {
            return false;
        }
        synchronized (this) {
            str = this.mDisplayableId;
        }
        synchronized (microsoftStsAccount) {
            str2 = microsoftStsAccount.mDisplayableId;
        }
        if (str == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str.equals(str2)) {
            return false;
        }
        synchronized (this) {
            str3 = this.mUserId;
        }
        synchronized (microsoftStsAccount) {
            str4 = microsoftStsAccount.mUserId;
        }
        if (str3 == null) {
            if (str4 != null) {
                return false;
            }
        } else if (!str3.equals(str4)) {
            return false;
        }
        String name = getName();
        String name2 = microsoftStsAccount.getName();
        if (name == null) {
            if (name2 != null) {
                return false;
            }
        } else if (!name.equals(name2)) {
            return false;
        }
        synchronized (this) {
            str5 = this.mUid;
        }
        synchronized (microsoftStsAccount) {
            str6 = microsoftStsAccount.mUid;
        }
        if (str5 == null) {
            if (str6 != null) {
                return false;
            }
        } else if (!str5.equals(str6)) {
            return false;
        }
        synchronized (this) {
            str7 = this.mUtid;
        }
        synchronized (microsoftStsAccount) {
            str8 = microsoftStsAccount.mUtid;
        }
        if (str7 == null) {
            if (str8 != null) {
                return false;
            }
        } else if (!str7.equals(str8)) {
            return false;
        }
        IDToken iDToken = getIDToken();
        IDToken iDToken2 = microsoftStsAccount.getIDToken();
        if (iDToken == null) {
            if (iDToken2 != null) {
                return false;
            }
        } else if (!iDToken.equals(iDToken2)) {
            return false;
        }
        synchronized (this) {
            url = this.mPasswordChangeUrl;
        }
        synchronized (microsoftStsAccount) {
            url2 = microsoftStsAccount.mPasswordChangeUrl;
        }
        if (url == null) {
            if (url2 != null) {
                return false;
            }
        } else if (!url.equals(url2)) {
            return false;
        }
        Date passwordExpiresOn = getPasswordExpiresOn();
        Date passwordExpiresOn2 = microsoftStsAccount.getPasswordExpiresOn();
        if (passwordExpiresOn == null) {
            if (passwordExpiresOn2 != null) {
                return false;
            }
        } else if (!passwordExpiresOn.equals(passwordExpiresOn2)) {
            return false;
        }
        String str9 = this.mTenantId;
        String str10 = microsoftStsAccount.mTenantId;
        if (str9 == null) {
            if (str10 != null) {
                return false;
            }
        } else if (!str9.equals(str10)) {
            return false;
        }
        String str11 = this.mGivenName;
        String str12 = microsoftStsAccount.mGivenName;
        if (str11 == null) {
            if (str12 != null) {
                return false;
            }
        } else if (!str11.equals(str12)) {
            return false;
        }
        String familyName = getFamilyName();
        String familyName2 = microsoftStsAccount.getFamilyName();
        if (familyName == null) {
            if (familyName2 != null) {
                return false;
            }
        } else if (!familyName.equals(familyName2)) {
            return false;
        }
        String middleName = getMiddleName();
        String middleName2 = microsoftStsAccount.getMiddleName();
        if (middleName == null) {
            if (middleName2 != null) {
                return false;
            }
        } else if (!middleName.equals(middleName2)) {
            return false;
        }
        String environment = getEnvironment();
        String environment2 = microsoftStsAccount.getEnvironment();
        if (environment == null) {
            if (environment2 != null) {
                return false;
            }
        } else if (!environment.equals(environment2)) {
            return false;
        }
        String str13 = this.mRawClientInfo;
        String str14 = microsoftStsAccount.mRawClientInfo;
        if (str13 == null) {
            return str14 == null;
        }
        return str13.equals(str14);
    }

    public final synchronized String getAlternativeAccountId() {
        return SchemaUtil.getAlternativeAccountId(this.mIDToken);
    }

    public final synchronized String getAvatarUrl() {
        return SchemaUtil.getAvatarUrl(this.mIDToken);
    }

    public final synchronized String getClientInfo() {
        return this.mRawClientInfo;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final synchronized String getEnvironment() {
        return this.mEnvironment;
    }

    public final synchronized String getFamilyName() {
        return this.mFamilyName;
    }

    public final synchronized String getFirstName() {
        return this.mGivenName;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final synchronized String getHomeAccountId() {
        StringBuilder sb;
        sb = new StringBuilder();
        synchronized (this) {
        }
        sb.append(this.mUtid);
        return sb.toString();
        sb.append(this.mUid);
        sb.append(".");
        synchronized (this) {
            sb.append(this.mUtid);
        }
        return sb.toString();
    }

    public final synchronized IDToken getIDToken() {
        return this.mIDToken;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final synchronized String getLocalAccountId() {
        String str;
        synchronized (this) {
            str = this.mUserId;
        }
        return str;
        return str;
    }

    public final synchronized String getMiddleName() {
        return this.mMiddleName;
    }

    public final synchronized String getName() {
        return this.mName;
    }

    public final synchronized Date getPasswordExpiresOn() {
        Date date;
        date = this.mPasswordExpiresOn;
        return date == null ? null : new Date(date.getTime());
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final synchronized String getRealm() {
        return this.mTenantId;
    }

    @Override // com.microsoft.identity.common.java.dto.IAccountRecord
    public final synchronized String getUsername() {
        String str;
        synchronized (this) {
            str = this.mDisplayableId;
        }
        return str;
        return str;
    }

    public int hashCode() {
        String str;
        String str2;
        String str3;
        String str4;
        URL url;
        int iHashCode = super.hashCode();
        synchronized (this) {
            str = this.mDisplayableId;
        }
        int iHashCode2 = (iHashCode * 59) + (str == null ? 43 : str.hashCode());
        synchronized (this) {
            str2 = this.mUserId;
        }
        int iHashCode3 = (iHashCode2 * 59) + (str2 == null ? 43 : str2.hashCode());
        String name = getName();
        int iHashCode4 = (iHashCode3 * 59) + (name == null ? 43 : name.hashCode());
        synchronized (this) {
            str3 = this.mUid;
        }
        int iHashCode5 = (iHashCode4 * 59) + (str3 == null ? 43 : str3.hashCode());
        synchronized (this) {
            str4 = this.mUtid;
        }
        int iHashCode6 = (iHashCode5 * 59) + (str4 == null ? 43 : str4.hashCode());
        IDToken iDToken = getIDToken();
        int iHashCode7 = (iHashCode6 * 59) + (iDToken == null ? 43 : iDToken.hashCode());
        synchronized (this) {
            url = this.mPasswordChangeUrl;
        }
        int iHashCode8 = (iHashCode7 * 59) + (url == null ? 43 : url.hashCode());
        Date passwordExpiresOn = getPasswordExpiresOn();
        int iHashCode9 = (iHashCode8 * 59) + (passwordExpiresOn == null ? 43 : passwordExpiresOn.hashCode());
        String str5 = this.mTenantId;
        int iHashCode10 = (iHashCode9 * 59) + (str5 == null ? 43 : str5.hashCode());
        String str6 = this.mGivenName;
        int iHashCode11 = (iHashCode10 * 59) + (str6 == null ? 43 : str6.hashCode());
        String familyName = getFamilyName();
        int iHashCode12 = (iHashCode11 * 59) + (familyName == null ? 43 : familyName.hashCode());
        String middleName = getMiddleName();
        int iHashCode13 = (iHashCode12 * 59) + (middleName == null ? 43 : middleName.hashCode());
        String environment = getEnvironment();
        int i = iHashCode13 * 59;
        int iHashCode14 = environment == null ? 43 : environment.hashCode();
        String str7 = this.mRawClientInfo;
        return ((i + iHashCode14) * 59) + (str7 != null ? str7.hashCode() : 43);
    }

    public final synchronized void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public final synchronized String toString() {
        return "MicrosoftAccount{mDisplayableId='" + this.mDisplayableId + "', mUserId='" + this.mUserId + "', mName='" + this.mName + "', mUid='" + this.mUid + "', mUtid='" + this.mUtid + "', mIDToken=" + this.mIDToken + ", mPasswordChangeUrl=" + this.mPasswordChangeUrl + ", mPasswordExpiresOn=" + this.mPasswordExpiresOn + ", mTenantId='" + this.mTenantId + "', mGivenName='" + this.mGivenName + "', mFamilyName='" + this.mFamilyName + "'} " + super.toString();
    }
}
