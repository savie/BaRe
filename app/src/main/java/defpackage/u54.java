package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum u54 {
    SHORTCUTS(0),
    APPS(1),
    FOLDERS(2),
    QUICK_ACTIONS(3);

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final int order;

    u54(int i) {
        this.order = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getOrder() {
        return this.order;
    }
}
