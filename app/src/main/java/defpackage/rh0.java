package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rh0 extends no2 {
    public final kh0 n;
    public final fo2 p;
    public final String q;
    public oi5 r;

    /* JADX WARN: Illegal instructions before constructor call */
    public rh0(kh0 kh0Var, fo2 fo2Var) {
        fo2Var.getClass();
        String str = fo2Var.a;
        super(fo2Var.c, fo2Var.d, str);
        this.n = kh0Var;
        this.p = fo2Var;
        this.q = "BDownloadSession: ".concat(fo2Var.a());
    }

    @Override // defpackage.no2
    public final void a() {
        tb1 tb1Var = tb1.a;
        String displayNameEn = qb1.f().getDisplayNameEn();
        vr6.w$default(vr6.INSTANCE, this.q, eq3.k("Closing connection with ", displayNameEn, ", may result in unknown errors"), null, 4, null);
        close();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        f13.a(this.r);
    }

    @Override // defpackage.no2
    public final void g() {
        j();
    }

    public final void j() {
        String str = this.a;
        fo2 fo2Var = this.p;
        String strJ = eq3.j(this.q, ": executeDownload");
        int i = 0;
        ph0 ph0Var = new ph0(this, new kh6(), new kh6(), 0);
        try {
            oi5 oi5Var = new oi5(new qh0(this, i), this.b, fo2Var.c, true, fo2Var.a(), "box:" + str + ":" + fo2Var.c, fo2Var.e, fo2Var.f);
            this.r = oi5Var;
            oi5Var.b(ph0Var);
        } catch (Exception e) {
            if (this.d.isCancelled()) {
                return;
            }
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, strJ, eq3.k("Error while downloading file id '", str, "'"), e, null, 8, null);
            vr6.e$default(vr6Var, strJ, "Box specific error: ".concat(dv0.a(e)), null, 4, null);
            ai6 ai6Var = nf1.a;
            if (!x13.J(e) && !x13.G(e) && !x13.I(e) && !x13.C(e) && !x13.K(e)) {
                this.e.b = e;
                return;
            }
            Log.d(strJ, "Retrying download");
            Const.R();
            j();
        }
    }
}
