package defpackage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class v1 extends q1 implements Iterable {
    public static final t1 b = new t1(v1.class, 3);
    public b0[] a;

    public v1(b0 b0Var) {
        if (b0Var != null) {
            this.a = new b0[]{b0Var};
        } else {
            f6.n("'element' cannot be null");
            throw null;
        }
    }

    public static v1 B(Object obj) {
        if (obj == null || (obj instanceof v1)) {
            return (v1) obj;
        }
        if (obj instanceof b0) {
            q1 q1VarD = ((b0) obj).d();
            if (q1VarD instanceof v1) {
                return (v1) q1VarD;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (v1) b.l((byte[]) obj);
            } catch (IOException e) {
                b6.e(e.getMessage(), "failed to construct sequence from byte[]: ");
                return null;
            }
        }
        c6.f("unknown object in getInstance: ".concat(obj.getClass().getName()));
        return null;
    }

    public b0 C(int i) {
        return this.a[i];
    }

    public Enumeration E() {
        return new u1(this);
    }

    public abstract u F();

    public abstract j1 H();

    public abstract x1 I();

    @Override // defpackage.q1, defpackage.y0
    public int hashCode() {
        int length = this.a.length;
        int iHashCode = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 257) ^ this.a[length].d().hashCode();
        }
    }

    public Iterator iterator() {
        return new v50(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof v1) {
            v1 v1Var = (v1) q1Var;
            int size = size();
            if (v1Var.size() == size) {
                for (int i = 0; i < size; i++) {
                    q1 q1VarD = this.a[i].d();
                    q1 q1VarD2 = v1Var.a[i].d();
                    if (q1VarD == q1VarD2 || q1VarD.k(q1VarD2)) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.q1
    public final boolean o() {
        return true;
    }

    public int size() {
        return this.a.length;
    }

    public final String toString() {
        int size = size();
        if (size == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            sb.append(this.a[i]);
            i++;
            if (i >= size) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
        }
    }

    @Override // defpackage.q1
    public q1 u() {
        t82 t82Var = new t82(this.a);
        t82Var.c = -1;
        return t82Var;
    }

    @Override // defpackage.q1
    public q1 w() {
        h92 h92Var = new h92(this.a);
        h92Var.c = -1;
        return h92Var;
    }

    public final u[] x() {
        int size = size();
        u[] uVarArr = new u[size];
        for (int i = 0; i < size; i++) {
            uVarArr[i] = u.B(this.a[i]);
        }
        return uVarArr;
    }

    public final j1[] y() {
        int size = size();
        j1[] j1VarArr = new j1[size];
        for (int i = 0; i < size; i++) {
            j1VarArr[i] = j1.x(this.a[i]);
        }
        return j1VarArr;
    }

    public v1() {
        this.a = c0.d;
    }

    public v1(c0 c0Var) {
        if (c0Var != null) {
            this.a = c0Var.c();
        } else {
            f6.n("'elementVector' cannot be null");
            throw null;
        }
    }

    public v1(b0[] b0VarArr) {
        this.a = b0VarArr;
    }
}
