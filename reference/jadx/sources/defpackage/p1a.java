package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p1a {
    public static final p1a a;
    public static final p1a b;
    public static final p1a c;
    public static final /* synthetic */ p1a[] d;

    static {
        p1a p1aVar = new p1a("NIST_P256", 0);
        a = p1aVar;
        p1a p1aVar2 = new p1a("NIST_P384", 1);
        b = p1aVar2;
        p1a p1aVar3 = new p1a("NIST_P521", 2);
        c = p1aVar3;
        d = new p1a[]{p1aVar, p1aVar2, p1aVar3};
    }

    public static p1a[] values() {
        return (p1a[]) d.clone();
    }
}
