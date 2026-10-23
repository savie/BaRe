package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum eu6 implements sx2 {
    SMB2_NEGOTIATE_SIGNING_ENABLED(0),
    SMB2_NEGOTIATE_SIGNING_REQUIRED(1);

    public final long a;

    eu6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
