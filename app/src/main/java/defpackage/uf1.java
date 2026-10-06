package defpackage;

import android.view.MenuItem;
import android.view.View;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uf1 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ uf1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                wf1 wf1Var = (wf1) obj2;
                dd1 dd1Var = (dd1) obj;
                view.getClass();
                u45 u45Var = new u45(wf1Var.a, view, 12);
                u45Var.f(R.menu.menu_cloud_info_storage_card);
                fc5 fc5Var = (fc5) u45Var.c;
                fc5Var.getClass();
                int i2 = 0;
                while (i2 < fc5Var.f.size()) {
                    int i3 = i2 + 1;
                    MenuItem item = fc5Var.getItem(i2);
                    if (item == null) {
                        l0.a();
                    } else {
                        if (item.getItemId() == R.id.action_save_settings) {
                            item.setVisible(dd1Var.getAllowSavingSetupDetails());
                        }
                        i2 = i3;
                    }
                    break;
                }
                u45Var.e = new vf1(wf1Var, dd1Var);
                u45Var.j();
                break;
            case 1:
                gm7.x((id2) obj2, (jd2) obj);
                break;
            case 2:
                SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) ((kb2) obj2).d;
                swiftBackupMaterialSwitch.toggle();
                ((mt3) obj).invoke(Boolean.valueOf(swiftBackupMaterialSwitch.isChecked()));
                break;
            case 3:
                gj2 gj2Var = (gj2) obj2;
                DetailActivity detailActivity = gj2Var.a;
                kf kfVar = new kf(gj2Var, 23);
                zn4 zn4Var = zn4.a;
                zn4.b(null, new kj((ji) obj, false, false, true, detailActivity, kfVar, false, null));
                break;
            case 4:
                DetailActivity detailActivity2 = ((pj2) obj2).a;
                view.getClass();
                detailActivity2.b0(view, q05.CLOUD, null, ((wj2) obj).a);
                break;
            case 5:
                DetailActivity detailActivity3 = ((qj2) obj2).a;
                view.getClass();
                detailActivity3.b0(view, q05.DEVICE, ((zj2) obj).a, null);
                break;
            case 6:
                view.getClass();
                u45 u45Var2 = new u45((zm) obj2, view, 12);
                u45Var2.f(R.menu.menu_intro_storage_setup_failure);
                u45Var2.e = new fs((kn3) obj, 8);
                u45Var2.j();
                break;
            default:
                ((mt3) obj2).invoke((MultipleBackupStrategy) obj);
                break;
        }
    }
}
