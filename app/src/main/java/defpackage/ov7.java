package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ov7 {
    public static final nv7 d;
    public boolean a;
    public boolean b;
    public volatile UnsatisfiedLinkError c;

    static {
        nv7 nv7Var = new nv7();
        nv7Var.add("conceal");
        d = nv7Var;
    }

    public final synchronized void a() {
        if (!b()) {
            throw new z32(this.c);
        }
    }

    public final synchronized boolean b() {
        if (!this.a) {
            return this.b;
        }
        try {
            Iterator it = d.iterator();
            while (it.hasNext()) {
                System.loadLibrary((String) it.next());
            }
            this.b = true;
        } catch (UnsatisfiedLinkError e) {
            this.c = e;
            this.b = false;
        }
        this.a = false;
        return this.b;
    }
}
