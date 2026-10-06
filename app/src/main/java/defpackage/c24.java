package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c24 extends pr8 {
    @Override // defpackage.ki2
    public final void a(ki2 ki2Var) {
        ni2 ni2Var = this.h;
        if (ni2Var.c && !ni2Var.j) {
            ni2Var.d((int) ((((ni2) ni2Var.l.get(0)).g * ((b24) this.b).q0) + 0.5f));
        }
    }

    @Override // defpackage.pr8
    public final void d() {
        ot1 ot1Var = this.b;
        b24 b24Var = (b24) ot1Var;
        int i = b24Var.r0;
        int i2 = b24Var.s0;
        int i3 = b24Var.u0;
        ni2 ni2Var = this.h;
        if (i3 == 1) {
            if (i != -1) {
                ni2Var.l.add(ot1Var.T.d.h);
                this.b.T.d.h.k.add(ni2Var);
                ni2Var.f = i;
            } else if (i2 != -1) {
                ni2Var.l.add(ot1Var.T.d.i);
                this.b.T.d.i.k.add(ni2Var);
                ni2Var.f = -i2;
            } else {
                ni2Var.b = true;
                ni2Var.l.add(ot1Var.T.d.i);
                this.b.T.d.i.k.add(ni2Var);
            }
            m(this.b.d.h);
            m(this.b.d.i);
            return;
        }
        if (i != -1) {
            ni2Var.l.add(ot1Var.T.e.h);
            this.b.T.e.h.k.add(ni2Var);
            ni2Var.f = i;
        } else if (i2 != -1) {
            ni2Var.l.add(ot1Var.T.e.i);
            this.b.T.e.i.k.add(ni2Var);
            ni2Var.f = -i2;
        } else {
            ni2Var.b = true;
            ni2Var.l.add(ot1Var.T.e.i);
            this.b.T.e.i.k.add(ni2Var);
        }
        m(this.b.e.h);
        m(this.b.e.i);
    }

    @Override // defpackage.pr8
    public final void e() {
        ot1 ot1Var = this.b;
        int i = ((b24) ot1Var).u0;
        ni2 ni2Var = this.h;
        if (i == 1) {
            ot1Var.Y = ni2Var.g;
        } else {
            ot1Var.Z = ni2Var.g;
        }
    }

    @Override // defpackage.pr8
    public final void f() {
        this.h.c();
    }

    @Override // defpackage.pr8
    public final boolean k() {
        return false;
    }

    public final void m(ni2 ni2Var) {
        ni2 ni2Var2 = this.h;
        ni2Var2.k.add(ni2Var);
        ni2Var.l.add(ni2Var2);
    }
}
