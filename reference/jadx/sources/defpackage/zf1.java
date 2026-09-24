package defpackage;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zf1 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ zf1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        bt3 onButtonClick;
        int i = this.a;
        ArrayList arrayList = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                ng1 ng1VarM = ((gg1) obj).m();
                if (!tb1.f) {
                    ng1VarM.e = false;
                    tb1 tb1VarC = qb1.c();
                    tb1VarC.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new sb1(tb1VarC, true, null));
                }
                break;
            case 1:
                ConfigSettingsActivity configSettingsActivity = (ConfigSettingsActivity) obj;
                int i2 = ConfigSettingsActivity.V;
                ConfigSettings.ApplyData applyData = configSettingsActivity.U().j().getApplyData();
                List<String> labelIds = applyData != null ? applyData.getLabelIds() : null;
                ArrayList arrayList2 = (ArrayList) configSettingsActivity.S.getValue();
                if (arrayList2 != null) {
                    arrayList = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        List<String> labelIds2 = ((ConfigSettings.ApplyData) it.next()).getLabelIds();
                        if (labelIds2 == null) {
                            labelIds2 = ov2.a;
                        }
                        el1.K0(labelIds2, arrayList);
                    }
                }
                Bundle bundle = new Bundle();
                if (labelIds != null && !labelIds.isEmpty()) {
                    bundle.putStringArrayList("extra_selected_labels", new ArrayList<>(labelIds));
                }
                if (arrayList != null && !arrayList.isEmpty()) {
                    bundle.putStringArrayList("extra_already_used_labels", new ArrayList<>(arrayList));
                }
                configSettingsActivity.U.a(bundle);
                break;
            case 2:
                dm3 dm3Var = ((kl3) obj).c;
                dm3Var.getClass();
                zn4.c(new fj(dm3Var, 25));
                break;
            case 3:
                Map map = HomeActivity.b0;
                ((HomeActivity) obj).Y().setSelectedItemId(R.id.nav_account);
                break;
            case 4:
                ((df4) obj).invoke();
                break;
            case 5:
                o85 o85Var = (o85) obj;
                o85Var.m();
                qc5 qc5Var = (qc5) o85Var.y.d;
                if (!qc5Var.b()) {
                    if (qc5Var.f == null) {
                        l0.e("MenuPopupHelper cannot be used without an anchor");
                    } else {
                        qc5Var.d(0, 0, false, false);
                    }
                    break;
                }
                break;
            case 6:
                int i3 = PremiumActivity.V;
                xa4 xa4VarY = ((PremiumActivity) obj).Q().y();
                if (xa4VarY != null && (onButtonClick = xa4VarY.getOnButtonClick()) != null) {
                    onButtonClick.invoke();
                    break;
                }
                break;
            case 7:
                Map map2 = ScheduleFabMenuView.K;
                ((ScheduleFabMenuView) obj).o(false, true);
                break;
            case 8:
                int i4 = ScheduleLabelsSelectActivity.X;
                int i5 = LabelEditActivity.U;
                x13.R((ScheduleLabelsSelectActivity) obj);
                break;
            case XmlPullParser.COMMENT /* 9 */:
                ((pa8) obj).dismiss();
                break;
            case 10:
                int i6 = UserPasswordActivity.O;
                ((UserPasswordActivity) obj).finish();
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                to8 to8Var = (to8) obj;
                sa1.R(to8Var.a, null, new xq4(to8Var, 18), 1);
                break;
            default:
                ((as8) obj).a.b0(true);
                break;
        }
    }
}
