package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class k33 implements z61 {
    public static final k33 c = new k33("falcon-512", 9);
    public static final k33 d = new k33("falcon-1024", 10);
    public final String a;
    public final int b;

    public k33(String str, int i) {
        if (i < 1 || i > 10) {
            c6.f("Log N degree should be between 1 and 10");
            throw null;
        }
        this.a = str;
        this.b = i;
    }
}
