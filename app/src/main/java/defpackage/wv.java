package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wv {
    public final c40 a;
    public final ry7 b;
    public final gv7 c;
    public final gv7 d;
    public final gv7 e;
    public final gv7 f;
    public mq g;
    public final sv h;
    public boolean i;

    public wv(c40 c40Var, ry7 ry7Var) {
        ry7Var.getClass();
        this.a = c40Var;
        this.b = ry7Var;
        this.c = new gv7(new b7(1));
        this.d = new gv7(new ov(0));
        this.e = new gv7(new ej(this, 4));
        this.f = new gv7(new fj(this, 5));
        this.h = new sv();
    }

    public final boolean a() {
        if (this.i) {
            return true;
        }
        ArrayList arrayList = this.h.b;
        if (arrayList != null && arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = ((kq) it.next()).a;
            if (str != null && str.length() != 0) {
                return true;
            }
        }
        return false;
    }
}
