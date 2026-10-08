package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class v9 implements au3, Serializable {
    public final Object a;
    public final Class b;
    public final String c;
    public final String d;
    public final boolean e = false;
    public final int f;
    public final int k;

    public v9(int i, Object obj, Class cls, String str, String str2, int i2) {
        this.a = obj;
        this.b = cls;
        this.c = str;
        this.d = str2;
        this.f = i;
        this.k = i2 >> 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v9)) {
            return false;
        }
        v9 v9Var = (v9) obj;
        return this.e == v9Var.e && this.f == v9Var.f && this.k == v9Var.k && pe4.d(this.a, v9Var.a) && this.b.equals(v9Var.b) && this.c.equals(v9Var.c) && this.d.equals(v9Var.d);
    }

    @Override // defpackage.au3
    public final int getArity() {
        return this.f;
    }

    public final int hashCode() {
        Object obj = this.a;
        return ((((fz5.g(fz5.g((this.b.hashCode() + ((obj != null ? obj.hashCode() : 0) * 31)) * 31, 31, this.c), 31, this.d) + (this.e ? 1231 : 1237)) * 31) + this.f) * 31) + this.k;
    }

    public final String toString() {
        ph6.a.getClass();
        return qh6.a(this);
    }
}
