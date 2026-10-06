package defpackage;

import android.view.View;
import java.util.Iterator;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hs implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ hs(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                AppListActivity appListActivity = (AppListActivity) obj;
                int i2 = AppListActivity.q0;
                Iterator it = fl1.C0(dd3.a, ud3.a, gd3.a, md3.a, rd3.a, de3.a, jd3.a, ae3.a).iterator();
                while (it.hasNext()) {
                    ((od3) it.next()).reset();
                }
                appListActivity.c0();
                break;
            case 1:
                int i3 = AppsBatchActivity.s0;
                ((AppsBatchActivity) obj).finish();
                break;
            case 2:
                int i4 = AppsConfigRunActivity.m0;
                ((AppsConfigRunActivity) obj).g0().i0(0);
                break;
            case 3:
                CallsDashActivity callsDashActivity = (CallsDashActivity) obj;
                int i5 = CallsDashActivity.T;
                sa1.R(callsDashActivity, null, new ck(callsDashActivity, 11), 1);
                break;
            case 4:
                int i6 = ConfigListActivity.R;
                ((ConfigListActivity) obj).N().i0(0);
                break;
            case 5:
                int i7 = FolderPickerActivity.Q;
                in3 in3VarO = ((FolderPickerActivity) obj).V();
                zn4 zn4Var = zn4.a;
                zn4.c(new ak(in3VarO, 17));
                break;
            case 6:
                kp3 kp3Var = (kp3) obj;
                sa1.R(kp3Var.i(), null, new gj(kp3Var, 19), 1);
                break;
            case 7:
                a14 a14Var = (a14) obj;
                a14Var.n.invoke(Boolean.TRUE, Boolean.FALSE);
                a14Var.j(false);
                break;
            case 8:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj;
                homeSearchActivity.W = !homeSearchActivity.W;
                pb0 pb0Var = new pb0();
                pb0Var.G(160L);
                pb0Var.I(HomeSearchActivity.X);
                da8.a(homeSearchActivity.X().H, pb0Var);
                homeSearchActivity.b0(homeSearchActivity.V);
                break;
            case XmlPullParser.COMMENT /* 9 */:
                MessagesDashActivity messagesDashActivity = (MessagesDashActivity) obj;
                int i8 = MessagesDashActivity.T;
                sa1.R(messagesDashActivity, null, new ak(messagesDashActivity, 27), 1);
                break;
            default:
                n97 n97Var = (n97) obj;
                n97Var.f.invoke(m97.CLEAR_LABELS);
                n97Var.j(true);
                break;
        }
    }
}
