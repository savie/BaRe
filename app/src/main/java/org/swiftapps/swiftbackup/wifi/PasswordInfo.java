package org.swiftapps.swiftbackup.wifi;

import android.net.wifi.WifiEnterpriseConfig;
import defpackage.dj7;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.sx5;
import defpackage.u48;
import defpackage.vr6;
import defpackage.xs1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class PasswordInfo {
    public static final sx5 Companion = new sx5();
    private static final String logTag = "PasswordInfo";
    private String _rawXmlNode;
    private String entAnonIdentity;
    private String entCaCert;
    private String entEapMethod;
    private String entIdentity;
    private String entPassword;
    private String entPhase2Method;
    private String psk;
    private String ssid;

    public /* synthetic */ PasswordInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9);
    }

    public static /* synthetic */ PasswordInfo copy$default(PasswordInfo passwordInfo, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i, Object obj) {
        if ((i & 1) != 0) {
            str = passwordInfo.ssid;
        }
        if ((i & 2) != 0) {
            str2 = passwordInfo.psk;
        }
        if ((i & 4) != 0) {
            str3 = passwordInfo.entEapMethod;
        }
        if ((i & 8) != 0) {
            str4 = passwordInfo.entPhase2Method;
        }
        if ((i & 16) != 0) {
            str5 = passwordInfo.entIdentity;
        }
        if ((i & 32) != 0) {
            str6 = passwordInfo.entAnonIdentity;
        }
        if ((i & 64) != 0) {
            str7 = passwordInfo.entPassword;
        }
        if ((i & 128) != 0) {
            str8 = passwordInfo.entCaCert;
        }
        if ((i & 256) != 0) {
            str9 = passwordInfo._rawXmlNode;
        }
        String str10 = str8;
        String str11 = str9;
        String str12 = str6;
        String str13 = str7;
        String str14 = str5;
        String str15 = str3;
        return passwordInfo.copy(str, str2, str15, str4, str14, str12, str13, str10, str11);
    }

    private final boolean hasValidPreSharedKey() {
        String str = this.psk;
        return !(str == null || str.length() == 0);
    }

    public final String component1() {
        return this.ssid;
    }

    public final String component2() {
        return this.psk;
    }

    public final String component3() {
        return this.entEapMethod;
    }

    public final String component4() {
        return this.entPhase2Method;
    }

    public final String component5() {
        return this.entIdentity;
    }

    public final String component6() {
        return this.entAnonIdentity;
    }

    public final String component7() {
        return this.entPassword;
    }

    public final String component8() {
        return this.entCaCert;
    }

    public final String component9() {
        return this._rawXmlNode;
    }

    public final PasswordInfo copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        str.getClass();
        return new PasswordInfo(str, str2, str3, str4, str5, str6, str7, str8, str9);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PasswordInfo)) {
            return false;
        }
        PasswordInfo passwordInfo = (PasswordInfo) obj;
        return pe4.d(this.ssid, passwordInfo.ssid) && pe4.d(this.psk, passwordInfo.psk) && pe4.d(this.entEapMethod, passwordInfo.entEapMethod) && pe4.d(this.entPhase2Method, passwordInfo.entPhase2Method) && pe4.d(this.entIdentity, passwordInfo.entIdentity) && pe4.d(this.entAnonIdentity, passwordInfo.entAnonIdentity) && pe4.d(this.entPassword, passwordInfo.entPassword) && pe4.d(this.entCaCert, passwordInfo.entCaCert) && pe4.d(this._rawXmlNode, passwordInfo._rawXmlNode);
    }

    public final String getEntAnonIdentity() {
        return this.entAnonIdentity;
    }

    public final String getEntCaCert() {
        return this.entCaCert;
    }

    public final String getEntEapMethod() {
        return this.entEapMethod;
    }

    public final String getEntIdentity() {
        return this.entIdentity;
    }

    public final String getEntPassword() {
        return this.entPassword;
    }

    public final String getEntPhase2Method() {
        return this.entPhase2Method;
    }

    public final WifiEnterpriseConfig getEnterpriseConfig() {
        try {
            if (!hasValidEnterpriseDetails()) {
                return null;
            }
            WifiEnterpriseConfig wifiEnterpriseConfig = new WifiEnterpriseConfig();
            String str = this.entEapMethod;
            if (str != null) {
                wifiEnterpriseConfig.setEapMethod(Integer.parseInt(str));
            }
            String str2 = this.entPhase2Method;
            if (str2 != null) {
                wifiEnterpriseConfig.setPhase2Method(Integer.parseInt(str2));
            }
            String str3 = this.entIdentity;
            if (str3 != null) {
                wifiEnterpriseConfig.setIdentity(str3);
            }
            String str4 = this.entAnonIdentity;
            if (str4 != null) {
                wifiEnterpriseConfig.setAnonymousIdentity(str4);
            }
            String str5 = this.entPassword;
            if (str5 != null) {
                wifiEnterpriseConfig.setPassword(str5);
            }
            return wifiEnterpriseConfig;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, logTag, xs1.j("getEnterpriseConfig: ", e.getMessage()), null, 4, null);
            return null;
        }
    }

    public final String getPsk() {
        return this.psk;
    }

    public final String getSsid() {
        return this.ssid;
    }

    public final String get_rawXmlNode() {
        return this._rawXmlNode;
    }

    public final boolean hasValidEnterpriseDetails() {
        String str;
        String str2;
        String str3 = this.entIdentity;
        return (((str3 == null || str3.length() == 0) && ((str = this.entAnonIdentity) == null || str.length() == 0)) || (str2 = this.entPassword) == null || str2.length() == 0) ? false : true;
    }

    public int hashCode() {
        int iHashCode = this.ssid.hashCode() * 31;
        String str = this.psk;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.entEapMethod;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.entPhase2Method;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.entIdentity;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.entAnonIdentity;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.entPassword;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.entCaCert;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this._rawXmlNode;
        return iHashCode8 + (str8 != null ? str8.hashCode() : 0);
    }

    public final boolean isHiddenSsid() {
        String str = this._rawXmlNode;
        if (str != null) {
            Object obj = null;
            if (str.length() <= 0 || nq7.j0(str)) {
                str = null;
            }
            if (str != null) {
                for (Object obj2 : nq7.m0(str)) {
                    if (nq7.Z((String) obj2, "name=\"HiddenSSID\"", false)) {
                        obj = obj2;
                        break;
                    }
                }
                String str2 = (String) obj;
                if (str2 != null) {
                    return nq7.Z(str2, "value=\"true\"", false);
                }
            }
        }
        return false;
    }

    public final boolean isOpenNetwork() {
        return !hasValidPreSharedKey();
    }

    public final boolean isValid() {
        return true;
    }

    public final void setEntAnonIdentity(String str) {
        this.entAnonIdentity = str;
    }

    public final void setEntCaCert(String str) {
        this.entCaCert = str;
    }

    public final void setEntEapMethod(String str) {
        this.entEapMethod = str;
    }

    public final void setEntIdentity(String str) {
        this.entIdentity = str;
    }

    public final void setEntPassword(String str) {
        this.entPassword = str;
    }

    public final void setEntPhase2Method(String str) {
        this.entPhase2Method = str;
    }

    public final void setPsk(String str) {
        this.psk = str;
    }

    public final void setSsid(String str) {
        str.getClass();
        this.ssid = str;
    }

    public final void set_rawXmlNode(String str) {
        this._rawXmlNode = str;
    }

    public String toString() {
        String str = this.ssid;
        String str2 = this.psk;
        String str3 = this.entEapMethod;
        String str4 = this.entPhase2Method;
        String str5 = this.entIdentity;
        String str6 = this.entAnonIdentity;
        String str7 = this.entPassword;
        String str8 = this.entCaCert;
        String str9 = this._rawXmlNode;
        StringBuilder sbP = u48.p("PasswordInfo(ssid=", str, ", psk=", str2, ", entEapMethod=");
        xs1.t(sbP, str3, ", entPhase2Method=", str4, ", entIdentity=");
        xs1.t(sbP, str5, ", entAnonIdentity=", str6, ", entPassword=");
        xs1.t(sbP, str7, ", entCaCert=", str8, ", _rawXmlNode=");
        return dj7.n(sbP, str9, ")");
    }

    public PasswordInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        str.getClass();
        this.ssid = str;
        this.psk = str2;
        this.entEapMethod = str3;
        this.entPhase2Method = str4;
        this.entIdentity = str5;
        this.entAnonIdentity = str6;
        this.entPassword = str7;
        this.entCaCert = str8;
        this._rawXmlNode = str9;
    }
}
