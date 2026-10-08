package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.widget.TextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hq0 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hq0(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        jv1 jv1Var = null;
        boolean z = false;
        int i2 = 1;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                wb6.b bVar = (wb6.b) obj3;
                String str = (String) obj2;
                ((Boolean) obj).getClass();
                if (bVar == wb6.b.PURCHASED) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    String string = contextC.getString(R.string.updating_purchases);
                    string.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, contextC, string));
                    Const.E(str);
                } else {
                    wq0 wq0Var = wq0.a;
                    zn4.c(new jx(4));
                }
                return be8Var;
            case 1:
                final tp3 tp3Var = (tp3) obj3;
                qw6 qw6Var = (qw6) obj;
                TextView textView = tp3Var.i;
                CircularProgressIndicator circularProgressIndicator = tp3Var.h;
                TextView textView2 = tp3Var.k;
                TextView textView3 = tp3Var.e;
                ShapeableImageView shapeableImageView = tp3Var.f;
                TextView textView4 = tp3Var.d;
                tp3Var.b.a.setVisibility(0);
                TaskActivity taskActivity = tp3Var.a;
                final dy7 dy7Var = new dy7(taskActivity, tp3Var.j);
                vq vqVar = ((rw6) obj2).d;
                ih6 ih6Var = new ih6();
                ih6 ih6Var2 = new ih6();
                String str2 = vqVar != null ? (String) vqVar.c : null;
                boolean z2 = !(str2 == null || str2.length() == 0);
                TextView textView5 = tp3Var.c;
                if (vqVar != null) {
                    textView5.setText((String) vqVar.b);
                    String str3 = (String) vqVar.c;
                    sz8.d0(textView4, z2);
                    textView4.setText(str3);
                } else {
                    textView5.setText(R.string.folders);
                    textView4.setVisibility(8);
                }
                tp3.b(ih6Var, ih6Var2, tp3Var);
                final qp3 qp3Var = (qp3) (qw6Var != null ? qw6Var.a : null);
                if (qp3Var == null) {
                    String string2 = (qw6Var == null || !qw6Var.a()) ? taskActivity.getString(R.string.waiting) : taskActivity.getString(R.string.x_folders, "0");
                    string2.getClass();
                    textView3.setText(string2);
                    sz8.W(textView2);
                    shapeableImageView.setVisibility(8);
                    sz8.W(circularProgressIndicator);
                    sz8.W(textView);
                } else {
                    sz8.c0(textView2);
                    shapeableImageView.setVisibility(0);
                    sz8.X(circularProgressIndicator);
                    sz8.X(textView);
                    shapeableImageView.setImageResource(R.drawable.ic_folder_raster);
                    if (qp3Var.g()) {
                        textView3.setText(taskActivity.getString(R.string.x_folders, String.valueOf(qp3Var.m.size())));
                    }
                    int i3 = 4;
                    qp3Var.o.e(taskActivity, new s30(i3, new bz(i3, qp3Var, tp3Var)));
                    qp3Var.g.e(taskActivity, new s30(i3, new le1(qp3Var, tp3Var, ih6Var, ih6Var2, 1)));
                    qp3Var.h.e(taskActivity, new s30(i3, new rp3(qp3Var, tp3Var, ih6Var2, ih6Var, 0)));
                    qp3Var.d.e(taskActivity, new s30(i3, new v10(dy7Var, 12)));
                    qp3Var.i.e(taskActivity, new s30(i3, new px(tp3Var, 8)));
                    final lh6 lh6Var = new lh6();
                    qp3Var.e.e(taskActivity, new s30(i3, new mt3() { // from class: sp3
                        @Override // defpackage.mt3
                        public final Object invoke(Object obj4) {
                            km5 km5Var = tp3Var.g;
                            Integer num = (Integer) obj4;
                            be8 be8Var2 = be8.a;
                            if (num != null) {
                                lh6 lh6Var2 = lh6Var;
                                Integer num2 = (Integer) lh6Var2.a;
                                int iIntValue = num.intValue();
                                if (num2 == null || num2.intValue() != iIntValue) {
                                    int iIntValue2 = num.intValue();
                                    qp3 qp3Var2 = qp3Var;
                                    int iQ = Const.q(iIntValue2, qp3Var2.d());
                                    lh6Var2.a = num;
                                    dy7Var.b(iQ);
                                    km5Var.u(qp3Var2.d());
                                    km5Var.v(num.intValue(), num2 != null);
                                    return be8Var2;
                                }
                            }
                            return be8Var2;
                        }
                    }));
                    qp3Var.f.e(taskActivity, new s30(i3, new jf(6, new lh6(), tp3Var)));
                    qp3Var.j.e(taskActivity, new s30(i3, new w20(tp3Var, 13)));
                    qp3Var.c.e(taskActivity, new s30(i3, new kl(tp3Var, dy7Var, qp3Var, 2)));
                }
                return be8Var;
            case 2:
                TreeMap treeMap = (TreeMap) obj3;
                ArrayList arrayList = (ArrayList) obj2;
                za5 za5Var = (za5) obj;
                za5Var.getClass();
                for (bb5 bb5Var : za5Var.c) {
                    arrayList.set(bb5Var.a, bb5Var.b);
                }
                treeMap.put(Integer.valueOf(za5Var.a), za5Var.b);
                return be8Var;
            case 3:
                y27 y27Var = (y27) obj3;
                w27 w27Var = (w27) obj2;
                int iIntValue = ((Integer) obj).intValue();
                List entries = ScheduleData.a.getEntries();
                ArrayList arrayList2 = new ArrayList(hl1.G0(entries, 10));
                Iterator it = ((z3) entries).iterator();
                while (true) {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        y27Var.f.w(new fm7((List) arrayList2, w27Var.e.b, false, (String) null, 28), false);
                        return be8Var;
                    }
                    ScheduleData.a aVar = (ScheduleData.a) w3Var.next();
                    arrayList2.add(new x27(aVar, aVar == ScheduleData.a.MINIMUM_PERCENT ? iIntValue : 50));
                }
                break;
            case 4:
                j57 j57Var = (j57) obj2;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ScheduleItem.Folders foldersCopy$default = ScheduleItem.Folders.copy$default((ScheduleItem.Folders) ((ScheduleItem) obj3), null, null, zBooleanValue, null, null, null, null, null, false, 507, null);
                if (zBooleanValue) {
                    u10 u10Var = j57Var.o;
                    if (u10Var != null) {
                        u10Var.invoke(foldersCopy$default);
                    }
                } else {
                    j57Var.t = foldersCopy$default;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("EXTRA_BACKUP_ALL_FOLDERS", false);
                    List<FolderItem> folderItems = foldersCopy$default.getFolderItems();
                    if (folderItems == null) {
                        folderItems = ov2.a;
                    }
                    bundle.putParcelableArrayList("EXTRA_SELECTED_FOLDER_ITEMS", new ArrayList<>(folderItems));
                    j57Var.m.f.a(bundle);
                }
                return be8Var;
            case 5:
                ji7 ji7Var = (ji7) obj3;
                String str4 = (String) obj2;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    String strC = ji7Var.C(str4);
                    if (wm2Var.j(strC).b.b) {
                        wm2Var.z(strC, true);
                    } else if (!ji7Var.x(str4)) {
                        throw new IllegalStateException(("Unable to delete file at " + strC).toString());
                    }
                } catch (Exception e) {
                    if (ji7Var.r(str4)) {
                        vr6.e$default(vr6.INSTANCE, "SmbService", "delete", e, null, 8, null);
                    }
                }
                return be8Var;
            case 6:
                zn7 zn7Var = (zn7) obj3;
                StorageSwitchActivity storageSwitchActivity = (StorageSwitchActivity) obj2;
                int i4 = StorageSwitchActivity.f0;
                ((Uri) obj).getClass();
                if (zn7Var.g()) {
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(null, new as0(zn7Var, storageSwitchActivity, jv1Var, i2));
                }
                return be8Var;
            case 7:
                wp8 wp8Var = (wp8) obj3;
                yp8 yp8Var = (yp8) obj2;
                TextView textView6 = yp8Var.i;
                String str5 = (String) obj;
                if (str5 != null && str5.length() != 0 && !wp8Var.e().isComplete()) {
                    z = true;
                }
                sz8.d0(textView6, z);
                sz8.d0(yp8Var.j, z);
                sz8.d0(yp8Var.k, z);
                if (z) {
                    textView6.setText(str5);
                }
                return be8Var;
            default:
                tt8 tt8Var = (tt8) obj3;
                yp8 yp8Var2 = (yp8) obj2;
                TextView textView7 = yp8Var2.i;
                String str6 = (String) obj;
                if (str6 != null && str6.length() != 0 && !tt8Var.e().isComplete()) {
                    z = true;
                }
                sz8.d0(textView7, z);
                sz8.d0(yp8Var2.j, z);
                sz8.d0(yp8Var2.k, z);
                if (z) {
                    textView7.setText(str6);
                }
                return be8Var;
        }
    }
}
