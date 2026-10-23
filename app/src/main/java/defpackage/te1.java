package defpackage;

import android.content.SharedPreferences;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class te1 {
    public final tb1 a;
    public final td1 b;
    public qe1 c;
    public String d;
    public boolean e;
    public boolean f;
    public final /* synthetic */ we1 g;

    public te1(we1 we1Var, tb1 tb1Var, td1 td1Var) {
        this.g = we1Var;
        this.a = tb1Var;
        this.b = td1Var;
    }

    public final void a(ke keVar) {
        if (this.e) {
            return;
        }
        sd1 sd1Var = (sd1) el1.b1(this.b.b);
        if (sd1Var == null) {
            sd1Var = sd1.PROVIDER_TRANSFER_PIPELINE;
        }
        String str = this.d;
        if (str != null) {
            this.g.b(sd1Var, keVar, this.a, str);
            this.d = null;
        }
        qe1 qe1Var = this.c;
        if (qe1Var != null) {
            we1.c(qe1Var);
        }
        this.c = null;
        this.e = true;
    }

    public final void b(sd1 sd1Var, ke keVar) {
        if (sd1Var == ((sd1) el1.b1(this.b.b))) {
            String str = this.d;
            if (str != null) {
                this.g.g(sd1Var, keVar, this.a, str, false);
                this.d = null;
            }
            qe1 qe1Var = this.c;
            if (qe1Var != null) {
                we1.c(qe1Var);
            }
            this.c = null;
            this.e = true;
        }
    }

    public final void c(sd1 sd1Var, ke keVar, oe1 oe1Var) throws NoSuchAlgorithmException, IOException {
        boolean z = oe1Var.b;
        boolean z2 = oe1Var.a;
        if (z2 || z || !this.f) {
            qe1 qe1Var = this.c;
            if (qe1Var == null) {
                l0.e("Required value was null.");
                return;
            }
            q63 q63Var = qe1Var.b;
            we1.o(q63Var);
            String str = this.d;
            if (str == null) {
                l0.e("Required value was null.");
                return;
            }
            td1 td1Var = this.b;
            long j = td1Var.a;
            we1 we1Var = this.g;
            we1Var.l(sd1Var, keVar, this.a, str, j, q63Var, oe1Var);
            we1Var.C(td1Var.a, q63Var, qe1Var.c);
            if (z2 || z) {
                return;
            }
            this.f = true;
        }
    }

    public final void d(final sd1 sd1Var, final ke keVar) throws Throwable {
        ke keVar2;
        String strB;
        td1 td1Var = this.b;
        long j = td1Var.a;
        if (this.d != null) {
            return;
        }
        final we1 we1Var = this.g;
        tb1 tb1Var = this.a;
        we1Var.m(tb1Var);
        final qe1 qe1VarE = we1Var.e(j);
        this.c = qe1VarE;
        this.e = false;
        this.f = false;
        try {
            String string = we1Var.a.getString(R.string.cloud_diagnostics_preparing_file, we1.n(j));
            string.getClass();
            keVar.g(sd1Var, string);
            try {
                if (td1Var.c) {
                    dd1 dd1VarG = tb1Var.g();
                    try {
                        bt3 bt3Var = new bt3() { // from class: se1
                            @Override // defpackage.bt3
                            public final Object invoke() {
                                return we1.B(we1Var, sd1Var, keVar, this.a, qe1VarE.a, 0, null, 96);
                            }
                        };
                        keVar2 = keVar;
                        this = this;
                        strB = (String) we1.F(dd1VarG, bt3Var);
                    } catch (Throwable th) {
                        th = th;
                        keVar2 = keVar;
                        this = this;
                        Throwable th2 = th;
                        this.a(keVar2);
                        throw th2;
                    }
                } else {
                    keVar2 = keVar;
                    strB = we1.B(we1Var, sd1Var, keVar2, tb1Var, qe1VarE.a, 0, null, 96);
                }
                this.d = strB;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            keVar2 = keVar;
        }
    }

    public final String e(sd1 sd1Var, ke keVar) throws Throwable {
        sd1Var.getClass();
        d(sd1Var, keVar);
        c(sd1Var, keVar, new oe1(false, false));
        b(sd1Var, keVar);
        String string = this.g.a.getString(R.string.cloud_diagnostics_round_trip_passed, we1.n(this.b.a));
        string.getClass();
        return string;
    }

    public final String f(sd1 sd1Var, ke keVar) {
        sd1Var.getClass();
        tb1 tb1Var = this.a;
        we1 we1Var = this.g;
        we1Var.m(tb1Var);
        int iT = ho6.t();
        gv7 gv7Var = oi5.L;
        Integer num = (Integer) el1.c1(ly8.u());
        int iIntValue = num != null ? num.intValue() : ly8.v();
        try {
            ho6.V(iIntValue);
            d(sd1Var, keVar);
            c(sd1Var, keVar, new oe1(true, true));
            ho6.V(iT);
            b(sd1Var, keVar);
            String string = we1Var.a.getString(R.string.cloud_diagnostics_multithread_download_passed, we1.n(this.b.a), Integer.valueOf(iIntValue));
            string.getClass();
            return string;
        } catch (Throwable th) {
            SharedPreferences.Editor editor = cz4.k;
            if (editor != null) {
                editor.putInt("multithreaded_downloads_chunk_count", iT).apply();
                throw th;
            }
            pe4.F("editor");
            throw null;
        }
    }

    public final String g(sd1 sd1Var, ke keVar) throws Throwable {
        sd1Var.getClass();
        d(sd1Var, keVar);
        c(sd1Var, keVar, new oe1(false, false));
        b(sd1Var, keVar);
        String string = this.g.a.getString(R.string.cloud_diagnostics_provider_transfer_mode_passed, this.a.g().getDisplayName(), we1.n(this.b.a));
        string.getClass();
        return string;
    }
}
