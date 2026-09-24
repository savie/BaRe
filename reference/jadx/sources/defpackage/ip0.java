package defpackage;

import java.io.IOException;
import java.util.LinkedList;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ip0 extends op0 {
    public final op0 r;

    public ip0(np0 np0Var) {
        super(np0Var, (lr5) null, np0Var.f);
        this.r = np0Var;
    }

    public final void B(Object obj, fk4 fk4Var, c87 c87Var) throws IOException {
        if (this.e != null) {
            c87Var.getClass();
        }
        mp0[] mp0VarArr = this.d;
        int i = 0;
        try {
            int length = mp0VarArr.length;
            while (i < length) {
                mp0 mp0Var = mp0VarArr[i];
                if (mp0Var == null) {
                    fk4Var.v();
                } else {
                    mp0Var.j(obj, fk4Var, c87Var);
                }
                i++;
            }
        } catch (Exception e) {
            tn7.n(c87Var, e, obj, mp0VarArr[i].b.a);
            throw null;
        } catch (StackOverflowError e2) {
            yk4 yk4Var = new yk4(fk4Var, "Infinite recursion (StackOverflowError)", e2);
            xk4 xk4Var = new xk4(obj, mp0VarArr[i].b.a);
            if (yk4Var.a == null) {
                yk4Var.a = new LinkedList();
            }
            if (yk4Var.a.size() >= 1000) {
                throw yk4Var;
            }
            yk4Var.a.addFirst(xk4Var);
            throw yk4Var;
        }
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) throws IOException {
        if (c87Var.a.l(x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && this.d.length == 1) {
            B(obj, fk4Var, c87Var);
            return;
        }
        fk4Var.S(obj);
        B(obj, fk4Var, c87Var);
        fk4Var.n();
    }

    @Override // defpackage.op0, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws IOException {
        if (this.n != null) {
            o(obj, fk4Var, c87Var, rc8Var);
            return;
        }
        nw8 nw8VarQ = q(rc8Var, obj, mm4.START_ARRAY);
        rc8Var.e(fk4Var, nw8VarQ);
        fk4Var.g(obj);
        B(obj, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarQ);
    }

    @Override // defpackage.em4
    public final em4 g(fk5 fk5Var) {
        return this.r.g(fk5Var);
    }

    public final String toString() {
        return "BeanAsArraySerializer for ".concat(this.a.getName());
    }

    @Override // defpackage.op0
    public final op0 x(Set set, Set set2) {
        return new ip0(this, set, set2);
    }

    @Override // defpackage.op0
    public final op0 y(Object obj) {
        return new ip0(this, this.n, obj);
    }

    @Override // defpackage.op0
    public final op0 z(lr5 lr5Var) {
        return this.r.z(lr5Var);
    }

    public ip0(ip0 ip0Var, lr5 lr5Var, Object obj) {
        super(ip0Var, lr5Var, obj);
        this.r = ip0Var;
    }

    public ip0(ip0 ip0Var, Set set, Set set2) {
        super(ip0Var, set, set2);
        this.r = ip0Var;
    }

    @Override // defpackage.op0
    public final op0 r() {
        return this;
    }

    @Override // defpackage.op0
    public final op0 A(mp0[] mp0VarArr, mp0[] mp0VarArr2) {
        return this;
    }
}
