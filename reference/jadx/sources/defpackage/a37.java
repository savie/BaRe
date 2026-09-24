package defpackage;

import java.util.Map;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a37 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ ScheduleFabMenuView b;

    public /* synthetic */ a37(ScheduleFabMenuView scheduleFabMenuView, int i) {
        this.a = i;
        this.b = scheduleFabMenuView;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        ScheduleFabMenuView scheduleFabMenuView = this.b;
        switch (i) {
            case 0:
                scheduleFabMenuView.n.setVisibility(8);
                scheduleFabMenuView.p(ScheduleFabMenuView.a.Main, false);
                scheduleFabMenuView.k.setVisibility(8);
                break;
            default:
                Map map = ScheduleFabMenuView.K;
                scheduleFabMenuView.p(ScheduleFabMenuView.a.Apps, true);
                break;
        }
        return be8Var;
    }
}
