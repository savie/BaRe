package defpackage;

import com.jcraft.jsch.SftpATTRS;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tj3 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ tj3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0043  */
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ((wj3) obj3).c.invoke(Integer.valueOf(Const.r(((Long) obj).longValue(), ((Long) obj2).longValue())));
                return be8Var;
            case 1:
                PremiumActivity premiumActivity = (PremiumActivity) obj3;
                xa4 xa4Var = (xa4) obj;
                ((Integer) obj2).getClass();
                int i2 = PremiumActivity.V;
                xa4Var.getClass();
                premiumActivity.Q().t(sz8.Y(xa4Var.getItemId()));
                premiumActivity.V(xa4Var);
                return be8Var;
            case 2:
                int iIntValue = ((Integer) obj).intValue();
                mx1 mx1Var = (mx1) obj2;
                nx1 key = mx1Var.getKey();
                mx1 mx1Var2 = ((sw6) obj3).b.get(key);
                if (key == nh4.b) {
                    oh4 oh4Var = (oh4) mx1Var2;
                    oh4 oh4Var2 = (oh4) mx1Var;
                    while (true) {
                        oh4 parent = null;
                        if (oh4Var2 == null) {
                            oh4Var2 = null;
                        } else if (oh4Var2 != oh4Var && (oh4Var2 instanceof w57)) {
                            g61 g61VarY = ((w57) oh4Var2).y();
                            if (g61VarY != null) {
                                parent = g61VarY.getParent();
                            }
                            oh4Var2 = parent;
                        }
                    }
                    if (oh4Var2 != oh4Var) {
                        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + oh4Var2 + ", expected child of " + oh4Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
                    }
                    if (oh4Var != null) {
                        iIntValue++;
                    }
                } else if (mx1Var != mx1Var2) {
                    iIntValue = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                } else {
                    iIntValue++;
                }
                return Integer.valueOf(iIntValue);
            default:
                vq4 vq4Var = (vq4) obj;
                ((Integer) obj2).getClass();
                int i3 = ScheduleLabelsSelectActivity.X;
                vq4Var.getClass();
                ((ScheduleLabelsSelectActivity) obj3).V().j(vq4Var.a.getId(), true);
                return be8Var;
        }
    }
}
