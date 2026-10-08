package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum dl4 implements ad2 {
    /* JADX INFO: Fake field, exist only in values array */
    READ_NULL_PROPERTIES(true),
    /* JADX INFO: Fake field, exist only in values array */
    WRITE_NULL_PROPERTIES(true),
    /* JADX INFO: Fake field, exist only in values array */
    WRITE_PROPERTIES_SORTED(false),
    /* JADX INFO: Fake field, exist only in values array */
    STRIP_TRAILING_BIGDECIMAL_ZEROES(true),
    /* JADX INFO: Fake field, exist only in values array */
    FAIL_ON_NAN_TO_BIG_DECIMAL_COERCION(false),
    /* JADX INFO: Fake field, exist only in values array */
    USE_BIG_DECIMAL_FOR_FLOATS(false);

    public final boolean a;
    public final int b = 1 << ordinal();

    dl4(boolean z) {
        this.a = z;
    }

    @Override // defpackage.ah4
    public final boolean a(int i) {
        return (this.b & i) != 0;
    }

    @Override // defpackage.ad2
    public final int b() {
        return 1;
    }
}
