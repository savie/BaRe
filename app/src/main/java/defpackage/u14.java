package defpackage;

import android.content.Context;
import android.os.storage.StorageVolume;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.settings.LicensesActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u14 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ u14(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // defpackage.bt3
    public final Object invoke() {
        Context context;
        InputMethodManager inputMethodManager;
        int i = this.a;
        be8 be8Var = be8.a;
        InputMethodManager inputMethodManager2 = 0;
        inputMethodManager2 = 0;
        boolean z = true;
        Object obj = this.b;
        switch (i) {
            case 0:
                boolean z2 = q63.d;
                return ((q63) obj).F(true);
            case 1:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                if (!homeSearchActivity.isDestroyed()) {
                    od6 od6VarW = homeSearchActivity.W();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new vs(od6VarW, inputMethodManager2, 3));
                }
                return be8Var;
            case 2:
                LabelEditActivity labelEditActivity = (LabelEditActivity) obj;
                int i2 = LabelEditActivity.U;
                TextInputLayout textInputLayout = (TextInputLayout) labelEditActivity.N.getValue();
                if (textInputLayout != null && (context = textInputLayout.getContext()) != null) {
                    inputMethodManager = (InputMethodManager) context.getSystemService(InputMethodManager.class);
                }
                if (inputMethodManager2 != 0) {
                    inputMethodManager2 = inputMethodManager;
                    inputMethodManager2.hideSoftInputFromWindow(textInputLayout.getWindowToken(), 0);
                }
                inputMethodManager2 = inputMethodManager;
                labelEditActivity.V().j(labelEditActivity.P());
                return be8Var;
            case 3:
                int i3 = LicensesActivity.L;
                View viewInflate = ((LicensesActivity) obj).getLayoutInflater().inflate(R.layout.licenses_activity, (ViewGroup) null, false);
                int i4 = R.id.appbar_layout;
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_licenses);
                    if (recyclerView != null) {
                        return new ot4((CoordinatorLayout) viewInflate, w00VarB, recyclerView);
                    }
                    i4 = R.id.rv_licenses;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                return null;
            case 4:
                int i5 = ManageSpaceActivity.O;
                return ((r55) ((ManageSpaceActivity) obj).K.getValue()).d;
            case 5:
                int i6 = MegaSignInActivity.S;
                return (TextInputLayout) ((MegaSignInActivity) obj).N().k.d;
            case 6:
                int i7 = MessagesBackupRestoreActivity.c0;
                return ((MessagesBackupRestoreActivity) obj).a0().e;
            case 7:
                int i8 = SLogActivity.R;
                return new bs6((SLogActivity) obj, true);
            case 8:
                int i9 = ScheduleFolderSelectActivity.R;
                return ((ScheduleFolderSelectActivity) obj).O().b;
            case XmlPullParser.COMMENT /* 9 */:
                m37 m37Var = (m37) obj;
                if (m37Var.isAdded()) {
                    zn4.c(new h47(m37Var.p(), z));
                }
                return be8Var;
            case 10:
                return obj;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                zn7 zn7Var = (zn7) obj;
                StorageVolume storageVolumeV = zn7Var.v();
                String uuid = storageVolumeV != null ? storageVolumeV.getUuid() : null;
                if (uuid != null && uuid.length() != 0) {
                    return uuid;
                }
                String strB0 = nq7.B0(nq7.I0(zn7Var.n().v(), '/'), '/');
                if (strB0.equals("0")) {
                    return null;
                }
                return strB0;
            case 12:
                ao8 ao8Var = WallApplyActivity.O;
                sz8.e0(((WallApplyActivity) obj).N().c, true);
                return be8Var;
            default:
                WifiActivity wifiActivity = (WifiActivity) obj;
                et8 et8Var = WifiActivity.Y;
                return new as8(wifiActivity, wifiActivity.X().f, wifiActivity.a0());
        }
    }
}
