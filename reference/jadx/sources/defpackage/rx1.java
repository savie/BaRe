package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rx1 extends p3 implements mx1 {
    public static final qx1 b = new qx1(lv1.b, new gf1(2));

    public rx1() {
        super(lv1.b);
    }

    @Override // defpackage.p3, defpackage.ox1
    public final mx1 get(nx1 nx1Var) {
        mx1 mx1Var;
        nx1Var.getClass();
        if (nx1Var instanceof qx1) {
            qx1 qx1Var = (qx1) nx1Var;
            nx1 nx1Var2 = this.a;
            if ((nx1Var2 == qx1Var || qx1Var.b == nx1Var2) && (mx1Var = (mx1) qx1Var.a.invoke(this)) != null) {
                return mx1Var;
            }
        } else if (lv1.b == nx1Var) {
            return this;
        }
        return null;
    }

    public abstract void j(ox1 ox1Var, Runnable runnable);

    public boolean m(ox1 ox1Var) {
        return !(this instanceof sd8);
    }

    @Override // defpackage.p3, defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        nx1Var.getClass();
        if (nx1Var instanceof qx1) {
            qx1 qx1Var = (qx1) nx1Var;
            nx1 nx1Var2 = this.a;
            if ((nx1Var2 != qx1Var && qx1Var.b != nx1Var2) || ((mx1) qx1Var.a.invoke(this)) == null) {
                return this;
            }
        } else if (lv1.b != nx1Var) {
            return this;
        }
        return lv2.a;
    }

    public rx1 n(int i) {
        zm5.f(i);
        return new mu4(this, i);
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + od2.l(this);
    }
}
