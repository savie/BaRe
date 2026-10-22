package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.u;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yi5 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ yi5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v21, types: [ix6] */
    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        int i2 = 4;
        int i3 = R.id.appbar_layout;
        be8 be8Var = be8.a;
        ?? localFile = 0;
        localFile = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                MultipleBackupsActivity multipleBackupsActivity = (MultipleBackupsActivity) obj;
                int i4 = MultipleBackupsActivity.T;
                if (pe4.d(multipleBackupsActivity.N(), (MultipleBackupStrategy) multipleBackupsActivity.M.getValue())) {
                    multipleBackupsActivity.A(false);
                    multipleBackupsActivity.z();
                } else {
                    s35 s35Var = new s35(multipleBackupsActivity, R.style.M3AlertDialogTheme, new hv1(multipleBackupsActivity, R.style.M3AlertDialogTheme), null);
                    s35Var.n(R.string.discard_changes_confirmation);
                    s35Var.s(R.string.ok, new sy(multipleBackupsActivity, i2));
                    s35Var.q(R.string.cancel, null);
                    s35Var.m();
                }
                return be8Var;
            case 1:
                int i5 = NoticeViewActivity.O;
                View viewInflate = ((NoticeViewActivity) obj).getLayoutInflater().inflate(R.layout.notice_activity, (ViewGroup) null, false);
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    i3 = R.id.scroll_view;
                    NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                    if (nestedScrollView != null) {
                        i3 = R.id.tv_message;
                        TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_message);
                        if (textView != null) {
                            return new lo5((CoordinatorLayout) viewInflate, w00VarB, nestedScrollView, textView);
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
                return null;
            case 2:
                PreconditionsActivity preconditionsActivity = (PreconditionsActivity) obj;
                preconditionsActivity.O = true;
                preconditionsActivity.A(false);
                preconditionsActivity.z();
                return be8Var;
            case 3:
                int i6 = PremiumActivity.V;
                return ((PremiumActivity) obj).R().p;
            case 4:
                nd6 nd6Var = (nd6) obj;
                u activity = nd6Var.getActivity();
                if (activity == null || !activity.isDestroyed()) {
                    od6 od6VarI = nd6Var.i();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new lj(od6VarI, localFile, i2));
                }
                return be8Var;
            case 5:
                od6 od6Var = (od6) obj;
                ArrayList arrayListF = d01.f();
                if (!arrayListF.isEmpty()) {
                    rz0 rz0Var = (rz0) arrayListF.get(0);
                    if (rz0Var.getLocalFile().j()) {
                        localFile = rz0Var.getLocalFile();
                    }
                }
                ((ix6) od6Var.g.getValue()).k(localFile);
                return be8Var;
            case 6:
                AppSettings appSettings = (AppSettings) obj;
                f28 f28Var = h28.Companion;
                Integer themeModeId = appSettings.getThemeModeId();
                f28Var.getClass();
                h28 h28VarA = f28.a(themeModeId);
                h28VarA.getClass();
                int themeId = h28VarA.getThemeId();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("app_theme_mode", themeId).apply();
                Boolean useAmoledTheme = appSettings.getUseAmoledTheme();
                boolean zBooleanValue = useAmoledTheme != null ? useAmoledTheme.booleanValue() : false;
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putBoolean("use_amoled_theme", zBooleanValue).apply();
                Boolean boolIsDynamicColors = appSettings.isDynamicColors();
                boolean zBooleanValue2 = boolIsDynamicColors != null ? boolIsDynamicColors.booleanValue() : true;
                SharedPreferences.Editor editor3 = cz4.k;
                if (editor3 != null) {
                    editor3.putBoolean("dynamic_colors", zBooleanValue2).apply();
                    return be8Var;
                }
                pe4.F("editor");
                throw null;
            case 7:
                Preference preferenceJ = ((pa7) obj).j("battery_opt");
                preferenceJ.getClass();
                return (CheckBoxPreference) preferenceJ;
            case 8:
                return StorageInfoLocal.a._set_savedStorageInfo_$lambda$0((StorageInfoLocal.Success) obj);
            case XmlPullParser.COMMENT /* 9 */:
                int i7 = StorageSwitchActivity.f0;
                return ((oo7) ((StorageSwitchActivity) obj).Y.getValue()).d;
            case 10:
                int i8 = WallsManageActivity.S;
                View viewInflate2 = ((WallsManageActivity) obj).getLayoutInflater().inflate(R.layout.walls_manage_activity, (ViewGroup) null, false);
                View viewU2 = ms8.u(viewInflate2, R.id.appbar_layout);
                if (viewU2 != null) {
                    w00 w00VarB2 = w00.b(viewU2);
                    i3 = R.id.recycler_view;
                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate2, R.id.recycler_view);
                    if (quickRecyclerView != null) {
                        return new rp8((CoordinatorLayout) viewInflate2, w00VarB2, quickRecyclerView);
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i3)));
                return null;
            default:
                iu8 iu8Var = (iu8) obj;
                Log.d(iu8Var.b, "init: Wifi change detected");
                iu8Var.l();
                return be8Var;
        }
    }
}
