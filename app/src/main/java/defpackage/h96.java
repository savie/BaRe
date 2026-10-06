package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h96 extends od2 {
    public final Class i;
    public final em4 j;

    public h96(od2 od2Var, Class cls, em4 em4Var) {
        this.i = cls;
        this.j = em4Var;
    }

    @Override // defpackage.od2
    public final od2 s(Class cls, em4 em4Var) {
        return new e96(this, this.i, this.j, cls, em4Var);
    }

    @Override // defpackage.od2
    public final em4 x(Class cls) {
        if (cls == this.i) {
            return this.j;
        }
        return null;
    }
}
