package defpackage;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mm5 {
    public static final SparseArray a;
    public static final /* synthetic */ mm5[] b;

    /* JADX INFO: Fake field, exist only in values array */
    mm5 EF1;

    static {
        mm5 mm5Var = new mm5("MOBILE", 0);
        mm5 mm5Var2 = new mm5("WIFI", 1);
        mm5 mm5Var3 = new mm5("MOBILE_MMS", 2);
        mm5 mm5Var4 = new mm5("MOBILE_SUPL", 3);
        mm5 mm5Var5 = new mm5("MOBILE_DUN", 4);
        mm5 mm5Var6 = new mm5("MOBILE_HIPRI", 5);
        mm5 mm5Var7 = new mm5("WIMAX", 6);
        mm5 mm5Var8 = new mm5("BLUETOOTH", 7);
        mm5 mm5Var9 = new mm5("DUMMY", 8);
        mm5 mm5Var10 = new mm5("ETHERNET", 9);
        mm5 mm5Var11 = new mm5("MOBILE_FOTA", 10);
        mm5 mm5Var12 = new mm5("MOBILE_IMS", 11);
        mm5 mm5Var13 = new mm5("MOBILE_CBS", 12);
        mm5 mm5Var14 = new mm5("WIFI_P2P", 13);
        mm5 mm5Var15 = new mm5("MOBILE_IA", 14);
        mm5 mm5Var16 = new mm5("MOBILE_EMERGENCY", 15);
        mm5 mm5Var17 = new mm5("PROXY", 16);
        mm5 mm5Var18 = new mm5("VPN", 17);
        mm5 mm5Var19 = new mm5("NONE", 18);
        b = new mm5[]{mm5Var, mm5Var2, mm5Var3, mm5Var4, mm5Var5, mm5Var6, mm5Var7, mm5Var8, mm5Var9, mm5Var10, mm5Var11, mm5Var12, mm5Var13, mm5Var14, mm5Var15, mm5Var16, mm5Var17, mm5Var18, mm5Var19};
        SparseArray sparseArray = new SparseArray();
        a = sparseArray;
        sparseArray.put(0, mm5Var);
        sparseArray.put(1, mm5Var2);
        sparseArray.put(2, mm5Var3);
        sparseArray.put(3, mm5Var4);
        sparseArray.put(4, mm5Var5);
        sparseArray.put(5, mm5Var6);
        sparseArray.put(6, mm5Var7);
        sparseArray.put(7, mm5Var8);
        sparseArray.put(8, mm5Var9);
        sparseArray.put(9, mm5Var10);
        sparseArray.put(10, mm5Var11);
        sparseArray.put(11, mm5Var12);
        sparseArray.put(12, mm5Var13);
        sparseArray.put(13, mm5Var14);
        sparseArray.put(14, mm5Var15);
        sparseArray.put(15, mm5Var16);
        sparseArray.put(16, mm5Var17);
        sparseArray.put(17, mm5Var18);
        sparseArray.put(-1, mm5Var19);
    }

    public static mm5 valueOf(String str) {
        return (mm5) Enum.valueOf(mm5.class, str);
    }

    public static mm5[] values() {
        return (mm5[]) b.clone();
    }
}
