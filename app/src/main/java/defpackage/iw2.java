package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum iw2 {
    STRING(0),
    STRING_SET(1),
    INT(2),
    LONG(3),
    FLOAT(4),
    BOOLEAN(5);

    private final int id;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final hw2 Companion = new hw2();

    iw2(int i) {
        this.id = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getId() {
        return this.id;
    }
}
