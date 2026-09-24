package defpackage;

import android.util.Log;
import android.view.View;
import java.util.Arrays;
import java.util.Map;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sh implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ sh(int i) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ea  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        boolean z = false;
        switch (this.a) {
            case 0:
                q63 q63Var = (q63) obj;
                q63Var.getClass();
                if (q63Var.y() && q63Var.m().equalsIgnoreCase("apk")) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 1:
                String str = (String) obj;
                str.getClass();
                return eq3.k("'", uq7.T(str, "'", "'\"'\"'"), "'");
            case 2:
                ji jiVar = (ji) obj;
                jiVar.getClass();
                return Long.valueOf(io4.h((Long) iy.e.get(jiVar.getPackageName())));
            case 3:
                q05 q05Var = (q05) obj;
                q05Var.getClass();
                return q05Var.toDisplayString();
            case 4:
                br2 br2Var = (br2) obj;
                br2Var.getClass();
                Long lA = null;
                fl4 fl4VarE = br2Var.e(null, "/2/users/get_space_usage");
                qj4 qj4VarX = fl4VarE.x("allocation");
                fl4 fl4VarI = (qj4VarX == null || !(qj4VarX instanceof fl4)) ? null : qj4VarX.i();
                Long lA2 = jd4.A(fl4VarE, "used");
                long jLongValue = lA2 != null ? lA2.longValue() : 0L;
                String strH = fl4VarI != null ? jd4.H(fl4VarI, ".tag") : null;
                if (strH != null) {
                    int iHashCode = strH.hashCode();
                    if (iHashCode != -46292327) {
                        if (iHashCode != 3555933) {
                            if (iHashCode == 106069776 && strH.equals("other")) {
                                lA = -1L;
                            }
                        } else if (strH.equals("team")) {
                            lA = jd4.A(fl4VarI, "allocated");
                        }
                        if (fl4VarI != null) {
                            lA = jd4.A(fl4VarI, "allocated");
                        }
                    } else if (strH.equals("individual")) {
                        lA = jd4.A(fl4VarI, "allocated");
                    } else if (fl4VarI != null) {
                        lA = jd4.A(fl4VarI, "allocated");
                    }
                } else if (fl4VarI != null) {
                    lA = jd4.A(fl4VarI, "allocated");
                }
                return new er2(jLongValue, lA);
            case 5:
                String str2 = (String) obj;
                str2.getClass();
                return Boolean.valueOf(uq7.V(str2, ".fuse", false));
            case 6:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 7:
                dy1 dy1Var = (dy1) obj;
                dy1Var.getClass();
                Log.w("FirebaseSessions", "CorruptionException in session configs DataStore", dy1Var);
                return q34.f;
            case 8:
                String str3 = (String) obj;
                str3.getClass();
                return nq7.H0(str3).toString();
            case XmlPullParser.COMMENT /* 9 */:
                pw5 pw5Var = (pw5) obj;
                pw5Var.getClass();
                return (s54) pw5Var.b;
            case 10:
                View view = (View) obj;
                Map map = ScheduleFabMenuView.K;
                view.getClass();
                return Boolean.valueOf(view.getVisibility() == 0);
            default:
                AppCloudBackup appCloudBackup = (AppCloudBackup) obj;
                appCloudBackup.getClass();
                return appCloudBackup.getBackupId();
        }
    }
}
