package defpackage;

import android.view.View;
import com.ferfalk.simplesearchview.SimpleSearchView;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nf implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ nf(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        List<BlacklistApp> items;
        int i = this.a;
        int size = 0;
        jv1 jv1Var = null;
        int i2 = 1;
        Object obj = this.b;
        switch (i) {
            case 0:
                ApkImportActivity apkImportActivity = (ApkImportActivity) obj;
                zf zfVar = apkImportActivity.M;
                if (zfVar != null) {
                    mg mgVarO = apkImportActivity.U();
                    mgVarO.o(new fg(R.string.apk_import_status_requesting_elevated_access, mgVarO.l()));
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new sf(apkImportActivity, zfVar, jv1Var, size));
                    break;
                }
                break;
            case 1:
                ((uy) obj).m(xy.Right, uy.a.Primary);
                break;
            case 2:
                BlacklistActivity blacklistActivity = (BlacklistActivity) obj;
                int i3 = BlacklistActivity.P;
                BlacklistData blacklistData = gs0.c;
                if (blacklistData != null && (items = blacklistData.getItems()) != null) {
                    size = items.size();
                }
                if (size < 100) {
                    rs0 rs0VarO = blacklistActivity.U();
                    rs0VarO.h(R.string.processing);
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(null, new wm(rs0VarO, jv1Var, i2));
                } else {
                    b05.l(blacklistActivity, null, blacklistActivity.getString(R.string.maximum_num_blacklist_limit_message) + " (100/100)", 10);
                }
                break;
            case 3:
                ((lh) obj).invoke();
                break;
            case 4:
                uj1 uj1Var = (uj1) obj;
                HomeActivity homeActivity = uj1Var.a;
                if (Const.d(homeActivity)) {
                    homeActivity.M(R.string.loading);
                    zn4 zn4Var3 = zn4.a;
                    zn4.c(new dk(uj1Var, 16));
                    break;
                }
                break;
            case 5:
                fh2 fh2Var = (fh2) obj;
                fh2Var.k.invoke(new ly7(((SwiftBackupMaterialSwitch) fh2Var.p.d).isChecked(), ((SwiftBackupMaterialSwitch) fh2Var.q.d).isChecked()));
                fh2Var.j(true);
                break;
            case 6:
                ((sc3) obj).dismiss();
                break;
            case 7:
                int i4 = FoldersBatchActivity.Y;
                ((FoldersBatchActivity) obj).finish();
                break;
            case 8:
                IntroActivity introActivity = (IntroActivity) obj;
                int i5 = IntroActivity.V;
                u45 u45Var = new u45(introActivity, introActivity.Q().n, 12);
                u45Var.f(R.menu.menu_intro);
                u45Var.e = new fs(introActivity, 7);
                u45Var.j();
                break;
            case XmlPullParser.COMMENT /* 9 */:
                int i6 = MessagesBackupRestoreActivity.c0;
                ((MessagesBackupRestoreActivity) obj).finish();
                break;
            case 10:
                Map map = ScheduleFabMenuView.K;
                ((bt3) obj).invoke();
                break;
            default:
                int i7 = SimpleSearchView.O;
                ((SimpleSearchView) obj).a(true);
                break;
        }
    }
}
