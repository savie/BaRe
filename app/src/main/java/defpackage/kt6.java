package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum kt6 implements sx2 {
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_FLAGS_SERVER_TO_REDIR(0),
    SMB2_FLAGS_ASYNC_COMMAND(1),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_FLAGS_RELATED_OPERATIONS(2),
    SMB2_FLAGS_SIGNED(3),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_FLAGS_PRIORITY_MASK(4),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_FLAGS_DFS_OPERATIONS(5),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_FLAGS_REPLAY_OPERATION(6);

    public final long a;

    kt6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
