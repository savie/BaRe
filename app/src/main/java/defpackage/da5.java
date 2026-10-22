package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum da5 {
    NONE(false),
    READ_SAFE(true),
    IDEMPOTENT_MUTATION(true);

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final boolean retriesNetworkFailures;

    da5(boolean z) {
        this.retriesNetworkFailures = z;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final boolean getRetriesNetworkFailures() {
        return this.retriesNetworkFailures;
    }
}
