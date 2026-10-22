package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jl {
    public final c40 a;
    public final ky7 b;
    public final gv7 c;
    public final gv7 d;
    public vl e;
    public a00 f;
    public final hl g;
    public boolean h;

    public jl(c40 c40Var, ky7 ky7Var) {
        ky7Var.getClass();
        this.a = c40Var;
        this.b = ky7Var;
        this.c = new gv7(new fj(this, 2));
        this.d = new gv7(new gj(this, 2));
        this.g = new hl();
    }

    public final boolean a() {
        if (this.h) {
            return true;
        }
        hl hlVar = this.g;
        ArrayList arrayList = hlVar.a;
        if (arrayList == null || !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((tl) it.next()).b) {
                    return true;
                }
            }
        }
        ArrayList<xz> arrayList2 = hlVar.b;
        if (arrayList2 != null && arrayList2.isEmpty()) {
            return false;
        }
        for (xz xzVar : arrayList2) {
            if (xzVar.b) {
                return true;
            }
            String str = xzVar.d;
            if (str != null && str.length() != 0) {
                return true;
            }
        }
        return false;
    }
}
