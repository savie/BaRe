package defpackage;

import android.view.MenuItem;
import android.view.View;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jp3 extends cu3 implements qt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ jp3(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                View view = (View) obj;
                zk3 zk3Var = (zk3) obj2;
                view.getClass();
                zk3Var.getClass();
                kp3 kp3Var = (kp3) this.receiver;
                kp3Var.getClass();
                long j = zk3Var.b;
                u45 u45Var = new u45(kp3Var.i(), view, 12);
                u45Var.f(R.menu.menu_folder_dash_item_popup);
                fc5 fc5Var = (fc5) u45Var.c;
                fc5Var.getClass();
                int i2 = 0;
                while (i2 < fc5Var.f.size()) {
                    int i3 = i2 + 1;
                    MenuItem item = fc5Var.getItem(i2);
                    if (item == null) {
                        l0.a();
                        return null;
                    }
                    int itemId = item.getItemId();
                    if (itemId == R.id.action_copy_folder_setup_to_local) {
                        List listC = pz4.g.c();
                        if (listC.isEmpty()) {
                            z = false;
                        } else {
                            Iterator it = listC.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z = false;
                                } else if (pe4.d(((FolderMetadata) it.next()).getFolderItem().getId(), zk3Var.a.getId())) {
                                    z = true;
                                }
                            }
                        }
                        to3 to3Var = kp3Var.d;
                        if (to3Var == null) {
                            pe4.F("section");
                            throw null;
                        }
                        item.setVisible(to3Var.isCloudSection() && !z);
                    } else if (itemId == R.id.action_delete_folder_setup) {
                        to3 to3Var2 = kp3Var.d;
                        if (to3Var2 == null) {
                            pe4.F("section");
                            throw null;
                        }
                        item.setVisible(to3Var2.isLocalSection() && j == 0);
                        if (item.isVisible()) {
                            item.setIconTintList(sz8.h0(sz8.r(kp3Var.i())));
                        }
                    } else if (itemId == R.id.action_delete_local_backup) {
                        to3 to3Var3 = kp3Var.d;
                        if (to3Var3 == null) {
                            pe4.F("section");
                            throw null;
                        }
                        item.setVisible(to3Var3.isLocalSection() && j > 0);
                        if (item.isVisible()) {
                            item.setIconTintList(sz8.h0(sz8.r(kp3Var.i())));
                        }
                    } else if (itemId != R.id.action_delete_cloud_backup) {
                        continue;
                    } else {
                        to3 to3Var4 = kp3Var.d;
                        if (to3Var4 == null) {
                            pe4.F("section");
                            throw null;
                        }
                        item.setVisible(to3Var4.isCloudSection());
                        if (item.isVisible()) {
                            item.setIconTintList(sz8.h0(sz8.r(kp3Var.i())));
                        }
                    }
                    i2 = i3;
                }
                u45Var.e = new gp3(kp3Var, zk3Var);
                u45Var.j();
                return be8Var;
            default:
                View view2 = (View) obj;
                vd5 vd5Var = (vd5) obj2;
                view2.getClass();
                vd5Var.getClass();
                ((MessagesDashActivity) this.receiver).W(view2, vd5Var);
                return be8Var;
        }
    }
}
