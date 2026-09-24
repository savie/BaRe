package defpackage;

import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class af4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntroActivity b;

    public /* synthetic */ af4(IntroActivity introActivity, int i) {
        this.a = i;
        this.b = introActivity;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        IntroActivity introActivity = this.b;
        switch (i) {
            case 0:
                return introActivity.S;
            default:
                int i2 = IntroActivity.V;
                return introActivity.Q().d;
        }
    }
}
