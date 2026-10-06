package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nc4 extends LinkedHashMap implements xn5 {
    public final mc4 a;

    public nc4(lc4 lc4Var, bz2 bz2Var) {
        this.a = lc4Var;
        Iterator it = bz2Var.iterator();
        while (it.hasNext()) {
            iy2 iy2Var = (iy2) it.next();
            mc4 mc4Var = this.a;
            jc4 jc4Var = new jc4();
            iy2Var.c();
            iy2Var.b();
            jc4Var.d = iy2Var.d();
            jc4Var.c = iy2Var.e();
            String strA = iy2Var.a();
            jc4Var.b = strA;
            jc4Var.a = mc4Var;
            if (!iy2Var.f()) {
                put(strA, jc4Var);
            }
        }
    }

    @Override // defpackage.xn5
    public final pn5 A(String str, String str2) {
        jc4 jc4Var = new jc4();
        jc4Var.a = this.a;
        jc4Var.c = str2;
        jc4Var.b = str;
        put(str, jc4Var);
        return jc4Var;
    }

    @Override // defpackage.xn5
    public final pn5 W() {
        return this.a;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return keySet().iterator();
    }

    @Override // defpackage.xn5
    public final pn5 remove(String str) {
        return (mc4) remove((Object) str);
    }

    public nc4(jc4 jc4Var) {
        this.a = jc4Var;
    }
}
