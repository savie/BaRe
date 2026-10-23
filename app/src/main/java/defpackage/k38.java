package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k38 extends s91 {
    public final /* synthetic */ m38 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k38(m38 m38Var, Context context) {
        super(context, R.string.material_hour_selection);
        this.e = m38Var;
    }

    @Override // defpackage.s91, defpackage.w5
    public final void d(View view, m6 m6Var) {
        super.d(view, m6Var);
        Resources resources = view.getResources();
        j38 j38Var = this.e.b;
        m6Var.k(resources.getString(j38Var.a == 1 ? R.string.material_hour_24h_suffix : R.string.material_hour_suffix, String.valueOf(j38Var.e())));
    }
}
