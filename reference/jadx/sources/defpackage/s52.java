package defpackage;

import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class s52 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s52(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                CsActivity csActivity = (CsActivity) this.receiver;
                int i2 = CsActivity.P0;
                csActivity.u0(zBooleanValue);
                break;
            case 1:
                ((d) this.receiver).k(((Boolean) obj).booleanValue());
                break;
            default:
                zx5 zx5Var = (zx5) obj;
                zx5Var.getClass();
                PasswordStrategyActivity passwordStrategyActivity = (PasswordStrategyActivity) this.receiver;
                vx5 vx5Var = (vx5) passwordStrategyActivity.M.getValue();
                ux5 ux5Var = ux5.STANDARD_PASSWORD;
                ux5 ux5Var2 = zx5Var.a;
                vx5Var.a(ux5Var, ux5Var2 == ux5Var, new hl0(1, passwordStrategyActivity.a0(), by5.class, "onModeClicked", "onModeClicked(Lorg/swiftapps/swiftbackup/password/PasswordStrategy;)V", 0, 5), null);
                vx5 vx5Var2 = (vx5) passwordStrategyActivity.N.getValue();
                ux5 ux5Var3 = ux5.USER_PASSWORD;
                vx5Var2.a(ux5Var3, ux5Var2 == ux5Var3, new k00(1, passwordStrategyActivity.a0(), by5.class, "onModeClicked", "onModeClicked(Lorg/swiftapps/swiftbackup/password/PasswordStrategy;)V", 0, 4), new ox(passwordStrategyActivity, 21));
                break;
        }
        return be8Var;
    }
}
