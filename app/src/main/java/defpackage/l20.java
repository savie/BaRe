package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.TextView;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l20 extends gm7 implements p53 {
    public final AppsBatchActivity l;
    public final boolean m;
    public final TextView n;
    public final zs o;
    public final lm p;
    public final String q;
    public final boolean r;

    public l20(AppsBatchActivity appsBatchActivity, boolean z, TextView textView, zs zsVar, lm lmVar) {
        super(null);
        this.l = appsBatchActivity;
        this.m = z;
        this.n = textView;
        this.o = zsVar;
        this.p = lmVar;
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(z ? R.string.last_synced : R.string.last_backup);
        string.getClass();
        this.q = string;
        this.r = V.INSTANCE.getA();
        this.k = true;
    }

    @Override // defpackage.p53
    public final String a(int i) {
        ji jiVar;
        String upperCase = null;
        try {
            jiVar = (ji) m(i);
        } catch (Exception unused) {
            jiVar = null;
        }
        if (jiVar == null) {
            return "---";
        }
        iy iyVar = iy.a;
        switch (k20.b[iy.b().ordinal()]) {
            case 1:
                Object objC0 = nq7.c0(jiVar.getName());
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
                } catch (ClassCastException unused2) {
                }
                break;
            case 2:
                Long dateInstalled = jiVar.getDateInstalled();
                if (dateInstalled != null) {
                    upperCase = Const.s(dateInstalled.longValue());
                }
                break;
            case 3:
                Long dateUpdated = jiVar.getDateUpdated();
                if (dateUpdated != null) {
                    upperCase = Const.s(dateUpdated.longValue());
                }
                break;
            case 4:
                Long dateBackup = jiVar.getDateBackup();
                if (dateBackup != null) {
                    upperCase = Const.s(dateBackup.longValue());
                }
                break;
            case 5:
                qx sizeInfo = jiVar.getSizeInfo();
                if (sizeInfo != null) {
                    upperCase = sizeInfo.getTotalSizeString();
                }
                break;
            case 6:
                Long l = (Long) iy.d.get(jiVar.getPackageName());
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
                Long l2 = (Long) iy.e.get(jiVar.getPackageName());
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
        ((tr) fh6Var).s(jiVar, iy.b(), false);
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.app_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        qr qrVar = tr.n0;
        Context context = view.getContext();
        context.getClass();
        return new tr(view, this, this.m, this.q, qr.c(context), new h20(this, 0), new ps(this, 1), this.r, null, null, true, this.l.v(), 4864);
    }

    public final void y() {
        TextView textView = this.n;
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
