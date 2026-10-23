package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bf4 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntroActivity b;

    public /* synthetic */ bf4(IntroActivity introActivity, int i) {
        this.a = i;
        this.b = introActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        IntroActivity introActivity = this.b;
        switch (i) {
            case 0:
                int i2 = IntroActivity.V;
                introActivity.U(false, false);
                break;
            default:
                int i3 = IntroActivity.V;
                introActivity.P().a(3);
                break;
        }
    }
}
