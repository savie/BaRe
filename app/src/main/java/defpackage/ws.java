package defpackage;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.TextView;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ws extends gm7 implements p53 {
    public final il0 l;
    public final boolean m;
    public final String n;
    public final boolean o;
    public TextView p;
    public boolean q;
    public String r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ws(il0 il0Var, tt ttVar, boolean z) {
        super(null);
        ttVar.getClass();
        this.l = il0Var;
        this.m = z;
        String string = il0Var.getString(z ? R.string.last_synced : R.string.last_backup);
        string.getClass();
        this.n = string;
        this.o = V.INSTANCE.getA();
        this.r = y();
        this.k = true;
    }

    public static String y() {
        xy xyVar = xy.Right;
        xyVar.getClass();
        String strM = ho6.m(ho6.o(xyVar));
        xy xyVar2 = xy.Left;
        xyVar2.getClass();
        return dj7.k(strM, ":", ho6.m(ho6.o(xyVar2)));
    }

    @Override // defpackage.p53
    public final String a(int i) {
        iy iyVar = iy.a;
        String upperCase = null;
        switch (ts.b[iy.b().ordinal()]) {
            case 1:
                Object objC0 = nq7.c0(((ji) m(i)).getName());
                if (objC0 == null) {
                    objC0 = "?";
                }
                String string = objC0.toString();
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    upperCase = sharedPreferences.getString("app_locale", null);
                    upperCase = string.toUpperCase((upperCase == null || upperCase.length() == 0) ? xx3.h().a() : xx3.g(upperCase).a());
                    upperCase.getClass();
                    break;
                } catch (ClassCastException unused) {
                }
                break;
            case 2:
                Long dateInstalled = ((ji) m(i)).getDateInstalled();
                if (dateInstalled != null) {
                    upperCase = Const.s(dateInstalled.longValue());
                }
                break;
            case 3:
                Long dateUpdated = ((ji) m(i)).getDateUpdated();
                if (dateUpdated != null) {
                    upperCase = Const.s(dateUpdated.longValue());
                }
                break;
            case 4:
                Long dateBackup = ((ji) m(i)).getDateBackup();
                if (dateBackup != null) {
                    upperCase = Const.s(dateBackup.longValue());
                }
                break;
            case 5:
                qx sizeInfo = ((ji) m(i)).getSizeInfo();
                if (sizeInfo != null) {
                    upperCase = sizeInfo.getTotalSizeString();
                }
                break;
            case 6:
                Long l = (Long) iy.d.get(((ji) m(i)).getPackageName());
                if (l != null) {
                    if (l.longValue() <= 0) {
                        l = null;
                    }
                    if (l != null) {
                        long jLongValue = l.longValue();
                        p93 p93Var = p93.a;
                        upperCase = p93.c(Long.valueOf(jLongValue));
                    }
                }
                break;
            case 7:
                Long l2 = (Long) iy.e.get(((ji) m(i)).getPackageName());
                if (l2 != null) {
                    upperCase = Const.s(l2.longValue());
                }
                break;
            default:
                q.j();
                return null;
        }
        return upperCase != null ? upperCase : "---";
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ji jiVar = (ji) m(i);
        iy iyVar = iy.a;
        ((tr) fh6Var).s(jiVar, iy.b(), this.q);
        Set set = j94.a;
        j94.e(this.e.a, i + 1, 12);
        this.q = false;
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.app_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        qr qrVar = tr.n0;
        il0 il0Var = this.l;
        int iC = qr.c(il0Var);
        boolean zV = il0Var.v();
        int i2 = 0;
        return new tr(view, this, this.m, this.n, iC, new ps(this, i2), new qs(i2, view, this), this.o, new rs(this, i2), new ss(this, i2), false, zV, 896);
    }

    public final void z() {
        String string;
        String string2 = this.l.getString(R.string.x_apps, String.valueOf(b()));
        string2.getClass();
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            String lowerCase = string2.toLowerCase((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
            lowerCase.getClass();
            TextView textView = this.p;
            if (textView == null) {
                pe4.F("tvToolbarSubtitle");
                throw null;
            }
            if (!qq.c(fl1.C0(dd3.a, ud3.a, gd3.a, md3.a, rd3.a, de3.a, jd3.a, ae3.a), this.m).isEmpty()) {
                SwiftApp.Companion companion = SwiftApp.d;
                lowerCase = u48.n(lowerCase, " (", SwiftApp.Companion.c().getString(R.string.filters_active), ")");
            }
            textView.setText(lowerCase);
        } catch (ClassCastException unused) {
            string = null;
        }
    }
}
