package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.io.InputStream;
import java.util.Timer;
import okhttp3.Response;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qq5 extends no2 {
    public final lq5 n;
    public final st5 p;
    public final fo2 q;
    public final String r;
    public Response t;
    public InputStream x;
    public f86 y;

    /* JADX WARN: Illegal instructions before constructor call */
    public qq5(lq5 lq5Var, st5 st5Var, fo2 fo2Var) {
        st5Var.getClass();
        fo2Var.getClass();
        String str = fo2Var.a;
        super(fo2Var.c, fo2Var.d, str);
        this.n = lq5Var;
        this.p = st5Var;
        this.q = fo2Var;
        this.r = "ODownloadSession: ".concat(fo2Var.a());
    }

    @Override // defpackage.no2
    public final void a() {
        vr6 vr6Var = vr6.INSTANCE;
        vr6.w$default(vr6Var, this.r, "User cancelled the download", null, 4, null);
        tb1 tb1Var = tb1.a;
        vr6.w$default(vr6Var, this.r, eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
        close();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        gv7 gv7Var = f13.a;
        f13.a(this.t);
        f13.a(this.x);
        f13.a(this.y);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0048  */
    /* JADX WARN: Code duplicated, block: B:31:0x0050  */
    /* JADX WARN: Code duplicated, block: B:33:0x0054  */
    /* JADX WARN: Code duplicated, block: B:35:0x0060  */
    @Override // defpackage.no2
    public final void g() {
        boolean z;
        MFirebaseUser mFirebaseUserA;
        try {
            d45.b.getClass();
            mFirebaseUserA = d45.a();
        } catch (Exception unused) {
        }
        boolean z2 = false;
        if (pe4.d(mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null, Boolean.TRUE)) {
            z = false;
        } else {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z = sharedPreferences.getBoolean("allow_multithreaded_downloads", false);
            } catch (ClassCastException unused2) {
                z = false;
            }
        }
        fo2 fo2Var = this.q;
        if (z) {
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences2.getBoolean("multithreaded_downloads", false);
                if (z2) {
                    if (fo2Var.f) {
                        this.e.b = new pb3("OneDrive parallel ranged downloads are disabled because live benchmarking shows they are significantly slower than single-stream downloads.");
                        return;
                    }
                    vr6.i$default(vr6.INSTANCE, this.r, "OneDrive parallel ranged downloads disabled; using single-stream download", null, 4, null);
                } else if (fo2Var.e || fo2Var.f) {
                    if (fo2Var.f) {
                        this.e.b = new pb3("OneDrive parallel ranged downloads are disabled because live benchmarking shows they are significantly slower than single-stream downloads.");
                        return;
                    }
                    vr6.i$default(vr6.INSTANCE, this.r, "OneDrive parallel ranged downloads disabled; using single-stream download", null, 4, null);
                }
            } catch (ClassCastException unused3) {
            }
        } else if (fo2Var.e) {
            if (fo2Var.f) {
                this.e.b = new pb3("OneDrive parallel ranged downloads are disabled because live benchmarking shows they are significantly slower than single-stream downloads.");
                return;
            }
            vr6.i$default(vr6.INSTANCE, this.r, "OneDrive parallel ranged downloads disabled; using single-stream download", null, 4, null);
        } else {
            if (fo2Var.f) {
                this.e.b = new pb3("OneDrive parallel ranged downloads are disabled because live benchmarking shows they are significantly slower than single-stream downloads.");
                return;
            }
            vr6.i$default(vr6.INSTANCE, this.r, "OneDrive parallel ranged downloads disabled; using single-stream download", null, 4, null);
        }
        j();
    }

    public final void j() {
        lq5 lq5Var = this.n;
        String str = this.a;
        String strJ = eq3.j(this.r, ": executeDownload");
        Timer timer = new Timer();
        int i = 3;
        dz dzVar = new dz(i, this, new kh6(), new kh6());
        try {
            try {
                lq5Var.invoke();
                tb1 tb1Var = tb1.a;
                Response responseL = st5.l(this.p, qb1.b(str));
                this.t = responseL;
                InputStream inputStreamA = responseL.k.a();
                this.x = inputStreamA;
                q63 q63Var = this.b;
                boolean z = q63.d;
                f86 f86Var = new f86(q63Var.F(true), this.q.c, new b30(dzVar, i));
                this.y = f86Var;
                try {
                    try {
                        cy0.j(inputStreamA, f86Var, 262144);
                        f86Var.close();
                        inputStreamA.close();
                        timer.cancel();
                        close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(inputStreamA, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        rs9.c(f86Var, th3);
                        throw th4;
                    }
                }
            } catch (Exception e) {
                if (!this.d.isCancelled()) {
                    Log.e(strJ, "Error when downloading " + str + ". Stacktrace:\n" + yc9.g0(e));
                    ai6 ai6Var = nf1.a;
                    if ((x13.J(e) || x13.G(e) || x13.I(e) || x13.C(e) || x13.B(e) || x13.D(e)) && (!x13.B(e) || ((Boolean) lq5Var.invoke()).booleanValue())) {
                        Log.d(strJ, "Retrying download");
                        Const.R();
                        j();
                    } else {
                        vr6 vr6Var = vr6.INSTANCE;
                        vr6.e$default(vr6Var, strJ, "Error while downloading from Drive: File id = " + str + ", Error = " + e.getMessage(), null, 4, null);
                        if (e instanceof mt5) {
                            vr6.e$default(vr6Var, this.r, l73.E((mt5) e), null, 4, null);
                        }
                        this.e.b = e;
                    }
                }
            }
        } catch (Throwable th5) {
            timer.cancel();
            close();
            throw th5;
        }
    }
}
