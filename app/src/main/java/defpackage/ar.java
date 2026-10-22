package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum ar {
    UNKNOWN(-999),
    STATUS_PENDING_USER_ACTION(-1),
    STATUS_SUCCESS(0),
    STATUS_FAILURE(1),
    STATUS_FAILURE_BLOCKED(2),
    STATUS_FAILURE_ABORTED(3),
    STATUS_FAILURE_INVALID(4),
    STATUS_FAILURE_CONFLICT(5),
    STATUS_FAILURE_STORAGE(6),
    STATUS_FAILURE_INCOMPATIBLE(7);

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final int code;

    ar(int i) {
        this.code = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getCode() {
        return this.code;
    }

    @Override // java.lang.Enum
    public String toString() {
        return super.toString() + "(" + this.code + ")";
    }
}
