package defpackage;

import java.util.ArrayList;
import java.util.Stack;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jp1 {
    public int d;
    public final kp1 h;
    public StringBuilder a = null;
    public final Stack b = new Stack();
    public int c = -1;
    public boolean e = true;
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();

    public jp1(kp1 kp1Var) {
        this.h = kp1Var;
    }

    public final gy5 a(int i) {
        m61[] m61VarArr = new m61[i];
        for (int i2 = 0; i2 < i; i2++) {
            m61VarArr[i2] = (m61) this.b.get(i2);
        }
        return new gy5(m61VarArr);
    }

    public final void b() {
        int i = 0;
        zm5.r("Can't end range without starting a range!", this.a != null);
        while (true) {
            int i2 = this.d;
            StringBuilder sb = this.a;
            if (i >= i2) {
                sb.append(")");
                gy5 gy5VarA = a(this.c);
                this.g.add(zm5.z(this.a.toString()));
                this.f.add(gy5VarA);
                this.a = null;
                return;
            }
            sb.append(")");
            i++;
        }
    }

    public final void c() {
        if (this.a != null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        this.a = sb;
        sb.append("(");
        dy5 dy5Var = new dy5(a(this.d));
        while (dy5Var.hasNext()) {
            this.a.append(zm5.E(((m61) dy5Var.next()).a));
            this.a.append(":(");
        }
        this.e = false;
    }
}
