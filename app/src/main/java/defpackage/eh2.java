package defpackage;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.a;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.b;
import org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eh2 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ eh2(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                fh2 fh2Var = (fh2) obj3;
                kb2 kb2Var = (kb2) obj2;
                if (!((Boolean) obj).booleanValue()) {
                    Const.K(fh2Var.e, R.string.delete_protected_backups, new cl(10), new bk(kb2Var, 16));
                }
                return be8Var;
            case 1:
                View view = (View) obj;
                view.getClass();
                ((pj2) obj3).a.c0(view, iu.APP, null, ((wj2) obj2).a, null);
                return be8Var;
            case 2:
                View view2 = (View) obj;
                view2.getClass();
                ((qj2) obj3).a.c0(view2, iu.EXPANSION, ((zj2) obj2).a.getBackup().a, null, null);
                return be8Var;
            case 3:
                MultipleBackupsActivity multipleBackupsActivity = (MultipleBackupsActivity) obj2;
                Integer num = (Integer) obj;
                num.getClass();
                int i2 = MultipleBackupsActivity.T;
                MultipleBackupStrategy.Companion.getClass();
                multipleBackupsActivity.a0().k(MultipleBackupStrategy.copy$default((MultipleBackupStrategy) obj3, null, Integer.valueOf(b.d(num)), null, 5, null));
                return be8Var;
            case 4:
                Set set = (Set) obj;
                set.getClass();
                ScheduleItem scheduleItem = (ScheduleItem) ((c57) obj3).invoke(set);
                u10 u10Var = ((j57) obj2).o;
                if (u10Var != null) {
                    u10Var.invoke(scheduleItem);
                }
                return be8Var;
            case 5:
                ShortcutsActivity shortcutsActivity = (ShortcutsActivity) obj3;
                lh6 lh6Var = (lh6) obj2;
                int i3 = ShortcutsActivity.P;
                ((ry5) obj).getClass();
                if (!shortcutsActivity.isFinishing()) {
                    String str = ScheduleService.p;
                    a.b(true, (ScheduleService.RunMode) lh6Var.a, new e7(shortcutsActivity, 24));
                }
                return be8Var;
            default:
                ji7 ji7Var = (ji7) obj3;
                String str2 = (String) obj2;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    String strC = ji7Var.C(str2);
                    List<p73> listN0 = el1.N0(2, wm2Var.n(strC));
                    ArrayList arrayList = new ArrayList();
                    for (p73 p73Var : listN0) {
                        p73Var.getClass();
                        arrayList.add(og1.h(p73Var, strC));
                    }
                    return arrayList;
                } catch (Exception e) {
                    Log.e("SmbService", "list", e);
                    vr6.e$default(vr6.INSTANCE, "SmbService", "list: ".concat(io4.b(e)), null, 4, null);
                    return ov2.a;
                }
        }
    }
}
