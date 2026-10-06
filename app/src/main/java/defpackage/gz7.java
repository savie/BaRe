package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum gz7 {
    WAITING,
    RUNNING,
    COMPLETE,
    CANCELLED,
    CANCEL_COMPLETE;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    private final boolean checkInstance(gz7 gz7Var) {
        return this == gz7Var;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final boolean isCancelComplete() {
        return checkInstance(CANCEL_COMPLETE);
    }

    public final boolean isCancelled() {
        return checkInstance(CANCELLED) || checkInstance(CANCEL_COMPLETE);
    }

    public final boolean isCancelling() {
        return checkInstance(CANCELLED);
    }

    public final boolean isComplete() {
        return checkInstance(COMPLETE);
    }

    public final boolean isRunning() {
        return checkInstance(RUNNING);
    }

    public final boolean isWaiting() {
        return checkInstance(WAITING);
    }
}
