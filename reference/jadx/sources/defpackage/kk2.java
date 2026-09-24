package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kk2 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ List c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ kk2(Object obj, List list, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = list;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        String strB;
        int i;
        int i2 = this.a;
        be8 be8Var = be8.a;
        Object obj = this.e;
        Object obj2 = this.d;
        List list = this.c;
        Object obj3 = this.b;
        switch (i2) {
            case 0:
                mk2 mk2Var = (mk2) obj3;
                List list2 = (List) obj2;
                List list3 = (List) obj;
                long jCurrentTimeMillis = System.currentTimeMillis();
                SwiftApp.Companion companion = SwiftApp.d;
                String string = SwiftApp.Companion.c().getString(R.string.deleting_backup);
                string.getClass();
                mk2Var.i(string);
                q05 q05Var = q05.DEVICE;
                if (list2.isEmpty()) {
                    q05Var = null;
                }
                q05 q05Var2 = q05.CLOUD;
                if (list3.isEmpty()) {
                    q05Var2 = null;
                }
                oy7 oy7Var = new oy7(list, x50.p0(new q05[]{q05Var, q05Var2}), new my7(list2, list3));
                try {
                    ji jiVar = mk2Var.e;
                    if (jiVar == null) {
                        pe4.F("app");
                        throw null;
                    }
                    ik.a(jiVar.getPackageName(), oy7Var);
                    if (!list2.isEmpty()) {
                        mk2Var.h.incrementAndGet();
                    }
                    strB = null;
                    ai8.o(Const.m(jCurrentTimeMillis, 500L));
                    mk2Var.f();
                    g00 g00Var = g00.a;
                    ji jiVar2 = mk2Var.e;
                    if (jiVar2 == null) {
                        pe4.F("app");
                        throw null;
                    }
                    g00.F(jiVar2.getPackageName());
                    if (strB != null && strB.length() != 0 && !nq7.j0(strB)) {
                        mk2Var.e().k(new go0(strB));
                    }
                    return be8Var;
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, mk2Var.b, "deleteBackupParts", e, null, 8, null);
                    strB = io4.b(e);
                }
                break;
            default:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj3;
                ArrayList arrayList = (ArrayList) list;
                zc6 zc6Var = (zc6) obj2;
                lk3 lk3Var = (lk3) obj;
                if (!homeSearchActivity.isFinishing() && !homeSearchActivity.isDestroyed()) {
                    if (arrayList.isEmpty()) {
                        boolean z = zc6Var.e;
                        if (z) {
                            if (z && z && zc6Var.q) {
                                i = R.string.no_backup_in_cloud;
                            } else {
                                i = z ? R.string.no_backup_on_device : R.string.folder_items_empty_list_error;
                            }
                            String string2 = homeSearchActivity.getString(i);
                            string2.getClass();
                            zn4 zn4Var = zn4.a;
                            zn4.e(new cv(14, homeSearchActivity, string2));
                        } else {
                            int i3 = FoldersDashActivity.U;
                            nc8.k0(homeSearchActivity, to3.LOCAL);
                            homeSearchActivity.V();
                        }
                    } else if (!lk3Var.c() || V.INSTANCE.getA()) {
                        int i4 = FoldersBatchActivity.Y;
                        lg7.G(homeSearchActivity, lk3Var, arrayList);
                        homeSearchActivity.V();
                    } else {
                        int i5 = PremiumActivity.V;
                        rs9.u(homeSearchActivity);
                        homeSearchActivity.V();
                    }
                }
                return be8Var;
        }
    }
}
