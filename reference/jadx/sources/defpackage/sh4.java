package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sh4 extends v05 implements in2, fb4 {
    public ci4 k;

    @Override // defpackage.fb4
    public final wn5 b() {
        return null;
    }

    @Override // defpackage.in2
    public final void dispose() {
        o().P(this);
    }

    public oh4 getParent() {
        return o();
    }

    @Override // defpackage.fb4
    public final boolean isActive() {
        return true;
    }

    public final ci4 o() {
        ci4 ci4Var = this.k;
        if (ci4Var != null) {
            return ci4Var;
        }
        pe4.F("job");
        throw null;
    }

    public abstract boolean p();

    public abstract void q(Throwable th);

    @Override // defpackage.v05
    public final String toString() {
        return getClass().getSimpleName() + '@' + od2.l(this) + "[job@" + od2.l(o()) + ']';
    }
}
