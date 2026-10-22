package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class to5 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ to5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        jv1 jv1Var = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i2 = NoticeViewActivity.O;
                return new f75((NoticeViewActivity) obj, 62);
            case 1:
                int i3 = PasswordStrategyActivity.O;
                View viewInflate = ((PasswordStrategyActivity) obj).getLayoutInflater().inflate(R.layout.password_strategy_activity, (ViewGroup) null, false);
                int i4 = R.id.appbar_layout;
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                    i4 = R.id.password_item_app_based;
                    View viewU2 = ms8.u(viewInflate, R.id.password_item_app_based);
                    if (viewU2 != null) {
                        e38 e38VarA = e38.a(viewU2);
                        i4 = R.id.password_item_user_based;
                        View viewU3 = ms8.u(viewInflate, R.id.password_item_user_based);
                        if (viewU3 != null) {
                            e38 e38VarA2 = e38.a(viewU3);
                            i4 = R.id.scroll_view;
                            NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                            if (nestedScrollView != null) {
                                return new wx5(coordinatorLayout, w00VarB, e38VarA, e38VarA2, nestedScrollView);
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                return null;
            case 2:
                return ((d26) obj).b.c();
            case 3:
                int i5 = PremiumActivity.V;
                return ((PremiumActivity) obj).R().k;
            case 4:
                return ((k76) ((j76) obj).e.getValue()).a;
            case 5:
                nd6 nd6Var = (nd6) obj;
                u activity = nd6Var.getActivity();
                if (activity == null || !activity.isDestroyed()) {
                    od6 od6VarI = nd6Var.i();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new vs(od6VarI, jv1Var, 3));
                }
                return be8Var;
            case 6:
                m37 m37Var = (m37) obj;
                j57 j57Var = new j57(m37Var.i(), m37Var);
                j57Var.k = true;
                return j57Var;
            case 7:
                List<AppBackupLimitItem> appBackupLimits = ((AppSettings) obj).getAppBackupLimits();
                ArrayList arrayListC = ok.c();
                ArrayList arrayList = new ArrayList(hl1.G0(arrayListC, 10));
                Iterator it = arrayListC.iterator();
                while (it.hasNext()) {
                    arrayList.add(AppBackupLimitItem.copy$default((AppBackupLimitItem) it.next(), null, null, null, 1, null));
                }
                ok.e(arrayList);
                if (appBackupLimits != null && !appBackupLimits.isEmpty()) {
                    ok.e(appBackupLimits);
                }
                return be8Var;
            case 8:
                Preference preferenceJ = ((pa7) obj).j("play_notification_sounds");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case XmlPullParser.COMMENT /* 9 */:
                return StorageInfoLocal.a._get_savedStorageInfo_$lambda$0((String) obj);
            case 10:
                int i6 = StorageSwitchActivity.f0;
                return ((oo7) ((StorageSwitchActivity) obj).Y.getValue()).e;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return (pw6) obj;
            default:
                WallsManageActivity wallsManageActivity = (WallsManageActivity) obj;
                mo8 mo8Var = wallsManageActivity.R;
                if (mo8Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                if (mo8Var.e.c) {
                    mo8Var.u(false);
                } else {
                    wallsManageActivity.A(false);
                    wallsManageActivity.z();
                }
                return be8Var;
        }
    }
}
