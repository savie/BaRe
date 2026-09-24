package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q86 {
    public final String a;

    public q86(String str) {
        this.a = str;
    }

    public final Object a(di4 di4Var) {
        Object obj = di4Var.a.get(this);
        if (obj != null) {
            return obj;
        }
        f6.n(this.a);
        return null;
    }

    public final void b(di4 di4Var, Object obj) {
        HashMap map = di4Var.a;
        if (obj == null) {
            map.remove(this);
        } else {
            map.put(this, obj);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q86.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((q86) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return dj7.n(new StringBuilder("Prop{name='"), this.a, "'}");
    }
}
