package defpackage;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h00 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ h00(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = 1;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i3 = AppVisibilityDiagnosticsActivity.O;
                ((AppVisibilityDiagnosticsActivity) obj).V().j();
                return;
            case 1:
                int i4 = CloudDiagnosticsActivity.Z;
                ((CloudDiagnosticsActivity) obj).U().l();
                return;
            case 2:
                ConfigListActivity configListActivity = (ConfigListActivity) obj;
                int i5 = ConfigListActivity.R;
                mp6 mp6Var = mp6.a;
                if (mp6.f()) {
                    configListActivity.startActivity(new Intent(configListActivity, (Class<?>) ConfigEditActivity.class));
                    return;
                } else {
                    Const.N(configListActivity);
                    return;
                }
            case 3:
                sr1 sr1Var = (sr1) obj;
                sr1Var.j(true);
                sr1Var.f.invoke();
                return;
            case 4:
                HomeActivity homeActivity = (HomeActivity) obj;
                Map map = HomeActivity.b0;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                MaterialCardView materialCardView = (MaterialCardView) homeActivity.Z().c.d;
                Rect rect = new Rect();
                Intent intent = new Intent(homeActivity, (Class<?>) HomeSearchActivity.class);
                if (materialCardView.getGlobalVisibleRect(rect)) {
                    intent.putExtra("source_bounds", new int[]{rect.left, rect.top, rect.right, rect.bottom});
                }
                homeActivity.startActivity(intent);
                homeActivity.overridePendingTransition(0, 0);
                return;
            case 5:
                LabelEditActivity labelEditActivity = (LabelEditActivity) obj;
                int i6 = LabelEditActivity.U;
                LabelParams labelParams = labelEditActivity.V().h;
                y13.z(labelParams, labelEditActivity.r());
                synchronized (lr4.a) {
                    labelParams.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.c(new gr4(labelParams, i2));
                }
                labelEditActivity.setResult(-1, new Intent().putExtra("extra_created_label_id", labelParams.getId()));
                labelEditActivity.finish();
                labelParams.getId().getClass();
                return;
            case 6:
                int i7 = LabelsActivity.Z;
                int i8 = LabelEditActivity.U;
                x13.R((LabelsActivity) obj);
                return;
            case 7:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) obj;
                be5 be5Var = messagesBackupRestoreActivity.T;
                if (be5Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                if (be5Var.b() > 0) {
                    messagesBackupRestoreActivity.Z().i0(0);
                    return;
                }
                return;
            case 8:
                sz8.m((wa) obj);
                return;
            case XmlPullParser.COMMENT /* 9 */:
                PremiumActivity premiumActivity = (PremiumActivity) obj;
                int i9 = PremiumActivity.V;
                premiumActivity.y(TextView.class);
                premiumActivity.T = true;
                premiumActivity.T(true);
                return;
            case 10:
                ScheduleFabMenuView scheduleFabMenuView = (ScheduleFabMenuView) obj;
                scheduleFabMenuView.o(!scheduleFabMenuView.c, true);
                return;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i10 = ScheduleFolderSelectActivity.R;
                ((RecyclerView) ((ScheduleFolderSelectActivity) obj).L.getValue()).i0(0);
                return;
            case 12:
                ((m37) obj).q();
                return;
            case 13:
                UserPasswordActivity userPasswordActivity = (UserPasswordActivity) obj;
                int i11 = UserPasswordActivity.O;
                final gs2 gs2Var = new gs2(userPasswordActivity);
                final pr4 pr4Var = new pr4(userPasswordActivity, 13);
                TextInputLayout textInputLayout = (TextInputLayout) gs2Var.c;
                textInputLayout.setHint(userPasswordActivity.getString(R.string.password));
                textInputLayout.setEndIconMode(1);
                TextInputEditText textInputEditText = (TextInputEditText) gs2Var.d;
                textInputEditText.setInputType(129);
                sz8.V(textInputEditText);
                textInputEditText.addTextChangedListener(new q52(gs2Var, 2));
                TextInputLayout textInputLayout2 = (TextInputLayout) gs2Var.e;
                textInputLayout2.setHint(userPasswordActivity.getString(R.string.confirm_password));
                textInputLayout2.setEndIconMode(1);
                TextInputEditText textInputEditText2 = (TextInputEditText) gs2Var.f;
                textInputEditText2.setInputType(129);
                sz8.V(textInputEditText2);
                textInputEditText2.addTextChangedListener(new r52(gs2Var, i2));
                s35 s35Var = new s35(userPasswordActivity, R.style.M3AlertDialogTheme, new hv1(userPasswordActivity, R.style.M3AlertDialogTheme), null);
                ((ra) s35Var.b).s = (NestedScrollView) ((nh) gs2Var.b).b;
                final wa waVarM = s35Var.m();
                ((MaterialButton) gs2Var.g).setOnClickListener(new View.OnClickListener() { // from class: bh8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        String strA;
                        gs2 gs2Var2 = gs2Var;
                        String strA2 = gs2Var2.a();
                        if (strA2 != null && strA2.length() != 0) {
                            String strB = gs2Var2.b();
                            boolean zEquals = false;
                            if (strB != null && (strA = gs2Var2.a()) != null) {
                                zEquals = strB.equals(strA);
                            }
                            if (zEquals) {
                                if (strA2.length() <= 0 || nq7.j0(strA2)) {
                                    strA2 = null;
                                }
                                V.INSTANCE.getZ().edit().putString("saved_user_password", strA2).apply();
                                Log.i("EncryptionActivePasswordDialog", "Active password updated");
                                pr4Var.invoke();
                            }
                        }
                        waVarM.dismiss();
                    }
                });
                ((MaterialButton) gs2Var.h).setOnClickListener(new dj(waVarM, 14));
                gs2Var.c();
                return;
            case 14:
                WallApplyActivity wallApplyActivity = (WallApplyActivity) obj;
                ao8 ao8Var = WallApplyActivity.O;
                Drawable drawable = wallApplyActivity.N().d.getDrawable();
                drawable.getClass();
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                bitmap.getClass();
                String[] strArr = {wallApplyActivity.getString(R.string.home_screen), wallApplyActivity.getString(R.string.lock_screen), wallApplyActivity.getString(R.string.both)};
                s35 s35Var2 = new s35(wallApplyActivity, R.style.M3AlertDialogTheme, new hv1(wallApplyActivity, R.style.M3AlertDialogTheme), null);
                s35Var2.v(R.string.set_wallpaper);
                lu luVar = new lu(3, wallApplyActivity, bitmap);
                ra raVar = (ra) s35Var2.b;
                raVar.p = strArr;
                raVar.r = luVar;
                s35Var2.m();
                return;
            default:
                to8 to8Var = (to8) obj;
                sa1.R(to8Var.a, null, new mo3(to8Var, 17), 1);
                return;
        }
    }
}
