package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x96 implements zi8 {
    public boolean a = false;
    public boolean b = false;
    public h63 c;
    public final v96 d;

    public x96(v96 v96Var) {
        this.d = v96Var;
    }

    @Override // defpackage.zi8
    public final zi8 b(String str) {
        if (this.a) {
            throw new fw2("Cannot encode a second value in the ValueEncoderContext");
        }
        this.a = true;
        this.d.i(this.c, str, this.b);
        return this;
    }

    @Override // defpackage.zi8
    public final zi8 c(boolean z) {
        if (this.a) {
            throw new fw2("Cannot encode a second value in the ValueEncoderContext");
        }
        this.a = true;
        this.d.c(this.c, z ? 1 : 0, this.b);
        return this;
    }
}
