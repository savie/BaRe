package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qk4 implements Serializable {
    public static final qk4 e;
    public final pk4 a;
    public final pk4 b;
    public final Class c;
    public final Class d;

    static {
        pk4 pk4Var = pk4.e;
        e = new qk4(pk4Var, pk4Var, null, null);
    }

    public qk4(pk4 pk4Var, pk4 pk4Var2, Class cls, Class cls2) {
        pk4 pk4Var3 = pk4.e;
        this.a = pk4Var == null ? pk4Var3 : pk4Var;
        this.b = pk4Var2 == null ? pk4Var3 : pk4Var2;
        this.c = cls == Void.class ? null : cls;
        this.d = cls2 == Void.class ? null : cls2;
    }

    public final qk4 a(qk4 qk4Var) {
        if (qk4Var == null || qk4Var == e) {
            return this;
        }
        pk4 pk4Var = qk4Var.a;
        pk4 pk4Var2 = qk4Var.b;
        Class cls = qk4Var.c;
        Class cls2 = qk4Var.d;
        pk4 pk4Var3 = pk4.e;
        pk4 pk4Var4 = this.a;
        boolean z = (pk4Var == pk4Var4 || pk4Var == pk4Var3) ? false : true;
        pk4 pk4Var5 = this.b;
        boolean z2 = (pk4Var2 == pk4Var5 || pk4Var2 == pk4Var3) ? false : true;
        Class cls3 = this.c;
        boolean z3 = (cls == cls3 && cls2 == cls3) ? false : true;
        if (z) {
            return z2 ? new qk4(pk4Var, pk4Var2, cls, cls2) : new qk4(pk4Var, pk4Var5, cls, cls2);
        }
        if (z2) {
            return new qk4(pk4Var4, pk4Var2, cls, cls2);
        }
        return z3 ? new qk4(pk4Var4, pk4Var5, cls, cls2) : this;
    }

    public final qk4 b(pk4 pk4Var) {
        if (pk4Var == this.a) {
            return this;
        }
        return new qk4(pk4Var, this.b, this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != qk4.class) {
            return false;
        }
        qk4 qk4Var = (qk4) obj;
        return qk4Var.a == this.a && qk4Var.b == this.b && qk4Var.c == this.c && qk4Var.d == this.d;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() << 2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(80);
        sb.append("JsonInclude.Value(value=");
        sb.append(this.a);
        sb.append(",content=");
        sb.append(this.b);
        Class cls = this.c;
        if (cls != null) {
            sb.append(",valueFilter=");
            sb.append(cls.getName());
            sb.append(".class");
        }
        Class cls2 = this.d;
        if (cls2 != null) {
            sb.append(",contentFilter=");
            sb.append(cls2.getName());
            sb.append(".class");
        }
        sb.append(')');
        return sb.toString();
    }
}
