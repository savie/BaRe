package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class um9 implements Cloneable {
    public final wm9 a;
    public ih9 b;

    public um9() {
        wm9 wm9Var = wm9.zzb;
        this.a = wm9Var;
        if (wm9Var.g()) {
            c6.f("Default instance must be immutable.");
            throw null;
        }
        this.b = wm9Var.b();
    }

    public final ih9 a() {
        boolean zG = this.b.g();
        ih9 ih9Var = this.b;
        if (!zG) {
            return ih9Var;
        }
        ih9Var.getClass();
        dk9.c.a(ih9Var.getClass()).a(ih9Var);
        ih9Var.d();
        return this.b;
    }

    public final Object clone() {
        um9 um9Var = (um9) this.a.h(5);
        um9Var.b = a();
        return um9Var;
    }
}
