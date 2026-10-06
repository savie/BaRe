package defpackage;

import android.view.View;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jh implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jh(int i, Object obj, Object obj2) {
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
                qh qhVar = (qh) obj;
                qhVar.getClass();
                zn4 zn4Var = zn4.a;
                zn4.e(new lh(0, (nh) obj3, (w45) obj2, qhVar));
                break;
            case 1:
                DetailActivity detailActivity = ((gj2) obj3).a;
                ji jiVar = (ji) obj2;
                if (((Boolean) obj).booleanValue()) {
                    String strL = dj7.l("'", jiVar.getPackageName(), "' ", detailActivity.getString(R.string.copied_to_clipboard));
                    zn4 zn4Var2 = zn4.a;
                    zn4.e(new cv(14, detailActivity, strL));
                }
                break;
            case 2:
                zj2 zj2Var = (zj2) obj2;
                View view = (View) obj;
                view.getClass();
                DetailActivity detailActivity2 = ((qj2) obj3).a;
                iu iuVar = iu.EXTDATA;
                hk hkVar = zj2Var.a.getBackup().a;
                boolean z = zj2Var.i;
                String str = zj2Var.j;
                if (!z) {
                    str = null;
                }
                detailActivity2.c0(view, iuVar, hkVar, null, str);
                break;
            default:
                List list = (List) obj;
                list.getClass();
                ScheduleItem scheduleItem = (ScheduleItem) ((mt3) obj3).invoke(list);
                u10 u10Var = ((j57) obj2).o;
                if (u10Var != null) {
                    u10Var.invoke(scheduleItem);
                }
                break;
        }
        return be8Var;
    }
}
