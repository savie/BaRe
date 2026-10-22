package defpackage;

import java.util.BitSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.wifi.PasswordInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class et8 {
    public static final a Companion = new a(null);
    private static final String logTag = "WifiItem";
    private String SSID;
    private BitSet allowedGroupCiphers;
    private BitSet allowedKeyManagement;
    private BitSet allowedPairwiseCiphers;
    private BitSet allowedProtocols;
    private Boolean hiddenSSID;
    private PasswordInfo passwordInfo;
    private String preSharedKey;

    public /* synthetic */ et8(String str, String str2, Boolean bool, BitSet bitSet, BitSet bitSet2, BitSet bitSet3, BitSet bitSet4, PasswordInfo passwordInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : bool, (i & 8) != 0 ? null : bitSet, (i & 16) != 0 ? null : bitSet2, (i & 32) != 0 ? null : bitSet3, (i & 64) != 0 ? null : bitSet4, (i & 128) != 0 ? null : passwordInfo);
    }

    public static /* synthetic */ et8 copy$default(et8 et8Var, String str, String str2, Boolean bool, BitSet bitSet, BitSet bitSet2, BitSet bitSet3, BitSet bitSet4, PasswordInfo passwordInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = et8Var.SSID;
        }
        if ((i & 2) != 0) {
            str2 = et8Var.preSharedKey;
        }
        if ((i & 4) != 0) {
            bool = et8Var.hiddenSSID;
        }
        if ((i & 8) != 0) {
            bitSet = et8Var.allowedKeyManagement;
        }
        if ((i & 16) != 0) {
            bitSet2 = et8Var.allowedProtocols;
        }
        if ((i & 32) != 0) {
            bitSet3 = et8Var.allowedPairwiseCiphers;
        }
        if ((i & 64) != 0) {
            bitSet4 = et8Var.allowedGroupCiphers;
        }
        if ((i & 128) != 0) {
            passwordInfo = et8Var.passwordInfo;
        }
        BitSet bitSet5 = bitSet4;
        PasswordInfo passwordInfo2 = passwordInfo;
        BitSet bitSet6 = bitSet2;
        BitSet bitSet7 = bitSet3;
        return et8Var.copy(str, str2, bool, bitSet, bitSet6, bitSet7, bitSet5, passwordInfo2);
    }

    public final String component1() {
        return this.SSID;
    }

    public final String component2() {
        return this.preSharedKey;
    }

    public final Boolean component3() {
        return this.hiddenSSID;
    }

    public final BitSet component4() {
        return this.allowedKeyManagement;
    }

    public final BitSet component5() {
        return this.allowedProtocols;
    }

    public final BitSet component6() {
        return this.allowedPairwiseCiphers;
    }

    public final BitSet component7() {
        return this.allowedGroupCiphers;
    }

    public final PasswordInfo component8() {
        return this.passwordInfo;
    }

    public final et8 copy(String str, String str2, Boolean bool, BitSet bitSet, BitSet bitSet2, BitSet bitSet3, BitSet bitSet4, PasswordInfo passwordInfo) {
        str.getClass();
        return new et8(str, str2, bool, bitSet, bitSet2, bitSet3, bitSet4, passwordInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof et8)) {
            return false;
        }
        et8 et8Var = (et8) obj;
        return pe4.d(this.SSID, et8Var.SSID) && pe4.d(this.preSharedKey, et8Var.preSharedKey) && pe4.d(this.hiddenSSID, et8Var.hiddenSSID) && pe4.d(this.allowedKeyManagement, et8Var.allowedKeyManagement) && pe4.d(this.allowedProtocols, et8Var.allowedProtocols) && pe4.d(this.allowedPairwiseCiphers, et8Var.allowedPairwiseCiphers) && pe4.d(this.allowedGroupCiphers, et8Var.allowedGroupCiphers) && pe4.d(this.passwordInfo, et8Var.passwordInfo);
    }

    public final BitSet getAllowedGroupCiphers() {
        return this.allowedGroupCiphers;
    }

    public final BitSet getAllowedKeyManagement() {
        return this.allowedKeyManagement;
    }

    public final BitSet getAllowedPairwiseCiphers() {
        return this.allowedPairwiseCiphers;
    }

    public final BitSet getAllowedProtocols() {
        return this.allowedProtocols;
    }

    public final Boolean getHiddenSSID() {
        return this.hiddenSSID;
    }

    public final PasswordInfo getPasswordInfo() {
        return this.passwordInfo;
    }

    public final String getPreSharedKey() {
        return this.preSharedKey;
    }

    public final String getProperEnterprisePassword() {
        String entPassword;
        PasswordInfo passwordInfo = this.passwordInfo;
        String strT = (passwordInfo == null || (entPassword = passwordInfo.getEntPassword()) == null) ? null : uq7.T(vm4.E(entPassword), "\"", "");
        return strT == null ? "" : strT;
    }

    public final String getProperPreSharedKey() {
        String str = this.preSharedKey;
        String strT = str != null ? uq7.T(vm4.E(str), "\"", "") : null;
        return strT == null ? "" : strT;
    }

    public final String getSSID() {
        return this.SSID;
    }

    public final boolean hasValidEnterpriseDetails() {
        PasswordInfo passwordInfo = this.passwordInfo;
        return passwordInfo != null && passwordInfo.hasValidEnterpriseDetails();
    }

    public int hashCode() {
        int iHashCode = this.SSID.hashCode() * 31;
        String str = this.preSharedKey;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.hiddenSSID;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        BitSet bitSet = this.allowedKeyManagement;
        int iHashCode4 = (iHashCode3 + (bitSet == null ? 0 : bitSet.hashCode())) * 31;
        BitSet bitSet2 = this.allowedProtocols;
        int iHashCode5 = (iHashCode4 + (bitSet2 == null ? 0 : bitSet2.hashCode())) * 31;
        BitSet bitSet3 = this.allowedPairwiseCiphers;
        int iHashCode6 = (iHashCode5 + (bitSet3 == null ? 0 : bitSet3.hashCode())) * 31;
        BitSet bitSet4 = this.allowedGroupCiphers;
        int iHashCode7 = (iHashCode6 + (bitSet4 == null ? 0 : bitSet4.hashCode())) * 31;
        PasswordInfo passwordInfo = this.passwordInfo;
        return iHashCode7 + (passwordInfo != null ? passwordInfo.hashCode() : 0);
    }

    public final boolean isHiddenSsid() {
        Boolean bool = this.hiddenSSID;
        if (bool != null) {
            return bool.booleanValue();
        }
        PasswordInfo passwordInfo = this.passwordInfo;
        Boolean boolValueOf = passwordInfo != null ? Boolean.valueOf(passwordInfo.isHiddenSsid()) : null;
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    public final boolean isOpenNetwork() {
        String str;
        PasswordInfo passwordInfo = this.passwordInfo;
        return (passwordInfo != null && passwordInfo.isOpenNetwork()) || (str = this.preSharedKey) == null || str.length() == 0;
    }

    public final boolean isValid() {
        String str = this.SSID;
        return !(str == null || str.length() == 0);
    }

    public final void setAllowedGroupCiphers(BitSet bitSet) {
        this.allowedGroupCiphers = bitSet;
    }

    public final void setAllowedKeyManagement(BitSet bitSet) {
        this.allowedKeyManagement = bitSet;
    }

    public final void setAllowedPairwiseCiphers(BitSet bitSet) {
        this.allowedPairwiseCiphers = bitSet;
    }

    public final void setAllowedProtocols(BitSet bitSet) {
        this.allowedProtocols = bitSet;
    }

    public final void setHiddenSSID(Boolean bool) {
        this.hiddenSSID = bool;
    }

    public final void setPasswordInfo(PasswordInfo passwordInfo) {
        this.passwordInfo = passwordInfo;
    }

    public final void setPreSharedKey(String str) {
        this.preSharedKey = str;
    }

    public final void setSSID(String str) {
        str.getClass();
        this.SSID = str;
    }

    public String toString() {
        return xs1.j("WifiItem: SSID = ", this.SSID);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final et8 createForAndroidQ(PasswordInfo passwordInfo) {
            passwordInfo.getClass();
            return new et8(passwordInfo.getSsid(), passwordInfo.getPsk(), null, null, null, null, null, passwordInfo, 124, null);
        }

        private a() {
        }
    }

    public et8(String str, String str2, Boolean bool, BitSet bitSet, BitSet bitSet2, BitSet bitSet3, BitSet bitSet4, PasswordInfo passwordInfo) {
        str.getClass();
        this.SSID = str;
        this.preSharedKey = str2;
        this.hiddenSSID = bool;
        this.allowedKeyManagement = bitSet;
        this.allowedProtocols = bitSet2;
        this.allowedPairwiseCiphers = bitSet3;
        this.allowedGroupCiphers = bitSet4;
        this.passwordInfo = passwordInfo;
    }
}
