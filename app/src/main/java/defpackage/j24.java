package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class j24 implements z61 {
    public static final j24 b = new j24("hqc-128", 17669);
    public static final j24 c = new j24("hqc-192", 35851);
    public static final j24 d = new j24("hqc-256", 57637);
    public final String a;

    public j24(String str, int i) {
        this.a = str;
        long j = 16777216 / ((long) i);
    }
}
