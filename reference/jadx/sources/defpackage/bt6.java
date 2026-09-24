package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum bt6 implements sx2 {
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_GLOBAL_CAP_DFS(0),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_GLOBAL_CAP_LEASING(1),
    SMB2_GLOBAL_CAP_LARGE_MTU(2),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_GLOBAL_CAP_MULTI_CHANNEL(3),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_GLOBAL_CAP_PERSISTENT_HANDLES(4),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_GLOBAL_CAP_DIRECTORY_LEASING(5),
    SMB2_GLOBAL_CAP_ENCRYPTION(6);

    public final long a;

    bt6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
