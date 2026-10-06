package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r1a {
    public static final r1a a;
    public static final r1a b;
    public static final r1a c;
    public static final /* synthetic */ r1a[] d;

    static {
        r1a r1aVar = new r1a("UNCOMPRESSED", 0);
        a = r1aVar;
        r1a r1aVar2 = new r1a("COMPRESSED", 1);
        b = r1aVar2;
        r1a r1aVar3 = new r1a("DO_NOT_USE_CRUNCHY_UNCOMPRESSED", 2);
        c = r1aVar3;
        d = new r1a[]{r1aVar, r1aVar2, r1aVar3};
    }

    public static r1a[] values() {
        return (r1a[]) d.clone();
    }
}
