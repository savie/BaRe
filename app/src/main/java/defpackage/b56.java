package defpackage;

import org.swiftapps.swiftbackup.premium.PremiumActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b56 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ k28 b;

    public /* synthetic */ b56(k28 k28Var, int i) {
        this.a = i;
        this.b = k28Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        k28 k28Var = this.b;
        switch (i) {
            case 0:
                ai8.q(k28Var, PremiumActivity.class);
                return be8.a;
            default:
                int themeResource = k28Var.getPackageManager().getActivityInfo(k28Var.getComponentName(), 0).getThemeResource();
                return Boolean.valueOf(themeResource == 2132017819 || themeResource == 2132017822);
        }
    }
}
