package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum z83 implements sx2 {
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_ADDED(0),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_REMOVED(1),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_MODIFIED(2),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_RENAMED_OLD_NAME(3),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_RENAMED_NEW_NAME(4),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_ADDED_STREAM(5),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_REMOVED_STREAM(6),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_MODIFIED_STREAM(7),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_REMOVED_BY_DELETE(8),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_ID_NOT_TUNNELLED(9),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ACTION_TUNNELLED_ID_COLLISION(10);

    public final long a;

    z83(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
