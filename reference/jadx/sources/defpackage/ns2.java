package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ns2 extends View {
    public final /* synthetic */ ms2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ns2(ms2 ms2Var, Context context) {
        super(context);
        this.a = ms2Var;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        this.a.run();
    }
}
