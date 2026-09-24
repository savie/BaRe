package defpackage;

import java.util.TreeSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rd5 {
    public final TreeSet a;
    public final Object b;
    public volatile boolean c = false;
    public final ix0 d;

    public rd5(ix0 ix0Var, TreeSet treeSet, Object obj) {
        this.d = ix0Var;
        this.a = treeSet;
        this.b = obj;
    }

    public final void a() {
        for (xr7 xr7Var : this.a) {
            Object obj = this.b;
            n3 n3Var = xr7Var.b;
            if (!n3Var.isEmpty()) {
                xr7Var.c.a(this, obj, n3Var);
            }
        }
        if (this.c) {
            return;
        }
        int i = 12;
        if (je3.class.equals(this.b.getClass()) || md2.class.equals(this.b.getClass())) {
            if (md2.class.equals(this.b.getClass())) {
                return;
            }
            ((ju7) this.d.b).g(new md2(this.b, i));
        } else {
            ((ju7) this.d.b).g(new je3(this.b, i));
        }
    }
}
