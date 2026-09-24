package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ng1 extends a55 {
    public boolean c;
    public qo0 d;
    public boolean e = true;
    public final ex6 f = new ex6();
    public zc2 g;
    public jg1 h;

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        super.b();
        zc2 zc2Var = re3.a;
        re3.n(this.g, this.h);
    }

    public final void c() {
        tb1 tb1Var = tb1.a;
        if (qb1.m() || tb1.f) {
            vr6.d$default(vr6.INSTANCE, this.b, "Checking backups in new tag ".concat(qb1.e()), null, 4, null);
        }
        zc2 zc2Var = re3.a;
        re3.n(this.g, this.h);
        this.f.k(null);
        zc2 zc2VarD = re3.f().d(qb1.e());
        this.g = zc2VarD;
        jg1 jg1Var = new jg1(this);
        this.h = jg1Var;
        zc2VarD.c(jg1Var);
    }

    @qr7
    public final void onBackupTagChangeEvent(pb1 pb1Var) {
        pb1Var.getClass();
        Log.d(this.b, "event:" + pb1Var);
        c();
    }
}
