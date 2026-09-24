package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gq2 extends cd {
    public final /* synthetic */ cd d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gq2(cd cdVar) {
        super(9);
        this.d = cdVar;
    }

    @Override // defpackage.cd
    public final Object e(oe oeVar) {
        Float f = (Float) this.d.e(oeVar);
        if (f == null) {
            return null;
        }
        return Float.valueOf(f.floatValue() * 2.55f);
    }
}
