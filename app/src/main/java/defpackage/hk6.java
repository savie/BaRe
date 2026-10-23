package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum hk6 {
    Loading,
    Success,
    Empty,
    DriveNotConnected,
    CloudError,
    NetworkError;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final boolean isEmpty() {
        return this == Empty;
    }

    public final boolean isError() {
        return this == DriveNotConnected || this == CloudError || this == NetworkError;
    }

    public final boolean isLoading() {
        return this == Loading;
    }
}
