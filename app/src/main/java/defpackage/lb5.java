package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lb5 extends RuntimeException {
    public final boolean a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lb5(String str, RuntimeException runtimeException, int i) {
        super(str, (i & 4) != 0 ? null : runtimeException);
        boolean z = (i & 2) == 0;
        this.a = z;
    }
}
