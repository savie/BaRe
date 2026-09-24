package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kn1 implements jv1 {
    public static final kn1 a = new kn1();

    @Override // defpackage.jv1
    public final ox1 getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override // defpackage.jv1
    public final void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    public final String toString() {
        return "This continuation is already complete";
    }
}
