package defpackage;

import java.io.IOException;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cv5 implements ev5 {
    public fv5 a;
    public x46 b;
    public l22 c;
    public ev5 d;
    public String e;
    public String f;
    public String g;
    public int h;

    @Override // defpackage.ev5
    public final int a() {
        return this.h;
    }

    @Override // defpackage.ev5
    public final x46 c() {
        return this.b;
    }

    @Override // defpackage.ev5
    public final void commit() throws IOException, sn5 {
        l22 l22Var = this.c;
        iv5 iv5Var = (iv5) l22Var.b;
        if (iv5Var.contains(this)) {
            ev5 ev5VarD = iv5Var.d();
            if (((HashSet) l22Var.d).contains(ev5VarD)) {
                l22Var.o(ev5VarD);
            }
            while (iv5Var.d() != this) {
                l22Var.m(iv5Var.c());
            }
            l22Var.m(this);
            iv5Var.c();
        }
    }

    @Override // defpackage.ev5
    public final void e(String str) {
        this.e = str;
    }

    @Override // defpackage.ev5
    public final void g(boolean z) {
        if (z) {
            this.h = 1;
        } else {
            this.h = 2;
        }
    }

    @Override // defpackage.ev5
    public final xn5 getAttributes() {
        return this.a;
    }

    @Override // defpackage.pn5
    public final String getName() {
        return this.g;
    }

    @Override // defpackage.ev5
    public final ev5 getParent() {
        return this.d;
    }

    @Override // defpackage.ev5
    public final String getPrefix() {
        return h(true);
    }

    @Override // defpackage.pn5
    public final String getValue() {
        return this.f;
    }

    @Override // defpackage.ev5
    public final String h(boolean z) {
        String strD = this.b.d(this.e);
        return (z && strD == null) ? this.d.getPrefix() : strD;
    }

    @Override // defpackage.ev5
    public final ev5 i(String str) {
        return this.c.l(this, str);
    }

    @Override // defpackage.ev5
    public final boolean j() {
        return !((HashSet) this.c.d).contains(this);
    }

    @Override // defpackage.ev5
    public final void remove() throws sn5 {
        iv5 iv5Var = (iv5) this.c.b;
        if (iv5Var.d() != this) {
            throw new sn5("Cannot remove node");
        }
        iv5Var.c();
    }

    @Override // defpackage.ev5
    public final ev5 setAttribute(String str, String str2) {
        return this.a.A(str, str2);
    }

    @Override // defpackage.ev5
    public final void setName(String str) {
        this.g = str;
    }

    @Override // defpackage.ev5
    public final void setValue(String str) {
        this.f = str;
    }

    public final String toString() {
        return xs1.j("element ", this.g);
    }
}
