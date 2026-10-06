package defpackage;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.EditText;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.textfield.TextInputLayout;
import java.io.File;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h7 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ h7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i2 = PremiumActivity.V;
                rs9.u(((o7) obj).i());
                return;
            case 1:
                int i3 = ApkImportActivity.Q;
                ((ApkImportActivity) obj).finish();
                return;
            case 2:
                EditText editText = ((TextInputLayout) obj).getEditText();
                if (editText != null) {
                    editText.setText((CharSequence) null);
                    return;
                }
                return;
            case 3:
                ((uy) obj).m(xy.Left, uy.a.Primary);
                return;
            case 4:
                ((jj0) obj).e.invoke();
                return;
            case 5:
                Const.B(((tk0) obj).e, "https://swiftapps.org/faq#pc");
                return;
            case 6:
                int i4 = CloudDiagnosticsActivity.Z;
                ((CloudDiagnosticsActivity) obj).U().o(false);
                return;
            case 7:
                int i5 = CsActivity.P0;
                ((CsActivity) obj).i0().showDropDown();
                return;
            case 8:
                ((sc3) obj).m(true);
                return;
            case XmlPullParser.COMMENT /* 9 */:
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj;
                FolderItem folderItem = folderDetailActivity.V;
                if (folderItem == null) {
                    pe4.F("folderItem");
                    throw null;
                }
                String sourceFolder = folderItem.getSourceFolder();
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setFlags(335544320);
                intent.setDataAndType(Uri.fromFile(new File(sourceFolder)), "resource/folder");
                try {
                    folderDetailActivity.startActivity(intent);
                    return;
                } catch (ActivityNotFoundException unused) {
                    ((ClipboardManager) folderDetailActivity.getSystemService(ClipboardManager.class)).setPrimaryClip(ClipData.newPlainText("folder_path", sourceFolder));
                    String string = folderDetailActivity.getString(R.string.no_file_manager_path_copied);
                    string.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.e(new l30(15, folderDetailActivity, string));
                    return;
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, folderDetailActivity.r(), "Error opening folder", e, null, 8, null);
                    return;
                }
            case 10:
                ln3 ln3Var = (ln3) obj;
                if (ln3Var.Z == null || ln3Var.Y != FolderRestoreStrategy.FULL_RESTORE) {
                    ln3Var.k();
                    return;
                }
                il0 il0Var = ln3Var.Q;
                hv1 hv1Var = new hv1(il0Var, R.style.M3AlertDialogTheme);
                il0Var.getClass();
                s35 s35Var = new s35(il0Var, R.style.M3AlertDialogTheme, hv1Var, null);
                s35Var.v(R.string.restore_folder);
                s35Var.n(R.string.folder_restore_custom_full_restore_warning);
                s35Var.s(R.string.continue_anyway, new ub1(ln3Var, 2));
                s35Var.q(R.string.cancel, null);
                s35Var.m();
                return;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i6 = LabelsActivity.Z;
                zr4 zr4VarR = ((LabelsActivity) obj).V();
                zr4VarR.h = sv2.a;
                zr4VarR.k(lr4.e);
                return;
            case 12:
                bt3 bt3Var = ((dd6) obj).o;
                if (bt3Var != null) {
                    bt3Var.invoke();
                    return;
                }
                return;
            case 13:
                y27 y27Var = (y27) obj;
                y27Var.b.invoke(el1.S0(y27Var.f.l()));
                wa waVar = y27Var.c;
                if (waVar != null) {
                    waVar.dismiss();
                    return;
                }
                return;
            case 14:
                m37 m37Var = (m37) obj;
                Object objD = m37Var.p().f.d();
                m47 m47Var = objD instanceof m47 ? (m47) objD : null;
                ScheduleData scheduleData = m47Var != null ? m47Var.c : new ScheduleData(0, 0, 0, null, null, null, null, null, null, null, null, null, null, 8191, null);
                HomeActivity homeActivityI = m37Var.i();
                y27 y27Var2 = new y27(homeActivityI, scheduleData, new hj(m37Var, 24));
                v75 v75Var = new v75(homeActivityI, 0);
                ((ra) v75Var.b).s = y27Var2.d.b;
                y27Var2.c = v75Var.m();
                return;
            default:
                SimpleSearchView simpleSearchView = (SimpleSearchView) obj;
                Activity activityX = tu0.x(simpleSearchView.a);
                if (activityX == null) {
                    return;
                }
                Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                String str = simpleSearchView.p;
                if (str != null && str.isEmpty()) {
                    intent2.putExtra("android.speech.extra.PROMPT", simpleSearchView.p);
                }
                intent2.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
                intent2.putExtra("android.speech.extra.MAX_RESULTS", 1);
                activityX.startActivityForResult(intent2, 735);
                return;
        }
    }
}
