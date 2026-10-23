package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r20 extends et {
    public static ArrayList r;
    public boolean g;
    public boolean h;
    public zc6 i;
    public ArrayList j;
    public final ex6 k;
    public final ex6 l;
    public final ix6 m;
    public List n;
    public boolean o;
    public String p;
    public fm7 q;

    public r20() {
        boolean z = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            this.h = z;
            this.k = new ex6();
            this.l = new ex6();
            this.m = new ix6();
            this.p = "";
            this.q = new fm7((List) null, (Set) null, false, (String) null, 31);
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        super.b();
        r = null;
    }

    public final void k(ArrayList arrayList, ty7 ty7Var) {
        if (arrayList.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, this.b, "Empty propsList!", null, 4, null);
            return;
        }
        rw6 rw6Var = new rw6(c40.class, new o20(0, arrayList, ty7Var));
        zc6 zc6Var = this.i;
        if (zc6Var != null) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String string = contextC.getString(R.string.apps);
            string.getClass();
            String string2 = contextC.getString(zc6Var.c);
            if (string2 == null || nq7.j0(string2)) {
                string2 = null;
            }
            rw6Var.d = new vq(string, string2, (Set) null);
        }
        this.m.i(rw6Var);
    }

    public final synchronized void l(String str, List list, Set set) {
        try {
            list.getClass();
            set.getClass();
            this.p = str == null ? "" : str;
            if (str != null && str.length() != 0) {
                List listK = new ns0(5).k(nq7.H0(str).toString(), list);
                if (listK == null || listK.isEmpty()) {
                    m(ov2.a, set);
                } else {
                    m(listK, set);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void m(List list, Set set) {
        this.k.k(!list.isEmpty() ? ym7.DATA_RECEIVED : ym7.DATA_EMPTY);
        this.l.k(new fm7(list, set, true, (String) null, 20));
        if (this.o) {
            return;
        }
        this.n = list;
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onAppTaskComplete(d40 d40Var) {
        d40Var.getClass();
        d();
    }
}
