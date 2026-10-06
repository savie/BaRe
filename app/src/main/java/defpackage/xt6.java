package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum xt6 implements sx2 {
    SMB2_RESTART_SCANS(0),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_RETURN_SINGLE_ENTRY(1),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_INDEX_SPECIFIED(2),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_REOPEN(3);

    public final long a;

    xt6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
