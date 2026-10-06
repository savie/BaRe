package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum w63 implements sx2 {
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_ARCHIVE(0),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_COMPRESSED(1),
    FILE_ATTRIBUTE_DIRECTORY(2),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_ENCRYPTED(3),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_HIDDEN(4),
    FILE_ATTRIBUTE_NORMAL(5),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_NOT_CONTENT_INDEXED(6),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_OFFLINE(7),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_READONLY(8),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_REPARSE_POINT(9),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_SPARSE_FILE(10),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_SYSTEM(11),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_TEMPORARY(12),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_INTEGRITY_STREAM(13),
    /* JADX INFO: Fake field, exist only in values array */
    FILE_ATTRIBUTE_NO_SCRUB_DATA(14);

    public final long a;

    w63(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
