package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum fu6 implements sx2 {
    SMB2_SESSION_FLAG_IS_GUEST(0),
    SMB2_SESSION_FLAG_IS_NULL(1),
    SMB2_SESSION_FLAG_ENCRYPT_DATA(2);

    public final long a;

    fu6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
