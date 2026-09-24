package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class er implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ er(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ji jiVar = (ji) obj;
                ((tr) obj2).F.invoke(jiVar, Boolean.valueOf(jiVar.isFavorite()));
                break;
            case 1:
                gt gtVar = (gt) obj2;
                LabelParams labelParams = (LabelParams) obj;
                qt3 qt3Var = gtVar.x.e;
                if (qt3Var != null) {
                    qt3Var.invoke(labelParams, Integer.valueOf(gtVar.b()));
                }
                break;
            case 2:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) obj2;
                int i2 = ConfigEditActivity.V;
                sa1.R(configEditActivity, null, new cv(5, configEditActivity, (Config) obj), 1);
                break;
            case 3:
                MessagesDashActivity messagesDashActivity = (MessagesDashActivity) obj2;
                ArrayList arrayList = (ArrayList) obj;
                int i3 = MessagesDashActivity.T;
                if (Const.d(messagesDashActivity)) {
                    tb1 tb1Var = tb1.a;
                    if (qb1.m()) {
                        Const.K(messagesDashActivity, R.string.delete_all, new l30(messagesDashActivity, arrayList), null);
                        break;
                    }
                }
                break;
            default:
                SLogActivity sLogActivity = (SLogActivity) obj2;
                int i4 = SLogActivity.R;
                boolean z = ((et7) obj).b;
                vr6 vr6Var = vr6.INSTANCE;
                String strR = sLogActivity.r();
                StringBuilder sb = new StringBuilder("Share logs called with SwiftLogger");
                if (z) {
                    sb.append(" + Logcat");
                }
                vr6.i$default(vr6Var, strR, sb.toString(), null, 4, null);
                sz8.m((u35) sLogActivity.Q.getValue());
                sLogActivity.M(R.string.preparing);
                fm7 fm7Var = (fm7) sLogActivity.a0().e.d();
                List list = fm7Var != null ? fm7Var.a : null;
                if (list == null) {
                    c6.f("Required value was null.");
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new yr6(list, sLogActivity, z, null));
                }
                break;
        }
    }
}
