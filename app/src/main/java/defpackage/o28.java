package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o28 implements v57 {
    public static final o28 a;
    public static final /* synthetic */ o28[] b;

    static {
        o28 o28Var = new o28("INSTANCE", 0);
        a = o28Var;
        b = new o28[]{o28Var};
    }

    public static o28 valueOf(String str) {
        return (o28) Enum.valueOf(o28.class, str);
    }

    public static o28[] values() {
        return (o28[]) b.clone();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }
}
