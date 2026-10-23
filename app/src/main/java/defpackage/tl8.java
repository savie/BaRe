package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tl8 {
    public final ul8 a = new ul8();

    public final void a() {
        ul8 ul8Var = this.a;
        if (ul8Var != null && !ul8Var.d) {
            ul8Var.d = true;
            synchronized (ul8Var.a) {
                try {
                    Iterator it = ul8Var.b.values().iterator();
                    while (it.hasNext()) {
                        ul8.a((AutoCloseable) it.next());
                    }
                    Iterator it2 = ul8Var.c.iterator();
                    while (it2.hasNext()) {
                        ul8.a((AutoCloseable) it2.next());
                    }
                    ul8Var.c.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        b();
    }

    public void b() {
    }
}
