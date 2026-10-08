package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ls6 extends tt6 {
    @Override // defpackage.tt6
    public final void H(st6 st6Var) throws va8 {
        do {
            ((ol1) this.b).t(st6Var);
            try {
                st6Var = st6Var.d();
            } catch (iw0 e) {
                throw new va8("Missing compounded message data", e);
            }
        } while (st6Var != null);
    }

    @Override // defpackage.tt6, defpackage.ol1
    public final boolean c(ev6 ev6Var) {
        return (ev6Var instanceof st6) && ((ut6) ((st6) ev6Var).a).l != 0;
    }
}
