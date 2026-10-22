package defpackage;

import android.graphics.Color;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hq2 implements ul0 {
    public final ul0 a;
    public final tl1 b;
    public final xh3 c;
    public final xh3 d;
    public final xh3 e;
    public final xh3 f;
    public boolean g = true;

    public hq2(ul0 ul0Var, am0 am0Var, nz4 nz4Var) {
        this.a = ul0Var;
        yl0 yl0VarN = ((ac) nz4Var.b).n();
        this.b = (tl1) yl0VarN;
        yl0VarN.a(this);
        am0Var.g(yl0VarN);
        yl0 yl0VarN2 = ((bc) nz4Var.c).n();
        this.c = (xh3) yl0VarN2;
        yl0VarN2.a(this);
        am0Var.g(yl0VarN2);
        yl0 yl0VarN3 = ((bc) nz4Var.d).n();
        this.d = (xh3) yl0VarN3;
        yl0VarN3.a(this);
        am0Var.g(yl0VarN3);
        yl0 yl0VarN4 = ((bc) nz4Var.e).n();
        this.e = (xh3) yl0VarN4;
        yl0VarN4.a(this);
        am0Var.g(yl0VarN4);
        yl0 yl0VarN5 = ((bc) nz4Var.f).n();
        this.f = (xh3) yl0VarN5;
        yl0VarN5.a(this);
        am0Var.g(yl0VarN5);
    }

    public final void a(vp4 vp4Var) {
        if (this.g) {
            this.g = false;
            double dFloatValue = ((double) ((Float) this.d.f()).floatValue()) * 0.017453292519943295d;
            float fFloatValue = ((Float) this.e.f()).floatValue();
            float fSin = ((float) Math.sin(dFloatValue)) * fFloatValue;
            float fCos = ((float) Math.cos(dFloatValue + 3.141592653589793d)) * fFloatValue;
            int iIntValue = ((Integer) this.b.f()).intValue();
            vp4Var.setShadowLayer(((Float) this.f.f()).floatValue(), fSin, fCos, Color.argb(Math.round(((Float) this.c.f()).floatValue()), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
        }
    }

    @Override // defpackage.ul0
    public final void b() {
        this.g = true;
        this.a.b();
    }

    public final void c(cd cdVar) {
        this.c.k(new gq2(cdVar));
    }
}
