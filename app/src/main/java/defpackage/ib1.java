package defpackage;

import android.content.DialogInterface;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ib1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ib1(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i2) {
            case 0:
                lh6 lh6Var = (lh6) obj3;
                lh6Var.a = ((List) obj2).get(i);
                dialogInterface.dismiss();
                ((mt3) obj).invoke(lh6Var.a);
                break;
            case 1:
                ((vo3) obj).invoke((xk3) ((kx2) ((jx2) obj3)).get(((jh6) obj2).a), vk3.Desc);
                break;
            default:
                ScheduleItem scheduleItem = (ScheduleItem) ((v47) obj3).invoke((Set) obj2);
                u10 u10Var = ((j57) obj).o;
                if (u10Var != null) {
                    u10Var.invoke(scheduleItem);
                }
                break;
        }
    }
}
