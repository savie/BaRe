package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum s5 implements sx2 {
    /* JADX INFO: Fake field, exist only in values array */
    GENERIC_ALL(0),
    /* JADX INFO: Fake field, exist only in values array */
    GENERIC_EXECUTE(1),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_EXECUTE(2),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_EXECUTE(3),
    FILE_LIST_DIRECTORY(4),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_WRITE_EA(5),
    FILE_ADD_SUBDIRECTORY(6),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_TRAVERSE(7),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_DELETE_CHILD(8),
    FILE_READ_ATTRIBUTES(9),
    FILE_WRITE_ATTRIBUTES(10),
    FILE_READ_EA(11),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_WRITE_EA(12),
    DELETE(13),
    /* JADX INFO: Fake field, exist only in values array */
    READ_CONTROL(14),
    /* JADX INFO: Fake field, exist only in values array */
    GENERIC_EXECUTE(15),
    /* JADX INFO: Fake field, exist only in values array */
    GENERIC_ALL(16),
    /* JADX INFO: Fake field, exist only in values array */
    GENERIC_EXECUTE(17),
    /* JADX INFO: Fake field, exist only in values array */
    GENERIC_ALL(18),
    MAXIMUM_ALLOWED(19),
    /* JADX INFO: Fake field, exist only in values array */
    GENERIC_ALL(20),
    /* JADX INFO: Fake field, exist only in values array */
    GENERIC_EXECUTE(21),
    GENERIC_WRITE(22),
    GENERIC_READ(23),
    /* JADX INFO: Fake field, exist only in values array */
    ADS_RIGHT_DS_CONTROL_ACCESS(24),
    /* JADX INFO: Fake field, exist only in values array */
    ADS_RIGHT_DS_CREATE_CHILD(25),
    /* JADX INFO: Fake field, exist only in values array */
    ADS_RIGHT_DS_DELETE_CHILD(26),
    /* JADX INFO: Fake field, exist only in values array */
    ADS_RIGHT_DS_READ_PROP(27),
    /* JADX INFO: Fake field, exist only in values array */
    ADS_RIGHT_DS_WRITE_PROP(28),
    /* JADX INFO: Fake field, exist only in values array */
    ADS_RIGHT_DS_SELF(29);

    public final long a;

    s5(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
