package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s1a {
    public static final s1a b = new s1a(new nh4(21));
    public static final s1a c = new s1a(new q34(24));
    public static final s1a d;
    public static final s1a e;
    public static final s1a f;
    public final t1a a;

    static {
        new s1a(new lv1(26));
        new s1a(new fk8(10));
        d = new s1a(new hx0(26));
        e = new s1a(new ma2(29));
        f = new s1a(new ns0(28));
    }

    public s1a(y1a y1aVar) {
        if (po9.a()) {
            this.a = new z28(y1aVar, 22);
        } else if ("The Android Project".equals(System.getProperty("java.vendor"))) {
            this.a = new ln5(y1aVar, 18);
        } else {
            this.a = new jq6(y1aVar, 24);
        }
    }
}
