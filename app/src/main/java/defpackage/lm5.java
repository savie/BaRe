package defpackage;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lm5 {
    public static final SparseArray a;
    public static final /* synthetic */ lm5[] b;

    /* JADX INFO: Fake field, exist only in values array */
    lm5 EF1;

    static {
        lm5 lm5Var = new lm5("UNKNOWN_MOBILE_SUBTYPE", 0);
        lm5 lm5Var2 = new lm5("GPRS", 1);
        lm5 lm5Var3 = new lm5("EDGE", 2);
        lm5 lm5Var4 = new lm5("UMTS", 3);
        lm5 lm5Var5 = new lm5("CDMA", 4);
        lm5 lm5Var6 = new lm5("EVDO_0", 5);
        lm5 lm5Var7 = new lm5("EVDO_A", 6);
        lm5 lm5Var8 = new lm5("RTT", 7);
        lm5 lm5Var9 = new lm5("HSDPA", 8);
        lm5 lm5Var10 = new lm5("HSUPA", 9);
        lm5 lm5Var11 = new lm5("HSPA", 10);
        lm5 lm5Var12 = new lm5("IDEN", 11);
        lm5 lm5Var13 = new lm5("EVDO_B", 12);
        lm5 lm5Var14 = new lm5("LTE", 13);
        lm5 lm5Var15 = new lm5("EHRPD", 14);
        lm5 lm5Var16 = new lm5("HSPAP", 15);
        lm5 lm5Var17 = new lm5("GSM", 16);
        lm5 lm5Var18 = new lm5("TD_SCDMA", 17);
        lm5 lm5Var19 = new lm5("IWLAN", 18);
        lm5 lm5Var20 = new lm5("LTE_CA", 19);
        b = new lm5[]{lm5Var, lm5Var2, lm5Var3, lm5Var4, lm5Var5, lm5Var6, lm5Var7, lm5Var8, lm5Var9, lm5Var10, lm5Var11, lm5Var12, lm5Var13, lm5Var14, lm5Var15, lm5Var16, lm5Var17, lm5Var18, lm5Var19, lm5Var20, new lm5("COMBINED", 20)};
        SparseArray sparseArray = new SparseArray();
        a = sparseArray;
        sparseArray.put(0, lm5Var);
        sparseArray.put(1, lm5Var2);
        sparseArray.put(2, lm5Var3);
        sparseArray.put(3, lm5Var4);
        sparseArray.put(4, lm5Var5);
        sparseArray.put(5, lm5Var6);
        sparseArray.put(6, lm5Var7);
        sparseArray.put(7, lm5Var8);
        sparseArray.put(8, lm5Var9);
        sparseArray.put(9, lm5Var10);
        sparseArray.put(10, lm5Var11);
        sparseArray.put(11, lm5Var12);
        sparseArray.put(12, lm5Var13);
        sparseArray.put(13, lm5Var14);
        sparseArray.put(14, lm5Var15);
        sparseArray.put(15, lm5Var16);
        sparseArray.put(16, lm5Var17);
        sparseArray.put(17, lm5Var18);
        sparseArray.put(18, lm5Var19);
        sparseArray.put(19, lm5Var20);
    }

    public static lm5 valueOf(String str) {
        return (lm5) Enum.valueOf(lm5.class, str);
    }

    public static lm5[] values() {
        return (lm5[]) b.clone();
    }
}
