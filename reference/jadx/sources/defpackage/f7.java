package defpackage;

import android.content.Intent;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ f7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                o7 o7Var = (o7) obj3;
                q7 q7Var = (q7) obj;
                ((Integer) obj2).getClass();
                q7Var.getClass();
                switch (q7Var.a) {
                    case 1:
                        int i2 = SettingsActivity.Z;
                        bb9.I(o7Var.i());
                        return be8Var;
                    case 2:
                        ai8.q(o7Var.i(), SLogActivity.class);
                        return be8Var;
                    case 3:
                        ai8.q(o7Var.i(), LocaleActivity.class);
                        return be8Var;
                    case 4:
                        HomeActivity homeActivityI = o7Var.i();
                        ai8.l(homeActivityI, homeActivityI.getPackageName());
                        return be8Var;
                    case 5:
                        int i3 = SettingsDetailActivity.R;
                        HomeActivity homeActivityI2 = o7Var.i();
                        String string = o7Var.getString(R.string.about);
                        string.getClass();
                        jb9.g0(homeActivityI2, 6, string);
                        return be8Var;
                    case 6:
                        int i4 = SettingsDetailActivity.R;
                        HomeActivity homeActivityI3 = o7Var.i();
                        String string2 = o7Var.getString(R.string.contact);
                        string2.getClass();
                        jb9.g0(homeActivityI3, 5, string2);
                        return be8Var;
                    case 7:
                        Const.B(o7Var.i(), "https://www.swiftapps.org/help");
                        return be8Var;
                    case 8:
                        Intent intent = new Intent("android.intent.action.SEND");
                        intent.setType("text/plain");
                        intent.putExtra("android.intent.extra.SUBJECT", o7Var.getString(R.string.share_swiftbackup_subject));
                        intent.putExtra("android.intent.extra.TEXT", o7Var.getString(R.string.share_swiftbackup_msg));
                        o7Var.startActivity(Intent.createChooser(intent, o7Var.getString(R.string.share_swiftbackup)));
                        return be8Var;
                    case XmlPullParser.COMMENT /* 9 */:
                        ai8.q(o7Var.i(), ContributorRegActivity.class);
                        return be8Var;
                    default:
                        return be8Var;
                }
            case 1:
                AppsConfigRunActivity appsConfigRunActivity = (AppsConfigRunActivity) obj3;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ((Boolean) obj2).getClass();
                f30 f30Var = appsConfigRunActivity.j0;
                if (f30Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                f30Var.y();
                appsConfigRunActivity.j0(zBooleanValue);
                return be8Var;
            case 2:
                rz0 rz0Var = (rz0) obj;
                ((Integer) obj2).getClass();
                int i5 = CallsDashActivity.T;
                rz0Var.getClass();
                ((CallsDashActivity) obj3).V(rz0Var);
                return be8Var;
            case 3:
                ((wj3) obj3).c.invoke(Integer.valueOf(Const.r(((Long) obj).longValue(), ((Long) obj2).longValue())));
                return be8Var;
            case 4:
                x27 x27Var = (x27) obj;
                ((Integer) obj2).getClass();
                x27Var.getClass();
                ((w27) obj3).t(sz8.Y(x27Var.a.toString()));
                return be8Var;
            case 5:
                LabelParams labelParams = (LabelParams) obj;
                ((Integer) obj2).getClass();
                int i6 = ScheduleLabelsSelectActivity.X;
                labelParams.getClass();
                ((ScheduleLabelsSelectActivity) obj3).V().j(labelParams.getId(), false);
                return be8Var;
            case 6:
                ((Boolean) obj).getClass();
                boolean zBooleanValue2 = ((Boolean) obj2).booleanValue();
                MaterialButton materialButton = ((a47) obj3).p;
                materialButton.setEnabled(!zBooleanValue2);
                materialButton.setAlpha(materialButton.isEnabled() ? 1.0f : 0.5f);
                return be8Var;
            default:
                WallsManageActivity wallsManageActivity = (WallsManageActivity) obj3;
                ((Boolean) obj).getClass();
                if (((Boolean) obj2).booleanValue()) {
                    mo8 mo8Var = wallsManageActivity.R;
                    if (mo8Var == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    mo8Var.u(false);
                } else {
                    int i7 = WallsManageActivity.S;
                    boolean z = wallsManageActivity.a0().h;
                    mo8 mo8Var2 = wallsManageActivity.R;
                    if (mo8Var2 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    wallsManageActivity.Z(z, mo8Var2.e.c);
                }
                return be8Var;
        }
    }
}
