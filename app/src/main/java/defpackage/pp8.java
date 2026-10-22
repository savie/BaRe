package defpackage;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.util.SparseIntArray;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pp8 extends po8 {
    public boolean g;
    public op8 k;
    public np8 l;
    public lp8 m;
    public boolean q;
    public final uv7 h = uv7.a;
    public final c05 i = c05.g;
    public final xj1 j = xj1.g;
    public final gv7 n = new gv7(new pu(this, 17));
    public final List o = nc8.I("net.oneplus.launcher");
    public final SparseIntArray p = new SparseIntArray();
    public final ex6 r = new ex6();
    public final ex6 s = new ex6();
    public final ex6 t = new ex6();
    public final ix6 u = new ix6();

    public pp8() {
        zn4 zn4Var = zn4.a;
        zn4.b(null, new lb2(this, null, 3));
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        this.i.p(this.l);
        this.j.p(this.m);
        op8 op8Var = this.k;
        this.h.getClass();
        uv7.b.remove(op8Var);
        super.b();
    }

    public final void k() {
        String string;
        ActivityInfo activityInfo;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        g00 g00Var = g00.a;
        ResolveInfo resolveInfoResolveActivity = g00.r().resolveActivity(intent, 65536);
        String str = (resolveInfoResolveActivity == null || (activityInfo = resolveInfoResolveActivity.activityInfo) == null) ? null : activityInfo.packageName;
        if (str == null) {
            return;
        }
        boolean zContains = this.o.contains(str);
        if (zContains) {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences.getString("KEY_SAVED_UNSUPPORTED_LAUNCHER", "");
                if (!pe4.d(string, str)) {
                    this.u.k(str);
                }
            } catch (ClassCastException unused) {
                string = "";
            }
        }
        if (zContains) {
            return;
        }
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("KEY_SAVED_UNSUPPORTED_LAUNCHER", "").apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public final void l(boolean z) {
        lp8 lp8Var = this.m;
        if (lp8Var != null) {
            this.j.p(lp8Var);
        }
        lp8 lp8Var2 = new lp8(this);
        this.m = lp8Var2;
        dv.i(this.j, z, lp8Var2, true, false, 8);
    }
}
