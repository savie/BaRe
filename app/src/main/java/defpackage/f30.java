package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.TextView;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f30 extends gm7 implements p53 {
    public final AppsConfigRunActivity l;
    public final TextView m;
    public final e7 n;
    public final k3 o;
    public final int p;
    public final String q;
    public final String r;
    public final boolean s;

    public f30(AppsConfigRunActivity appsConfigRunActivity, TextView textView, e7 e7Var, k3 k3Var) {
        super(null);
        this.l = appsConfigRunActivity;
        this.m = textView;
        this.n = e7Var;
        this.o = k3Var;
        this.p = 1;
        SwiftApp.Companion companion = SwiftApp.d;
        this.q = dj7.g(R.string.last_backup);
        this.r = dj7.g(R.string.last_synced);
        this.s = V.INSTANCE.getA();
        this.k = true;
    }

    @Override // defpackage.p53
    public final String a(int i) {
        iy iyVar = iy.a;
        String upperCase = null;
        switch (e30.b[iy.b().ordinal()]) {
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
    public final int d(int i) {
        if (((ji) m(i)).isCloudApp()) {
            return this.p;
        }
        return 0;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ji jiVar = (ji) m(i);
        iy iyVar = iy.a;
        ((tr) fh6Var).s(jiVar, iy.b(), false);
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.app_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = 0;
        int i3 = 1;
        boolean z = i == this.p;
        String str = i == 0 ? this.q : this.r;
        qr qrVar = tr.n0;
        Context context = view.getContext();
        context.getClass();
        return new tr(view, this, z, str, qr.c(context), new b30(this, i2), new rs(this, i3), this.s, null, null, true, this.l.v(), 4352);
    }

    public final void y() {
        TextView textView = this.m;
        Context context = textView.getContext();
        int iK = k();
        int iB = b();
        String string = context.getString(R.string.selected);
        string.getClass();
        String string2 = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string2 = sharedPreferences.getString("app_locale", null);
            String lowerCase = string.toLowerCase((string2 == null || string2.length() == 0) ? xx3.h().a() : xx3.g(string2).a());
            lowerCase.getClass();
            textView.setText(iK + "/" + iB + TokenAuthenticationScheme.SCHEME_DELIMITER + lowerCase);
        } catch (ClassCastException unused) {
        }
    }
}
