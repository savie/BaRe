package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum it6 {
    SMB2_NEGOTIATE(0),
    SMB2_SESSION_SETUP(1),
    SMB2_LOGOFF(2),
    SMB2_TREE_CONNECT(3),
    SMB2_TREE_DISCONNECT(4),
    SMB2_CREATE(5),
    SMB2_CLOSE(6),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_FLUSH(7),
    SMB2_READ(8),
    SMB2_WRITE(9),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_LOCK(10),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_IOCTL(11),
    SMB2_CANCEL(12),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_ECHO(13),
    SMB2_QUERY_DIRECTORY(14),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_CHANGE_NOTIFY(15),
    SMB2_QUERY_INFO(16),
    SMB2_SET_INFO(17),
    SMB2_OPLOCK_BREAK(18);

    public static final it6[] H = new it6[19];
    public final int a;

    static {
        for (it6 it6Var : values()) {
            H[it6Var.a] = it6Var;
        }
    }

    it6(int i) {
        this.a = i;
    }
}
