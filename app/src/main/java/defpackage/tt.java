package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tt extends et {
    public boolean g;
    public final ex6 h;
    public final ex6 i;
    public List j;
    public boolean k;
    public String l;
    public List m;
    public dv n;
    public final st o;

    public tt() {
        ex6 ex6Var = new ex6();
        ex6Var.k(nt.a);
        this.h = ex6Var;
        this.i = new ex6();
        ov2 ov2Var = ov2.a;
        this.j = ov2Var;
        this.l = "";
        this.m = ov2Var;
        this.o = new st(this);
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        dv dvVar = this.n;
        if (dvVar == null) {
            pe4.F("repo");
            throw null;
        }
        dvVar.p(this.o);
        super.b();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0060  */
    /* JADX WARN: Code duplicated, block: B:27:0x0080  */
    public final void k(boolean z, boolean z2) {
        ce3 ce3Var;
        Object next;
        Log.d(this.b, "loadApps called for repo (isCloudSection=" + this.e + ")");
        String string = ce3.All.toString();
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("key_filter_app_synced", string);
            if (string != null) {
                Iterator it = ((z3) ce3.getEntries()).iterator();
                do {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        next = null;
                        break;
                    }
                    next = w3Var.next();
                } while (!pe4.d(((ce3) next).toString(), string));
                ce3Var = (ce3) next;
                if (ce3Var == null) {
                    ce3Var = ce3.All;
                }
            } else {
                ce3Var = ce3.All;
            }
            if (!this.e && ce3Var.isApplied()) {
                SwiftApp.Companion companion = SwiftApp.d;
                if (ai8.i(SwiftApp.Companion.c())) {
                    tb1 tb1Var = tb1.a;
                    if (!qb1.m()) {
                        ai8.m(SwiftApp.Companion.c(), R.string.no_internet_connection);
                        vr6.e$default(vr6.INSTANCE, this.b, "Resetting sync mode filter as no internet connection", null, 4, null);
                        ce3Var.reset();
                    }
                } else {
                    ai8.m(SwiftApp.Companion.c(), R.string.no_internet_connection);
                    vr6.e$default(vr6.INSTANCE, this.b, "Resetting sync mode filter as no internet connection", null, 4, null);
                    ce3Var.reset();
                }
            }
            dv dvVar = this.n;
            if (dvVar != null) {
                dv.i(dvVar, z, this.o, z || z2, false, 8);
            } else {
                pe4.F("repo");
                throw null;
            }
        } catch (ClassCastException unused) {
        }
    }

    public final void l() {
        j(qq.c(fl1.C0(dd3.a, ud3.a, gd3.a, md3.a, rd3.a, de3.a, jd3.a, ae3.a), this.e));
    }

    public final synchronized void m(String str, List list) {
        try {
            list.getClass();
            this.l = str == null ? "" : str;
            this.m = list;
            if (str != null && str.length() != 0) {
                String string = nq7.H0(str).toString();
                List listK = new ns0(5).k(string, list);
                if (listK == null || listK.isEmpty()) {
                    n(new mt(string), new ArrayList(), true);
                } else {
                    n(pt.a, listK, true);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void n(qt qtVar, List list, boolean z) {
        this.h.i(qtVar);
        this.i.i(new fm7(list, (Set) null, z, (String) null, 22));
        if (this.k) {
            return;
        }
        this.j = list;
    }
}
