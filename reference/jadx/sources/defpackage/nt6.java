package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum nt6 implements sx2 {
    SMB2_PREAUTH_INTEGRITY_CAPABILITIES(0),
    SMB2_ENCRYPTION_CAPABILITIES(1),
    SMB2_COMPRESSION_CAPABILITIES(2),
    SMB2_NETNAME_NEGOTIATE_CONTEXT_ID(3);

    public final long a;

    nt6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
