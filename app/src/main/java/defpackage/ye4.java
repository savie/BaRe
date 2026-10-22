package defpackage;

import android.content.Intent;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.intro.d;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ye4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntroActivity b;

    public /* synthetic */ ye4(IntroActivity introActivity, int i) {
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
                introActivity.V();
                return be8Var;
            case 1:
                int i2 = IntroActivity.V;
                return (MaterialButton) introActivity.Q().b.c;
            case 2:
                int i3 = IntroActivity.V;
                d dVarA0 = introActivity.a0();
                Intent intent = introActivity.getIntent();
                intent.getClass();
                dVarA0.n(intent, true, new g70(1, dVarA0.o, qf4.class, "retry", "retry(Lkotlin/jvm/functions/Function1;)Z", 0, 3));
                return be8Var;
            default:
                introActivity.T = null;
                d dVarA1 = introActivity.a0();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new tf4(dVarA1, null));
                return be8Var;
        }
    }
}
