package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v91 {
    public static final v91 a;
    public static final /* synthetic */ v91[] b;

    /* JADX INFO: Fake field, exist only in values array */
    v91 EF0;

    static {
        v91 v91Var = new v91("UNKNOWN", 0);
        v91 v91Var2 = new v91("ANDROID_FIREBASE", 1);
        a = v91Var2;
        b = new v91[]{v91Var, v91Var2};
    }

    public static v91 valueOf(String str) {
        return (v91) Enum.valueOf(v91.class, str);
    }

    public static v91[] values() {
        return (v91[]) b.clone();
    }
}
