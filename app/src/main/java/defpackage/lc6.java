package defpackage;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lc6 {
    public static final lc6 a;
    public static final /* synthetic */ lc6[] b;

    static {
        lc6 lc6Var = new lc6("DEFAULT", 0);
        a = lc6Var;
        lc6 lc6Var2 = new lc6("UNMETERED_ONLY", 1);
        lc6 lc6Var3 = new lc6("UNMETERED_OR_DAILY", 2);
        lc6 lc6Var4 = new lc6("FAST_IF_RADIO_AWAKE", 3);
        lc6 lc6Var5 = new lc6("NEVER", 4);
        lc6 lc6Var6 = new lc6("UNRECOGNIZED", 5);
        b = new lc6[]{lc6Var, lc6Var2, lc6Var3, lc6Var4, lc6Var5, lc6Var6};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, lc6Var);
        sparseArray.put(1, lc6Var2);
        sparseArray.put(2, lc6Var3);
        sparseArray.put(3, lc6Var4);
        sparseArray.put(4, lc6Var5);
        sparseArray.put(-1, lc6Var6);
    }

    public static lc6 valueOf(String str) {
        return (lc6) Enum.valueOf(lc6.class, str);
    }

    public static lc6[] values() {
        return (lc6[]) b.clone();
    }
}
