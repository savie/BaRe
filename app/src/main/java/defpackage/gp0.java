package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gp0 implements oy4 {
    public final oy4 a;
    public int b = 0;
    public int c = -1;
    public int d = -1;
    public Object e = null;

    public gp0(oy4 oy4Var) {
        this.a = oy4Var;
    }

    @Override // defpackage.oy4
    public final void a(Object obj, int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.b == 3 && i <= (i4 = this.d + (i3 = this.c)) && (i5 = i + i2) >= i3 && this.e == obj) {
            this.c = Math.min(i, i3);
            this.d = Math.max(i4, i5) - this.c;
            return;
        }
        b();
        this.c = i;
        this.d = i2;
        this.e = obj;
        this.b = 3;
    }

    public final void b() {
        int i = this.b;
        if (i == 0) {
            return;
        }
        oy4 oy4Var = this.a;
        if (i == 1) {
            oy4Var.n(this.c, this.d);
        } else if (i == 2) {
            oy4Var.r(this.c, this.d);
        } else if (i == 3) {
            oy4Var.a(this.e, this.c, this.d);
        }
        this.e = null;
        this.b = 0;
    }

    @Override // defpackage.oy4
    public final void f(int i, int i2) {
        b();
        this.a.f(i, i2);
    }

    @Override // defpackage.oy4
    public final void n(int i, int i2) {
        int i3;
        if (this.b == 1 && i >= (i3 = this.c)) {
            int i4 = this.d;
            if (i <= i3 + i4) {
                this.d = i4 + i2;
                this.c = Math.min(i, i3);
                return;
            }
        }
        b();
        this.c = i;
        this.d = i2;
        this.b = 1;
    }

    @Override // defpackage.oy4
    public final void r(int i, int i2) {
        int i3;
        if (this.b == 2 && (i3 = this.c) >= i && i3 <= i + i2) {
            this.d += i2;
            this.c = i;
        } else {
            b();
            this.c = i;
            this.d = i2;
            this.b = 2;
        }
    }
}
