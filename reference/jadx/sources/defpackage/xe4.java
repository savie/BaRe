package defpackage;

import android.content.Intent;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.intro.d;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xe4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntroActivity b;

    public /* synthetic */ xe4(IntroActivity introActivity, int i) {
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
                introActivity.T();
                return be8Var;
            case 1:
                int i2 = IntroActivity.V;
                return introActivity.Q().c.b;
            default:
                int i3 = IntroActivity.V;
                d dVarA0 = introActivity.a0();
                Intent intent = introActivity.getIntent();
                intent.getClass();
                dVarA0.n(intent, false, new oh1(1, dVarA0.o, qf4.class, "start", "start(Lkotlin/jvm/functions/Function1;)Z", 0, 3));
                return be8Var;
        }
    }
}
