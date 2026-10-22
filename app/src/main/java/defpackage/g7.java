package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import com.yubico.yubikit.android.ui.YubiKeyPromptActivity;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.contributor.a;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.jobs.AlarmReceiver;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g7 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ g7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        int i = this.a;
        int i2 = 4;
        Object obj = this.b;
        switch (i) {
            case 0:
                HomeActivity homeActivityI = ((o7) obj).i();
                Const.K(homeActivityI, R.string.sign_out, new kn3(homeActivityI, 9), null);
                return;
            case 1:
                ApkImportActivity apkImportActivity = (ApkImportActivity) obj;
                ag agVar = apkImportActivity.N;
                if (agVar == null || (str = agVar.a) == null) {
                    return;
                }
                Intent intent = new Intent(apkImportActivity, (Class<?>) DetailActivity.class).putExtra("detail_launched_from_shortcut", true).setPackage(str);
                intent.getClass();
                apkImportActivity.startActivity(intent);
                apkImportActivity.finish();
                return;
            case 2:
                EditText editText = ((TextInputLayout) obj).getEditText();
                if (editText != null) {
                    editText.setText((CharSequence) null);
                    return;
                }
                return;
            case 3:
                ((uy) obj).m(xy.Right, uy.a.Secondary);
                return;
            case 4:
                int i3 = AppsConfigRunActivity.m0;
                ((AppsConfigRunActivity) obj).finish();
                return;
            case 5:
                int i4 = CloudConnectActivity.Q;
                ((RecyclerView) ((CloudConnectActivity) obj).O.getValue()).i0(0);
                return;
            case 6:
                gg1 gg1Var = (gg1) obj;
                tb1 tb1Var = tb1.a;
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("cloud_manual_delete_warning_shown", true).apply();
                gg1Var.i().y(TextView.class);
                jk8 jk8Var = gg1Var.b;
                jk8Var.getClass();
                ((MaterialCardView) ((hg1) jk8Var).f.b).setVisibility(8);
                return;
            case 7:
                ((lh) obj).invoke();
                return;
            case 8:
                uj1 uj1Var = (uj1) obj;
                HomeActivity homeActivity = uj1Var.a;
                if (Const.d(homeActivity)) {
                    tb1 tb1Var2 = tb1.a;
                    String strE = qb1.e();
                    String string = homeActivity.getString(R.string.delete_active_tag, strE);
                    string.getClass();
                    String string2 = homeActivity.getString(R.string.delete_active_tag_message, strE);
                    string2.getClass();
                    Const.I(homeActivity, string, string2, new cv(i2, uj1Var, strE));
                    return;
                }
                return;
            case XmlPullParser.COMMENT /* 9 */:
                ContributorRegActivity contributorRegActivity = (ContributorRegActivity) obj;
                int i5 = ContributorRegActivity.S;
                a aVar = (a) contributorRegActivity.K.getValue();
                zn4 zn4Var = zn4.a;
                zn4.c(new bh(aVar, 18));
                ViewGroup viewGroupA = io4.a(contributorRegActivity);
                Context context = viewGroupA.getContext();
                InputMethodManager inputMethodManager = context != null ? (InputMethodManager) context.getSystemService(InputMethodManager.class) : null;
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(viewGroupA.getWindowToken(), 0);
                    return;
                }
                return;
            case 10:
                sc3 sc3Var = (sc3) obj;
                sc3Var.dismiss();
                zn4.f(300L, new ck(sc3Var, 16));
                return;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj;
                int i6 = FolderDetailActivity.Z;
                new rj3(folderDetailActivity, true, null, 26).k(new ps(folderDetailActivity, 3));
                return;
            case 12:
                int i7 = LabelsActivity.Z;
                ((LabelsActivity) obj).P().i0(0);
                return;
            case 13:
                cy5 cy5Var = (cy5) obj;
                EditText editText2 = cy5Var.f;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = cy5Var.f;
                int i8 = (editText3 == null || !(editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) ? 0 : 1;
                EditText editText4 = cy5Var.f;
                if (i8 != 0) {
                    editText4.setTransformationMethod(null);
                } else {
                    editText4.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    cy5Var.f.setSelection(selectionEnd);
                }
                cy5Var.p();
                return;
            case 14:
                m37 m37Var = (m37) obj;
                j38 j38Var = new j38(DateFormat.is24HourFormat(m37Var.i()) ? 1 : 0);
                j38Var.l(0);
                j38Var.e = 0;
                j38Var.b = 0;
                m37Var.p().e.getClass();
                int i9 = AlarmReceiver.b().get(11);
                j38Var.e = i9 < 12 ? 0 : 1;
                j38Var.b = i9;
                m37Var.p().e.getClass();
                j38Var.l(AlarmReceiver.b().get(12));
                j95 j95Var = new j95();
                Bundle bundle = new Bundle();
                bundle.putParcelable("TIME_PICKER_TIME_MODEL", j38Var);
                bundle.putInt("TIME_PICKER_TITLE_RES", R.string.start_time);
                bundle.putInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", 0);
                bundle.putInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", 0);
                bundle.putInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", 0);
                j95Var.setArguments(bundle);
                j95Var.k(m37Var.i().getSupportFragmentManager(), "time_picker_dialog");
                j95Var.I.add(new ce1(i2, j95Var, m37Var));
                return;
            case 15:
                ((SimpleSearchView) obj).t.setText((CharSequence) null);
                return;
            case Argon2.V10 /* 16 */:
                ((w01) obj).invoke();
                return;
            default:
                YubiKeyPromptActivity yubiKeyPromptActivity = (YubiKeyPromptActivity) obj;
                synchronized (yubiKeyPromptActivity.a) {
                }
                yubiKeyPromptActivity.setResult(0);
                yubiKeyPromptActivity.finish();
                return;
        }
    }
}
