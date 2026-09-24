package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fv5 extends LinkedHashMap implements xn5 {
    public final ev5 a;

    public fv5(ev5 ev5Var) {
        this.a = ev5Var;
    }

    @Override // defpackage.xn5
    public final pn5 W() {
        return this.a;
    }

    @Override // defpackage.xn5
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final av5 A(String str, String str2) {
        av5 av5Var = new av5();
        ev5 ev5Var = this.a;
        av5Var.a = ev5Var.c();
        av5Var.b = ev5Var;
        av5Var.e = str2;
        av5Var.d = str;
        put(str, av5Var);
        return av5Var;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return keySet().iterator();
    }

    @Override // defpackage.xn5
    public final pn5 remove(String str) {
        return (ev5) remove((Object) str);
    }
}
