package defpackage;

import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class qo0 extends a55 {
    public final gv7 c = new gv7(new el(1));
    public final gv7 d = new gv7(new zk(3));

    public final void c(Class cls, pw6 pw6Var) {
        e().k(new oo0(cls, pw6Var));
    }

    public final void d() {
        e().k(ho0.a);
    }

    public final ix6 e() {
        return (ix6) this.d.getValue();
    }

    public final void f() {
        ((ex6) this.c.getValue()).k(null);
    }

    public final void g(zc6 zc6Var) {
        zc6Var.getClass();
        e().k(new jo0(zc6Var));
    }

    public final void h(int i) {
        ex6 ex6Var = (ex6) this.c.getValue();
        SwiftApp.Companion companion = SwiftApp.d;
        ex6Var.k(SwiftApp.Companion.c().getString(i));
    }

    public final void i(String str) {
        ((ex6) this.c.getValue()).k(str);
    }
}
