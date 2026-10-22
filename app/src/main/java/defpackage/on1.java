package defpackage;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class on1 {
    public static final on1 a;
    public static final /* synthetic */ on1[] b;

    /* JADX INFO: Fake field, exist only in values array */
    on1 EF0;

    static {
        on1 on1Var = new on1("NOT_SET", 0);
        on1 on1Var2 = new on1("EVENT_OVERRIDE", 1);
        a = on1Var2;
        b = new on1[]{on1Var, on1Var2};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, on1Var);
        sparseArray.put(5, on1Var2);
    }

    public static on1 valueOf(String str) {
        return (on1) Enum.valueOf(on1.class, str);
    }

    public static on1[] values() {
        return (on1[]) b.clone();
    }
}
