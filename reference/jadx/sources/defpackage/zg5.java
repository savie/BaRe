package defpackage;

import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zg5 {
    public static final ArrayDeque b = new ArrayDeque(0);
    public Object a;

    public static zg5 a(Object obj) {
        zg5 zg5Var;
        ArrayDeque arrayDeque = b;
        synchronized (arrayDeque) {
            zg5Var = (zg5) arrayDeque.poll();
        }
        if (zg5Var == null) {
            zg5Var = new zg5();
        }
        zg5Var.a = obj;
        return zg5Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zg5) && this.a.equals(((zg5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
