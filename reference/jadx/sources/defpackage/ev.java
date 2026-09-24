package defpackage;

import java.util.Set;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ev implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ev(int i, Object obj, Object obj2) {
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
                vg vgVar = (vg) obj;
                vgVar.getClass();
                ((mv) obj3).d(((kh6) obj2).a + vgVar.b);
                return be8Var;
            case 1:
                pj2 pj2Var = (pj2) obj3;
                wj2 wj2Var = (wj2) obj2;
                String str = (String) obj;
                if (Const.d(pj2Var.a)) {
                    pj2Var.b.p(wj2Var.a, str);
                }
                return be8Var;
            case 2:
                return nv6.put$lambda$0((nv6) obj3, (jv6) obj2, (fw6) obj);
            default:
                Set set = (Set) obj;
                set.getClass();
                ScheduleItem scheduleItem = (ScheduleItem) ((mt3) obj3).invoke(set);
                u10 u10Var = ((j57) obj2).o;
                if (u10Var != null) {
                    u10Var.invoke(scheduleItem);
                }
                return be8Var;
        }
    }
}
