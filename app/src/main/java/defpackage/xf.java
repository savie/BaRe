package defpackage;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.k;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xf extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ xf(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        int i2 = 1;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ig igVar = (ig) obj;
                igVar.getClass();
                ApkImportActivity apkImportActivity = (ApkImportActivity) this.receiver;
                int i3 = ApkImportActivity.Q;
                if (igVar instanceof fg) {
                    fg fgVar = (fg) igVar;
                    bg bgVar = fgVar.b;
                    int i4 = fgVar.a;
                    if (bgVar != null) {
                        apkImportActivity.S(bgVar);
                    } else {
                        apkImportActivity.N().n.setVisibility(0);
                        apkImportActivity.N().b.setVisibility(8);
                        apkImportActivity.N().c.setVisibility(0);
                        apkImportActivity.P(true);
                    }
                    apkImportActivity.N = null;
                    apkImportActivity.N().G.setVisibility(8);
                    apkImportActivity.N().t.setVisibility(8);
                    apkImportActivity.N().H.setVisibility(0);
                    apkImportActivity.U(false, false, false, false);
                    apkImportActivity.N().N.setText(i4 == R.string.apk_import_status_preparing ? R.string.apk_import_title : R.string.apk_import_install_title);
                    apkImportActivity.N().M.setText(i4);
                } else if (igVar instanceof gg) {
                    gg ggVar = (gg) igVar;
                    apkImportActivity.S(ggVar.a);
                    apkImportActivity.M = ggVar.b;
                    apkImportActivity.N = null;
                    apkImportActivity.N().G.setImageResource(R.drawable.ic_settings_install_mobile_filled);
                    apkImportActivity.N().G.setVisibility(0);
                    apkImportActivity.N().t.setVisibility(8);
                    apkImportActivity.N().H.setVisibility(8);
                    apkImportActivity.N().N.setText(R.string.apk_import_ready_title);
                    apkImportActivity.N().M.setText(R.string.apk_import_ready_message);
                    apkImportActivity.U(true, false, false, true);
                } else if (igVar instanceof eg) {
                    eg egVar = (eg) igVar;
                    apkImportActivity.T(egVar.a);
                    apkImportActivity.N = null;
                    apkImportActivity.N().G.setVisibility(8);
                    apkImportActivity.N().t.setVisibility(0);
                    apkImportActivity.N().H.setVisibility(8);
                    apkImportActivity.U(false, false, false, true);
                    TextView textView = apkImportActivity.N().N;
                    cw5 cw5Var = egVar.b;
                    textView.setText(cw5Var.a);
                    apkImportActivity.N().M.setText(cw5Var.b);
                } else {
                    if (!(igVar instanceof hg)) {
                        apkImportActivity.getClass();
                        q.j();
                        return null;
                    }
                    hg hgVar = (hg) igVar;
                    apkImportActivity.T(hgVar.a);
                    apkImportActivity.M = null;
                    String str = hgVar.b;
                    apkImportActivity.N = new ag(str);
                    apkImportActivity.N().G.setImageResource(R.drawable.ic_check_circle_outline);
                    apkImportActivity.N().G.setVisibility(0);
                    apkImportActivity.N().t.setVisibility(8);
                    apkImportActivity.N().H.setVisibility(8);
                    apkImportActivity.U(false, !(str == null || nq7.j0(str)), !(str == null || nq7.j0(str)), true);
                    apkImportActivity.N().f.setEnabled((str != null ? apkImportActivity.getPackageManager().getLaunchIntentForPackage(str) : null) != null);
                    apkImportActivity.N().N.setText(R.string.restore_successful);
                    apkImportActivity.N().M.setText(R.string.apk_import_success_message);
                }
                return be8Var;
            case 1:
                bc1 bc1Var = (bc1) obj;
                bc1Var.getClass();
                CloudConnectActivity cloudConnectActivity = (CloudConnectActivity) this.receiver;
                int i5 = CloudConnectActivity.Q;
                cloudConnectActivity.getClass();
                cloudConnectActivity.P(bc1Var.a);
                return be8Var;
            case 2:
                long jLongValue = ((Number) obj).longValue();
                n92 n92Var = (n92) this.receiver;
                n92Var.i();
                q63 q63Var = n92Var.a.a;
                boolean z = q63.d;
                InputStream inputStreamW = q63Var.w(true);
                try {
                    l73.C(inputStreamW, jLongValue);
                    n92Var.o = inputStreamW;
                    return inputStreamW;
                } catch (Exception e) {
                    f13.a(inputStreamW);
                    throw e;
                }
            case 3:
                ak2 ak2Var = (ak2) obj;
                ak2Var.getClass();
                qj2 qj2Var = (qj2) this.receiver;
                qj2Var.getClass();
                List<zj2> list = ak2Var.b;
                int size = list.size();
                StringBuilder sb = new StringBuilder();
                sb.append(qj2Var.a.getString(R.string.device_backups));
                if (size > 0) {
                    sb.append(" (" + size + ")");
                }
                qj2Var.c.setText(sb.toString());
                boolean z2 = ak2Var.a;
                CircularProgressIndicator circularProgressIndicator = qj2Var.h;
                if (z2) {
                    sz8.c0(circularProgressIndicator);
                    sz8.W(qj2Var.i);
                    qj2Var.g.a.setVisibility(8);
                } else {
                    sz8.W(circularProgressIndicator);
                    gm1 gm1Var = qj2Var.f;
                    ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                    for (zj2 zj2Var : list) {
                        iz4 iz4Var = zj2Var.a;
                        String strH = Const.h(iz4Var.getDateBackup());
                        String backupTag = iz4Var.getBackupTag();
                        if (backupTag != null && backupTag.length() != 0) {
                            strH = dj7.k(strH, TokenAuthenticationScheme.SCHEME_DELIMITER, backupTag);
                        }
                        arrayList.add(new gk2(strH, zj2Var.p, zj2Var.r, iz4Var.getBackupId()));
                    }
                    gm1Var.b(arrayList, new bz(3, qj2Var, ak2Var), new qs(i2, ak2Var, qj2Var), new w01(7, qj2Var, ak2Var));
                }
                return be8Var;
            case 4:
                bm3 bm3Var = (bm3) obj;
                bm3Var.getClass();
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) this.receiver;
                int i6 = FolderDetailActivity.Z;
                nl3 nl3Var = folderDetailActivity.W().e;
                LinearLayout linearLayout = nl3Var.e;
                LinearLayout linearLayout2 = nl3Var.f;
                MaterialCardView materialCardView = nl3Var.k;
                LinearLayout linearLayout3 = nl3Var.p;
                nl3Var.q.setText(folderDetailActivity.U().k().getDisplayName());
                nl3Var.r.setText(folderDetailActivity.U().k().getSourceFolder());
                if (bm3Var.equals(zl3.a)) {
                    linearLayout3.setVisibility(8);
                    FolderDetailActivity.Y(folderDetailActivity, true);
                } else if (bm3Var.equals(am3.a)) {
                    linearLayout3.setVisibility(0);
                    FolderDetailActivity.Y(folderDetailActivity, false);
                    materialCardView.setVisibility(0);
                    linearLayout2.setVisibility(8);
                    linearLayout.setVisibility(8);
                } else {
                    if (!(bm3Var instanceof yl3)) {
                        q.j();
                        return null;
                    }
                    linearLayout3.setVisibility(0);
                    FolderDetailActivity.Y(folderDetailActivity, false);
                    materialCardView.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    TextView textView2 = nl3Var.x;
                    yl3 yl3Var = (yl3) bm3Var;
                    Object value = yl3Var.g.getValue();
                    value.getClass();
                    textView2.setText((String) value);
                    nl3Var.t.setText((String) yl3Var.h.getValue());
                    linearLayout.setVisibility(0);
                }
                return be8Var;
            default:
                MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) obj;
                multipleBackupStrategy.getClass();
                ((k) this.receiver).j(multipleBackupStrategy);
                return be8Var;
        }
    }
}
