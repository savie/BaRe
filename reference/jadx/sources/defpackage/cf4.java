package defpackage;

import android.content.Intent;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.intro.d;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cf4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntroActivity b;

    public /* synthetic */ cf4(IntroActivity introActivity, int i) {
        this.a = i;
        this.b = introActivity;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        IntroActivity introActivity = this.b;
        switch (i) {
            case 0:
                int i2 = IntroActivity.V;
                return introActivity.Q().e;
            default:
                int i3 = IntroActivity.V;
                d dVarA0 = introActivity.a0();
                Intent intent = introActivity.getIntent();
                intent.getClass();
                zn7.q.h(null);
                dVarA0.n(intent, true, new g70(1, dVarA0.o, qf4.class, "retry", "retry(Lkotlin/jvm/functions/Function1;)Z", 0, 3));
                return be8.a;
        }
    }
}
