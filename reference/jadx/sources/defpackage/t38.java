package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t38 extends s91 {
    public final /* synthetic */ Resources e;
    public final /* synthetic */ j38 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t38(Context context, Resources resources, j38 j38Var) {
        super(context, R.string.material_minute_selection);
        this.e = resources;
        this.f = j38Var;
    }

    @Override // defpackage.s91, defpackage.w5
    public final void d(View view, m6 m6Var) {
        super.d(view, m6Var);
        m6Var.k(this.e.getString(R.string.material_timepicker_minute) + TokenAuthenticationScheme.SCHEME_DELIMITER + view.getResources().getString(R.string.material_minute_suffix, String.valueOf(this.f.c)));
    }
}
