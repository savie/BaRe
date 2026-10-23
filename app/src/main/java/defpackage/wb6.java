package defpackage;

import android.text.TextUtils;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wb6 {
    public static final a Companion = new a(null);
    private String accountId;
    private Boolean autoRenewing;
    private Boolean isAcknowledged;
    private String orderId;
    private String packageName;
    private Integer purchaseState;
    private Long purchaseTime;
    private String purchaseToken;
    private String signature;
    private String sku;
    private Long verificationTime;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum b {
        UNSPECIFIED_STATE(0),
        PURCHASED(1),
        PENDING(2);

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
        private final int code;

        b(int i) {
            this.code = i;
        }

        public static jx2 getEntries() {
            return $ENTRIES;
        }

        public final int getCode() {
            return this.code;
        }
    }

    public /* synthetic */ wb6(String str, String str2, String str3, String str4, String str5, Long l, Integer num, Boolean bool, String str6, Boolean bool2, Long l2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : l, (i & 64) != 0 ? null : num, (i & 128) != 0 ? null : bool, (i & 256) != 0 ? null : str6, (i & 512) != 0 ? null : bool2, (i & 1024) != 0 ? null : l2);
    }

    public static /* synthetic */ wb6 copy$default(wb6 wb6Var, String str, String str2, String str3, String str4, String str5, Long l, Integer num, Boolean bool, String str6, Boolean bool2, Long l2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wb6Var.orderId;
        }
        if ((i & 2) != 0) {
            str2 = wb6Var.packageName;
        }
        if ((i & 4) != 0) {
            str3 = wb6Var.sku;
        }
        if ((i & 8) != 0) {
            str4 = wb6Var.purchaseToken;
        }
        if ((i & 16) != 0) {
            str5 = wb6Var.signature;
        }
        if ((i & 32) != 0) {
            l = wb6Var.purchaseTime;
        }
        if ((i & 64) != 0) {
            num = wb6Var.purchaseState;
        }
        if ((i & 128) != 0) {
            bool = wb6Var.autoRenewing;
        }
        if ((i & 256) != 0) {
            str6 = wb6Var.accountId;
        }
        if ((i & 512) != 0) {
            bool2 = wb6Var.isAcknowledged;
        }
        if ((i & 1024) != 0) {
            l2 = wb6Var.verificationTime;
        }
        Boolean bool3 = bool2;
        Long l3 = l2;
        Boolean bool4 = bool;
        String str7 = str6;
        Long l4 = l;
        Integer num2 = num;
        String str8 = str5;
        String str9 = str3;
        return wb6Var.copy(str, str2, str9, str4, str8, l4, num2, bool4, str7, bool3, l3);
    }

    public final String component1() {
        return this.orderId;
    }

    public final Boolean component10() {
        return this.isAcknowledged;
    }

    public final Long component11() {
        return this.verificationTime;
    }

    public final String component2() {
        return this.packageName;
    }

    public final String component3() {
        return this.sku;
    }

    public final String component4() {
        return this.purchaseToken;
    }

    public final String component5() {
        return this.signature;
    }

    public final Long component6() {
        return this.purchaseTime;
    }

    public final Integer component7() {
        return this.purchaseState;
    }

    public final Boolean component8() {
        return this.autoRenewing;
    }

    public final String component9() {
        return this.accountId;
    }

    public final wb6 copy(String str, String str2, String str3, String str4, String str5, Long l, Integer num, Boolean bool, String str6, Boolean bool2, Long l2) {
        str3.getClass();
        str4.getClass();
        return new wb6(str, str2, str3, str4, str5, l, num, bool, str6, bool2, l2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wb6)) {
            return false;
        }
        wb6 wb6Var = (wb6) obj;
        return pe4.d(this.orderId, wb6Var.orderId) && pe4.d(this.packageName, wb6Var.packageName) && pe4.d(this.sku, wb6Var.sku) && pe4.d(this.purchaseToken, wb6Var.purchaseToken) && pe4.d(this.signature, wb6Var.signature) && pe4.d(this.purchaseTime, wb6Var.purchaseTime) && pe4.d(this.purchaseState, wb6Var.purchaseState) && pe4.d(this.autoRenewing, wb6Var.autoRenewing) && pe4.d(this.accountId, wb6Var.accountId) && pe4.d(this.isAcknowledged, wb6Var.isAcknowledged) && pe4.d(this.verificationTime, wb6Var.verificationTime);
    }

    public final String getAccountId() {
        return this.accountId;
    }

    public final Boolean getAutoRenewing() {
        return this.autoRenewing;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final Integer getPurchaseState() {
        return this.purchaseState;
    }

    @jz2
    public final b getPurchaseStateEnum() {
        Object next;
        Iterator<E> it = b.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            int code = ((b) next).getCode();
            Integer num = this.purchaseState;
            if (num != null && code == num.intValue()) {
                break;
            }
        }
        b bVar = (b) next;
        return bVar == null ? b.UNSPECIFIED_STATE : bVar;
    }

    public final Long getPurchaseTime() {
        return this.purchaseTime;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final String getSignature() {
        return this.signature;
    }

    public final String getSku() {
        return this.sku;
    }

    public final Long getVerificationTime() {
        return this.verificationTime;
    }

    public int hashCode() {
        String str = this.orderId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.packageName;
        int iG = fz5.g(fz5.g((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.sku), 31, this.purchaseToken);
        String str3 = this.signature;
        int iHashCode2 = (iG + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l = this.purchaseTime;
        int iHashCode3 = (iHashCode2 + (l == null ? 0 : l.hashCode())) * 31;
        Integer num = this.purchaseState;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.autoRenewing;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.accountId;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool2 = this.isAcknowledged;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Long l2 = this.verificationTime;
        return iHashCode7 + (l2 != null ? l2.hashCode() : 0);
    }

    public final Boolean isAcknowledged() {
        return this.isAcknowledged;
    }

    @jz2
    public final boolean isSpoofedOrderId() {
        String str = this.orderId;
        if (str == null || str.length() == 0 || nq7.j0(str)) {
            return false;
        }
        return !uq7.V(str, "GPA", false);
    }

    public final void setAccountId(String str) {
        this.accountId = str;
    }

    public final void setAcknowledged(Boolean bool) {
        this.isAcknowledged = bool;
    }

    public final void setAutoRenewing(Boolean bool) {
        this.autoRenewing = bool;
    }

    public final void setOrderId(String str) {
        this.orderId = str;
    }

    public final void setPackageName(String str) {
        this.packageName = str;
    }

    public final void setPurchaseState(Integer num) {
        this.purchaseState = num;
    }

    public final void setPurchaseTime(Long l) {
        this.purchaseTime = l;
    }

    public final void setPurchaseToken(String str) {
        str.getClass();
        this.purchaseToken = str;
    }

    public final void setSignature(String str) {
        this.signature = str;
    }

    public final void setSku(String str) {
        str.getClass();
        this.sku = str;
    }

    public final void setVerificationTime(Long l) {
        this.verificationTime = l;
    }

    public String toString() {
        String str = this.orderId;
        String str2 = this.packageName;
        String str3 = this.sku;
        String str4 = this.purchaseToken;
        String str5 = this.signature;
        Long l = this.purchaseTime;
        Integer num = this.purchaseState;
        Boolean bool = this.autoRenewing;
        String str6 = this.accountId;
        Boolean bool2 = this.isAcknowledged;
        Long l2 = this.verificationTime;
        StringBuilder sbP = u48.p("PurchaseInfo(orderId=", str, ", packageName=", str2, ", sku=");
        xs1.t(sbP, str3, ", purchaseToken=", str4, ", signature=");
        sbP.append(str5);
        sbP.append(", purchaseTime=");
        sbP.append(l);
        sbP.append(", purchaseState=");
        sbP.append(num);
        sbP.append(", autoRenewing=");
        sbP.append(bool);
        sbP.append(", accountId=");
        sbP.append(str6);
        sbP.append(", isAcknowledged=");
        sbP.append(bool2);
        sbP.append(", verificationTime=");
        sbP.append(l2);
        sbP.append(")");
        return sbP.toString();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: renamed from: default, reason: not valid java name */
        public final wb6 m78default() {
            return new wb6(null, null, null, null, null, null, null, null, null, null, Long.valueOf(System.currentTimeMillis()), 1023, null);
        }

        public final wb6 from(Purchase purchase) {
            purchase.getClass();
            JSONObject jSONObject = purchase.c;
            String strOptString = jSONObject.optString("orderId");
            if (TextUtils.isEmpty(strOptString)) {
                strOptString = null;
            }
            String str = io4.f(strOptString) ? strOptString : null;
            String strOptString2 = jSONObject.optString("packageName");
            String str2 = io4.f(strOptString2) ? strOptString2 : null;
            Object objS0 = el1.S0(purchase.a());
            objS0.getClass();
            String str3 = (String) objS0;
            long jOptLong = jSONObject.optLong("purchaseTime");
            int i = jSONObject.optInt("purchaseState", 1) != 4 ? 1 : 2;
            String strOptString3 = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
            strOptString3.getClass();
            Boolean boolValueOf = !pe4.d(el1.S0(purchase.a()), "lifetime") ? Boolean.valueOf(jSONObject.optBoolean("autoRenewing")) : null;
            String str4 = purchase.b;
            if (!io4.f(str4)) {
                str4 = null;
            }
            String strOptString4 = jSONObject.optString("obfuscatedAccountId");
            lh9 lh9Var = (strOptString4 == null && jSONObject.optString("obfuscatedProfileId") == null) ? null : new lh9(strOptString4, 1);
            String str5 = lh9Var != null ? lh9Var.b : null;
            return new wb6(str, str2, str3, strOptString3, str4, Long.valueOf(jOptLong), Integer.valueOf(i), boolValueOf, io4.f(str5) ? str5 : null, Boolean.valueOf(jSONObject.optBoolean("acknowledged", true)), null);
        }

        private a() {
        }

        public final wb6 from(PurchaseHistoryRecord purchaseHistoryRecord) {
            throw null;
        }
    }

    public wb6(String str, String str2, String str3, String str4, String str5, Long l, Integer num, Boolean bool, String str6, Boolean bool2, Long l2) {
        str3.getClass();
        str4.getClass();
        this.orderId = str;
        this.packageName = str2;
        this.sku = str3;
        this.purchaseToken = str4;
        this.signature = str5;
        this.purchaseTime = l;
        this.purchaseState = num;
        this.autoRenewing = bool;
        this.accountId = str6;
        this.isAcknowledged = bool2;
        this.verificationTime = l2;
    }

    public wb6() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }
}
