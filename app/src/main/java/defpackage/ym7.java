package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum ym7 {
    LOADING,
    DATA_RECEIVED,
    DATA_EMPTY,
    DATA_EMPTY_AFTER_FILTER,
    DATA_ERROR,
    PERMISSION_ERROR,
    CONNECTION_ERROR,
    NO_LOGIN;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final boolean isError() {
        return (this == LOADING || this == DATA_RECEIVED) ? false : true;
    }

    public final boolean isLoading() {
        return this == LOADING;
    }
}
