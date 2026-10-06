package defpackage;

import java.io.File;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ha2 implements ta2, qa2 {
    public final List a;
    public final qd2 b;
    public final sa2 c;
    public int d = -1;
    public jo4 e;
    public List f;
    public int k;
    public volatile bh5 n;
    public File p;

    public ha2(List list, qd2 qd2Var, sa2 sa2Var) {
        this.a = list;
        this.b = qd2Var;
        this.c = sa2Var;
    }

    @Override // defpackage.ta2
    public final boolean a() {
        while (true) {
            List list = this.f;
            boolean z = false;
            if (list != null && this.k < list.size()) {
                this.n = null;
                while (!z && this.k < this.f.size()) {
                    List list2 = this.f;
                    int i = this.k;
                    this.k = i + 1;
                    ch5 ch5Var = (ch5) list2.get(i);
                    File file = this.p;
                    qd2 qd2Var = this.b;
                    this.n = ch5Var.b(file, qd2Var.e, qd2Var.f, qd2Var.i);
                    if (this.n != null && this.b.c(this.n.c.a()) != null) {
                        this.n.c.d(this.b.o, this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.d + 1;
            this.d = i2;
            if (i2 >= this.a.size()) {
                return false;
            }
            jo4 jo4Var = (jo4) this.a.get(this.d);
            qd2 qd2Var2 = this.b;
            File fileE = qd2Var2.h.a().e(new ia2(jo4Var, qd2Var2.n));
            this.p = fileE;
            if (fileE != null) {
                this.e = jo4Var;
                this.f = this.b.c.a().f(fileE);
                this.k = 0;
            }
        }
    }

    @Override // defpackage.qa2
    public final void b(Exception exc) {
        this.c.c(this.e, exc, this.n.c, 3);
    }

    @Override // defpackage.ta2
    public final void cancel() {
        bh5 bh5Var = this.n;
        if (bh5Var != null) {
            bh5Var.c.cancel();
        }
    }

    @Override // defpackage.qa2
    public final void f(Object obj) {
        this.c.b(this.e, obj, this.n.c, 3, this.e);
    }
}
