package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gx3 extends xo2 {
    @Override // defpackage.xo2, defpackage.dc4
    public final void a() {
        ((fx3) this.a).a.a.l.prepareToDraw();
    }

    @Override // defpackage.ll6
    public final void b() {
        m35 m35Var;
        m35 m35Var2;
        m35 m35Var3;
        fx3 fx3Var = (fx3) this.a;
        fx3Var.stop();
        fx3Var.d = true;
        lx3 lx3Var = fx3Var.a.a;
        yk6 yk6Var = lx3Var.d;
        lx3Var.c.clear();
        Bitmap bitmap = lx3Var.l;
        if (bitmap != null) {
            lx3Var.e.f(bitmap);
            lx3Var.l = null;
        }
        lx3Var.f = false;
        jx3 jx3Var = lx3Var.i;
        if (jx3Var != null) {
            yk6Var.i(jx3Var);
            lx3Var.i = null;
        }
        jx3 jx3Var2 = lx3Var.k;
        if (jx3Var2 != null) {
            yk6Var.i(jx3Var2);
            lx3Var.k = null;
        }
        jx3 jx3Var3 = lx3Var.m;
        if (jx3Var3 != null) {
            yk6Var.i(jx3Var3);
            lx3Var.m = null;
        }
        gl7 gl7Var = lx3Var.a;
        ot9 ot9Var = gl7Var.c;
        gl7Var.l = null;
        byte[] bArr = gl7Var.i;
        if (bArr != null && (m35Var3 = (m35) ot9Var.b) != null) {
            m35Var3.g(bArr);
        }
        int[] iArr = gl7Var.j;
        if (iArr != null && (m35Var2 = (m35) ot9Var.b) != null) {
            m35Var2.g(iArr);
        }
        Bitmap bitmap2 = gl7Var.m;
        if (bitmap2 != null) {
            ((nr0) ot9Var.a).f(bitmap2);
        }
        gl7Var.m = null;
        gl7Var.d = null;
        gl7Var.s = null;
        byte[] bArr2 = gl7Var.e;
        if (bArr2 != null && (m35Var = (m35) ot9Var.b) != null) {
            m35Var.g(bArr2);
        }
        lx3Var.j = true;
    }

    @Override // defpackage.ll6
    public final int c() {
        lx3 lx3Var = ((fx3) this.a).a.a;
        gl7 gl7Var = lx3Var.a;
        return (gl7Var.j.length * 4) + gl7Var.d.limit() + gl7Var.i.length + lx3Var.n;
    }

    @Override // defpackage.ll6
    public final Class d() {
        return fx3.class;
    }
}
