package defpackage;

import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ve4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntroActivity b;

    public /* synthetic */ ve4(IntroActivity introActivity, int i) {
        this.a = i;
        this.b = introActivity;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        IntroActivity introActivity = this.b;
        switch (i) {
            case 0:
                introActivity.T = null;
                break;
            default:
                int i2 = IntroActivity.V;
                if (!introActivity.isFinishing()) {
                    introActivity.P().a(3);
                }
                break;
        }
        return be8Var;
    }
}
