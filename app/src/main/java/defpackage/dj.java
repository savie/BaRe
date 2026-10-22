package defpackage;

import android.text.Editable;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.EditText;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dj implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ dj(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = 2;
        int i3 = 1;
        char c = 1;
        jv1 jv1Var = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                rj rjVar = (rj) obj;
                v53.a.f(rjVar.f, false);
                rjVar.I();
                return;
            case 1:
                int i4 = AppsBatchActivity.s0;
                r20 r20VarA0 = ((AppsBatchActivity) obj).a0();
                zc6 zc6Var = r20VarA0.i;
                if (zc6Var == null) {
                    return;
                }
                r20VarA0.k.k(ym7.LOADING);
                zn4.d(new m20(r20VarA0, zc6Var, (boolean) (c == true ? 1 : 0)));
                return;
            case 2:
                CallsBackupRestoreActivity callsBackupRestoreActivity = (CallsBackupRestoreActivity) obj;
                m01 m01Var = callsBackupRestoreActivity.T;
                if (m01Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                if (m01Var.b() > 0) {
                    callsBackupRestoreActivity.Y().i0(0);
                    return;
                }
                return;
            case 3:
                int i5 = CallsDashActivity.T;
                s11 s11VarZ = ((CallsDashActivity) obj).V();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new z2(s11VarZ, jv1Var, i2));
                return;
            case 4:
                r91 r91Var = (r91) obj;
                EditText editText = r91Var.i;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (view.hasFocus()) {
                    r91Var.i.requestFocus();
                }
                if (text != null) {
                    text.clear();
                }
                r91Var.p();
                return;
            case 5:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) obj;
                int i6 = CloudDiagnosticsActivity.Z;
                cloudDiagnosticsActivity.M(R.string.preparing);
                String str = cloudDiagnosticsActivity.X;
                if (str == null || nq7.j0(str)) {
                    str = null;
                }
                zn4 zn4Var2 = zn4.a;
                zn4.b(null, new s10(str, cloudDiagnosticsActivity, jv1Var, i3));
                return;
            case 6:
                mt3 mt3Var = ((uj2) obj).d;
                view.getClass();
                mt3Var.invoke(view);
                return;
            case 7:
                ((lr2) obj).t();
                return;
            case 8:
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                Editable text2 = ((HomeSearchActivity) obj).X().f.getText();
                if (text2 != null) {
                    text2.clear();
                    return;
                }
                return;
            case XmlPullParser.COMMENT /* 9 */:
                IntroActivity introActivity = (IntroActivity) obj;
                int i7 = IntroActivity.V;
                if (!b67.e()) {
                    l0.e("Notifications permission not needed below Android 13 (T)!");
                    return;
                } else {
                    dz5 dz5Var = dz5.a;
                    dz5.a(introActivity, new e11(introActivity, 3), "android.permission.POST_NOTIFICATIONS");
                    return;
                }
            case 10:
                int i8 = MessagesDashActivity.T;
                ye5 ye5VarF = ((MessagesDashActivity) obj).F();
                zn4 zn4Var3 = zn4.a;
                zn4.b(null, new qj(ye5VarF, jv1Var, i2));
                return;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                RestoreSpecialDataDetailsActivity restoreSpecialDataDetailsActivity = (RestoreSpecialDataDetailsActivity) obj;
                int i9 = RestoreSpecialDataDetailsActivity.R;
                if (restoreSpecialDataDetailsActivity.U().f.isEnabled()) {
                    restoreSpecialDataDetailsActivity.U().f.toggle();
                    return;
                }
                return;
            case 12:
                SLogActivity sLogActivity = (SLogActivity) obj;
                int i10 = SLogActivity.R;
                vr6.i$default(vr6.INSTANCE, sLogActivity.r(), "Share logs called with SwiftLogger text only", null, 4, null);
                d7 d7Var = new d7(sLogActivity, 21);
                sz8.m((u35) sLogActivity.Q.getValue());
                sLogActivity.M(R.string.preparing);
                fm7 fm7Var = (fm7) sLogActivity.a0().e.d();
                List list = fm7Var != null ? fm7Var.a : null;
                if (list == null) {
                    c6.f("Required value was null.");
                    return;
                } else {
                    zn4 zn4Var4 = zn4.a;
                    zn4.b(null, new xr6(list, sLogActivity, d7Var, null));
                    return;
                }
            case 13:
                n97 n97Var = (n97) obj;
                n97Var.f.invoke(m97.ADD_LABELS);
                n97Var.j(true);
                return;
            case 14:
                ((wa) obj).dismiss();
                return;
            default:
                ((bs8) obj).a.b0(false);
                return;
        }
    }
}
