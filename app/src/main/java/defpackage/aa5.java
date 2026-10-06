package defpackage;

import android.util.Log;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class aa5 extends no2 {
    public final nb5 n;
    public final fo2 p;
    public final String q;
    public final ft7 r;

    /* JADX WARN: Illegal instructions before constructor call */
    public aa5(nb5 nb5Var, fo2 fo2Var) {
        nb5Var.getClass();
        fo2Var.getClass();
        String str = fo2Var.a;
        super(fo2Var.c, fo2Var.d, str);
        this.n = nb5Var;
        this.p = fo2Var;
        this.q = "MDownloadSession";
        nb5.b.getClass();
        this.r = new ft7(0);
    }

    @Override // defpackage.no2
    public final void a() {
        vr6 vr6Var = vr6.INSTANCE;
        vr6.w$default(vr6Var, this.q, "User cancelled the download", null, 4, null);
        tb1 tb1Var = tb1.a;
        vr6.w$default(vr6Var, this.q, eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
        try {
            this.r.a.set(true);
        } catch (Exception unused) {
        }
        try {
            this.n.getClass();
            gt7 gt7Var = gt7.a;
            ConcurrentHashMap.KeySetView keySetView = ((jb5) gt7.g.getValue()).f;
            keySetView.getClass();
            jb5.b(keySetView);
        } catch (Exception unused2) {
        }
    }

    @Override // defpackage.no2
    public final void g() {
        j();
    }

    public final void j() {
        String str = this.a;
        z95 z95Var = new z95(this);
        try {
            nb5 nb5Var = this.n;
            q63 q63Var = this.b;
            ft7 ft7Var = this.r;
            nb5Var.getClass();
            nb5.b(q63Var, z95Var, ft7Var, str);
        } catch (Exception e) {
            if (this.d.isCancelled()) {
                return;
            }
            String str2 = this.q;
            Log.e(str2, "executeDownload: Error when downloading " + str, e);
            ai6 ai6Var = nf1.a;
            if (x13.J(e) || x13.G(e) || x13.I(e) || x13.C(e) || x13.B(e) || x13.K(e) || x13.D(e)) {
                Log.d(str2, "executeDownload: Retrying download");
                Const.R();
                j();
            } else {
                vr6.e$default(vr6.INSTANCE, this.q, dj7.l("Error while downloading from Drive: File id = ", str, ", Error = ", e.getMessage()), null, 4, null);
                this.e.b = e;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
