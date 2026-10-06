package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum ps6 implements sx2 {
    FILE_DIRECTORY_FILE(0),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_WRITE_THROUGH(1),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_SEQUENTIAL_ONLY(2),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_NO_INTERMEDIATE_BUFFERING(3),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_SYNCHRONOUS_IO_ALERT(4),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_SYNCHRONOUS_IO_NONALERT(5),
    FILE_NON_DIRECTORY_FILE(6),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_COMPLETE_IF_OPLOCKED(7),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_NO_EA_KNOWLEDGE(8),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_RANDOM_ACCESS(9),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_DELETE_ON_CLOSE(10),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_OPEN_BY_FILE_ID(11),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_OPEN_FOR_BACKUP_INTENT(12),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_NO_COMPRESSION(13),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_OPEN_REMOTE_INSTANCE(14),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_OPEN_REQUIRING_OPLOCK(15),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_DISALLOW_EXCLUSIVE(16),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_RESERVE_OPFILTER(17),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_OPEN_REPARSE_POINT(18),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_OPEN_NO_RECALL(19),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_OPEN_FOR_FREE_SPACE_QUERY(20);

    public final long a;

    ps6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
