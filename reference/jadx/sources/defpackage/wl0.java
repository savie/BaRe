package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wl0 implements vl0 {
    public final List a;
    public wo4 c = null;
    public float d = -1.0f;
    public wo4 b = a(0.0f);

    public wl0(List list) {
        this.a = list;
    }

    public final wo4 a(float f) {
        List list = this.a;
        wo4 wo4Var = (wo4) list.get(list.size() - 1);
        if (f >= wo4Var.b()) {
            return wo4Var;
        }
        for (int size = list.size() - 2; size >= 1; size--) {
            wo4 wo4Var2 = (wo4) list.get(size);
            if (this.b != wo4Var2 && f >= wo4Var2.b() && f < wo4Var2.a()) {
                return wo4Var2;
            }
        }
        return (wo4) list.get(0);
    }

    @Override // defpackage.vl0
    public final boolean c(float f) {
        wo4 wo4Var = this.c;
        wo4 wo4Var2 = this.b;
        if (wo4Var == wo4Var2 && this.d == f) {
            return true;
        }
        this.c = wo4Var2;
        this.d = f;
        return false;
    }

    @Override // defpackage.vl0
    public final wo4 g() {
        return this.b;
    }

    @Override // defpackage.vl0
    public final boolean h(float f) {
        wo4 wo4Var = this.b;
        if (f >= wo4Var.b() && f < wo4Var.a()) {
            return !this.b.c();
        }
        this.b = a(f);
        return true;
    }

    @Override // defpackage.vl0
    public final boolean isEmpty() {
        return false;
    }

    @Override // defpackage.vl0
    public final float k() {
        List list = this.a;
        return ((wo4) list.get(list.size() - 1)).a();
    }

    @Override // defpackage.vl0
    public final float l() {
        return ((wo4) this.a.get(0)).b();
    }
}
