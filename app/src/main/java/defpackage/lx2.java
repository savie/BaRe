package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum lx2 implements ad2 {
    /* JADX INFO: Fake field, exist only in values array */
    READ_ENUM_KEYS_USING_INDEX,
    WRITE_ENUMS_TO_LOWERCASE;

    public final int a = 1 << ordinal();

    lx2() {
    }

    @Override // defpackage.ah4
    public final boolean a(int i) {
        return (this.a & i) != 0;
    }

    @Override // defpackage.ad2
    public final int b() {
        return 0;
    }
}
