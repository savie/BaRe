package defpackage;

import java.util.Map;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k37 extends cu3 implements mt3 {
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        ScheduleItem.Type type = (ScheduleItem.Type) obj;
        type.getClass();
        m37 m37Var = (m37) this.receiver;
        m37Var.getClass();
        if (c47.d()) {
            ScheduleFabMenuView scheduleFabMenuViewM = m37Var.m();
            Map map = ScheduleFabMenuView.K;
            scheduleFabMenuViewM.o(false, true);
            c47.f(m37Var.i());
        } else {
            ScheduleFabMenuView scheduleFabMenuViewM2 = m37Var.m();
            Map map2 = ScheduleFabMenuView.K;
            scheduleFabMenuViewM2.o(false, true);
            m37Var.p().j(type);
        }
        return be8.a;
    }
}
