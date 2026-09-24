package defpackage;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ia8 extends y98 {
    public int Y;
    public ArrayList W = new ArrayList();
    public boolean X = true;
    public boolean Z = false;
    public int a0 = 0;

    @Override // defpackage.y98
    public final void A(View view) {
        super.A(view);
        int size = this.W.size();
        for (int i = 0; i < size; i++) {
            ((y98) this.W.get(i)).A(view);
        }
    }

    @Override // defpackage.y98
    public final void B() {
        this.Q = 0L;
        ga8 ga8Var = new ga8(this);
        for (int i = 0; i < this.W.size(); i++) {
            y98 y98Var = (y98) this.W.get(i);
            y98Var.a(ga8Var);
            y98Var.B();
            long j = y98Var.Q;
            boolean z = this.X;
            long j2 = this.Q;
            if (z) {
                this.Q = Math.max(j2, j);
            } else {
                y98Var.R = j2;
                this.Q = j2 + j;
            }
        }
    }

    @Override // defpackage.y98
    public final y98 C(v98 v98Var) {
        super.C(v98Var);
        return this;
    }

    @Override // defpackage.y98
    public final void D(View view) {
        super.D(view);
        int size = this.W.size();
        for (int i = 0; i < size; i++) {
            ((y98) this.W.get(i)).D(view);
        }
    }

    @Override // defpackage.y98
    public final void E() {
        ArrayList arrayList;
        if (this.W.isEmpty()) {
            M();
            n();
            return;
        }
        ha8 ha8Var = new ha8();
        ha8Var.a = this;
        Iterator it = this.W.iterator();
        while (it.hasNext()) {
            ((y98) it.next()).a(ha8Var);
        }
        this.Y = this.W.size();
        if (this.X) {
            Iterator it2 = this.W.iterator();
            while (it2.hasNext()) {
                ((y98) it2.next()).E();
            }
            return;
        }
        int i = 1;
        while (true) {
            int size = this.W.size();
            arrayList = this.W;
            if (i >= size) {
                break;
            }
            ((y98) arrayList.get(i - 1)).a(new fa8((y98) this.W.get(i)));
            i++;
        }
        y98 y98Var = (y98) arrayList.get(0);
        if (y98Var != null) {
            y98Var.E();
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.y98
    public final void F(long j, long j2) {
        long j3;
        long j4 = this.Q;
        long j5 = 0;
        if (this.r != null) {
            if (j < 0 && j2 < 0) {
                return;
            }
            if (j > j4 && j2 > j4) {
                return;
            }
        }
        boolean z = j < j2;
        if ((j >= 0 && j2 < 0) || (j <= j4 && j2 > j4)) {
            this.L = false;
            z(this, w98.z, z);
        }
        if (!this.X) {
            int size = 1;
            while (true) {
                int size2 = this.W.size();
                ArrayList arrayList = this.W;
                if (size >= size2) {
                    size = arrayList.size();
                    break;
                } else if (((y98) arrayList.get(size)).R > j2) {
                    break;
                } else {
                    size++;
                }
            }
            int i = size - 1;
            if (j >= j2) {
                while (true) {
                    if (i < this.W.size()) {
                        y98 y98Var = (y98) this.W.get(i);
                        long j6 = y98Var.R;
                        j3 = j5;
                        long j7 = j - j6;
                        if (j7 < j3) {
                            break;
                        }
                        y98Var.F(j7, j2 - j6);
                        i++;
                        j5 = j3;
                    }
                }
            } else {
                j3 = 0;
                while (i >= 0) {
                    y98 y98Var2 = (y98) this.W.get(i);
                    long j8 = y98Var2.R;
                    long j9 = j - j8;
                    y98Var2.F(j9, j2 - j8);
                    if (j9 >= 0) {
                        break;
                    } else {
                        i--;
                    }
                }
            }
            if (this.r != null) {
                if ((j > j4 || j2 > j4) && (j >= 0 || j2 < j3)) {
                    return;
                }
                if (j > j4) {
                    this.L = true;
                }
                z(this, w98.A, z);
            }
        }
        for (int i2 = 0; i2 < this.W.size(); i2++) {
            ((y98) this.W.get(i2)).F(j, j2);
        }
        j3 = j5;
        if (this.r != null) {
            if (j > j4) {
                return;
            } else {
                return;
            }
            if (j > j4) {
                this.L = true;
            }
            z(this, w98.A, z);
        }
    }

    @Override // defpackage.y98
    public final void H(w13 w13Var) {
        this.a0 |= 8;
        int size = this.W.size();
        for (int i = 0; i < size; i++) {
            ((y98) this.W.get(i)).H(w13Var);
        }
    }

    @Override // defpackage.y98
    public final void J(b05 b05Var) {
        super.J(b05Var);
        this.a0 |= 4;
        if (this.W != null) {
            for (int i = 0; i < this.W.size(); i++) {
                ((y98) this.W.get(i)).J(b05Var);
            }
        }
    }

    @Override // defpackage.y98
    public final void K() {
        this.a0 |= 2;
        int size = this.W.size();
        for (int i = 0; i < size; i++) {
            ((y98) this.W.get(i)).K();
        }
    }

    @Override // defpackage.y98
    public final void L(long j) {
        this.b = j;
    }

    @Override // defpackage.y98
    public final String N(String str) {
        String strN = super.N(str);
        for (int i = 0; i < this.W.size(); i++) {
            StringBuilder sbN = fz5.n(strN, "\n");
            sbN.append(((y98) this.W.get(i)).N(str.concat("  ")));
            strN = sbN.toString();
        }
        return strN;
    }

    public final void O(y98 y98Var) {
        this.W.add(y98Var);
        y98Var.r = this;
        long j = this.c;
        if (j >= 0) {
            y98Var.G(j);
        }
        if ((this.a0 & 1) != 0) {
            y98Var.I(this.d);
        }
        if ((this.a0 & 2) != 0) {
            y98Var.K();
        }
        if ((this.a0 & 4) != 0) {
            y98Var.J(this.P);
        }
        if ((this.a0 & 8) != 0) {
            y98Var.H(null);
        }
    }

    @Override // defpackage.y98
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public final void G(long j) {
        ArrayList arrayList;
        this.c = j;
        if (j < 0 || (arrayList = this.W) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((y98) this.W.get(i)).G(j);
        }
    }

    @Override // defpackage.y98
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final void I(TimeInterpolator timeInterpolator) {
        this.a0 |= 1;
        ArrayList arrayList = this.W;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((y98) this.W.get(i)).I(timeInterpolator);
            }
        }
        this.d = timeInterpolator;
    }

    public final void R(int i) {
        if (i == 0) {
            this.X = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException(fz5.j(i, "Invalid parameter for TransitionSet ordering: "));
            }
            this.X = false;
        }
    }

    @Override // defpackage.y98
    public final void b(View view) {
        for (int i = 0; i < this.W.size(); i++) {
            ((y98) this.W.get(i)).b(view);
        }
        this.f.add(view);
    }

    @Override // defpackage.y98
    public final void cancel() {
        super.cancel();
        int size = this.W.size();
        for (int i = 0; i < size; i++) {
            ((y98) this.W.get(i)).cancel();
        }
    }

    @Override // defpackage.y98
    public final void d(la8 la8Var) {
        View view = la8Var.b;
        if (x(view)) {
            for (y98 y98Var : this.W) {
                if (y98Var.x(view)) {
                    y98Var.d(la8Var);
                    la8Var.c.add(y98Var);
                }
            }
        }
    }

    @Override // defpackage.y98
    public final void f(la8 la8Var) {
        int size = this.W.size();
        for (int i = 0; i < size; i++) {
            ((y98) this.W.get(i)).f(la8Var);
        }
    }

    @Override // defpackage.y98
    public final void h(la8 la8Var) {
        View view = la8Var.b;
        if (x(view)) {
            for (y98 y98Var : this.W) {
                if (y98Var.x(view)) {
                    y98Var.h(la8Var);
                    la8Var.c.add(y98Var);
                }
            }
        }
    }

    @Override // defpackage.y98
    /* JADX INFO: renamed from: k */
    public final y98 clone() {
        ia8 ia8Var = (ia8) super.clone();
        ia8Var.W = new ArrayList();
        int size = this.W.size();
        for (int i = 0; i < size; i++) {
            y98 y98VarClone = ((y98) this.W.get(i)).clone();
            ia8Var.W.add(y98VarClone);
            y98VarClone.r = ia8Var;
        }
        return ia8Var;
    }

    @Override // defpackage.y98
    public final void m(ViewGroup viewGroup, ai5 ai5Var, ai5 ai5Var2, ArrayList arrayList, ArrayList arrayList2) {
        long j = this.b;
        int size = this.W.size();
        for (int i = 0; i < size; i++) {
            y98 y98Var = (y98) this.W.get(i);
            if (j > 0 && (this.X || i == 0)) {
                long j2 = y98Var.b;
                if (j2 > 0) {
                    y98Var.L(j2 + j);
                } else {
                    y98Var.L(j);
                }
            }
            y98Var.m(viewGroup, ai5Var, ai5Var2, arrayList, arrayList2);
        }
    }

    @Override // defpackage.y98
    public final y98 o(View view) {
        throw null;
    }

    @Override // defpackage.y98
    public final void p() {
        for (int i = 0; i < this.W.size(); i++) {
            ((y98) this.W.get(i)).p();
        }
        super.p();
    }

    @Override // defpackage.y98
    public final boolean v() {
        for (int i = 0; i < this.W.size(); i++) {
            if (((y98) this.W.get(i)).v()) {
                return true;
            }
        }
        return false;
    }
}
