package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vz7 implements uq4 {
    public final tr9 a = new tr9(this, 10);

    @Override // defpackage.uq4
    public vb8 b() {
        return null;
    }

    @Override // defpackage.uq4
    public String[] g() {
        return new String[]{a(), getName()};
    }

    @Override // defpackage.uq4
    public Object getKey() {
        tr9 tr9Var = this.a;
        return ((vz7) tr9Var.b).h() ? tr9Var.d(2) : tr9Var.d(3);
    }

    @Override // defpackage.uq4
    public boolean h() {
        return this instanceof x70;
    }

    @Override // defpackage.uq4
    public boolean i() {
        return this instanceof ht2;
    }

    @Override // defpackage.uq4
    public boolean isInline() {
        return this instanceof j18;
    }

    @Override // defpackage.uq4
    public boolean j() {
        return this instanceof j18;
    }

    @Override // defpackage.uq4
    public vb8 l(Class cls) {
        return k();
    }

    @Override // defpackage.uq4
    public String[] m() {
        return new String[]{a()};
    }

    @Override // defpackage.uq4
    public boolean p() {
        return this instanceof o18;
    }

    @Override // defpackage.uq4
    public String r() {
        return null;
    }

    @Override // defpackage.uq4
    public boolean s() {
        return this instanceof kt2;
    }

    @Override // defpackage.uq4
    public uq4 n(Class cls) {
        return this;
    }
}
