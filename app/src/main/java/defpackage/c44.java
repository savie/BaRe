package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c44 extends pr8 {
    @Override // defpackage.ki2
    public final void a(ki2 ki2Var) {
        al0 al0Var = (al0) this.b;
        int i = al0Var.s0;
        ni2 ni2Var = this.h;
        Iterator it = ni2Var.l.iterator();
        int i2 = 0;
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = ((ni2) it.next()).g;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (i == 0 || i == 2) {
            ni2Var.d(i3 + al0Var.u0);
        } else {
            ni2Var.d(i2 + al0Var.u0);
        }
    }

    @Override // defpackage.pr8
    public final void d() {
        ot1 ot1Var = this.b;
        if (ot1Var instanceof al0) {
            ni2 ni2Var = this.h;
            ni2Var.b = true;
            ArrayList arrayList = ni2Var.l;
            al0 al0Var = (al0) ot1Var;
            int i = al0Var.s0;
            boolean z = al0Var.t0;
            int i2 = 0;
            if (i == 0) {
                ni2Var.e = 4;
                while (i2 < al0Var.r0) {
                    ot1 ot1Var2 = al0Var.q0[i2];
                    if (z || ot1Var2.g0 != 8) {
                        ni2 ni2Var2 = ot1Var2.d.h;
                        ni2Var2.k.add(ni2Var);
                        arrayList.add(ni2Var2);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            if (i == 1) {
                ni2Var.e = 5;
                while (i2 < al0Var.r0) {
                    ot1 ot1Var3 = al0Var.q0[i2];
                    if (z || ot1Var3.g0 != 8) {
                        ni2 ni2Var3 = ot1Var3.d.i;
                        ni2Var3.k.add(ni2Var);
                        arrayList.add(ni2Var3);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            if (i == 2) {
                ni2Var.e = 6;
                while (i2 < al0Var.r0) {
                    ot1 ot1Var4 = al0Var.q0[i2];
                    if (z || ot1Var4.g0 != 8) {
                        ni2 ni2Var4 = ot1Var4.e.h;
                        ni2Var4.k.add(ni2Var);
                        arrayList.add(ni2Var4);
                    }
                    i2++;
                }
                m(this.b.e.h);
                m(this.b.e.i);
                return;
            }
            if (i != 3) {
                return;
            }
            ni2Var.e = 7;
            while (i2 < al0Var.r0) {
                ot1 ot1Var5 = al0Var.q0[i2];
                if (z || ot1Var5.g0 != 8) {
                    ni2 ni2Var5 = ot1Var5.e.i;
                    ni2Var5.k.add(ni2Var);
                    arrayList.add(ni2Var5);
                }
                i2++;
            }
            m(this.b.e.h);
            m(this.b.e.i);
        }
    }

    @Override // defpackage.pr8
    public final void e() {
        ot1 ot1Var = this.b;
        if (ot1Var instanceof al0) {
            int i = ((al0) ot1Var).s0;
            ni2 ni2Var = this.h;
            if (i == 0 || i == 1) {
                ot1Var.Y = ni2Var.g;
            } else {
                ot1Var.Z = ni2Var.g;
            }
        }
    }

    @Override // defpackage.pr8
    public final void f() {
        this.c = null;
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
