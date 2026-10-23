package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum ku6 implements sx2 {
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHARE_CAP_DFS(0),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHARE_CAP_CONTINUOUS_AVAILABILITY(1),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHARE_CAP_SCALEOUT(2),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHARE_CAP_CLUSTER(3),
    SMB2_SHARE_CAP_ASYMMETRIC(4);

    public final long a;

    ku6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
