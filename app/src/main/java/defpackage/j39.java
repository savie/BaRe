package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j39 extends BasePendingResult {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j39(i19 i19Var) {
        super(i19Var);
        ly8.i(i19Var, "GoogleApiClient must not be null");
        ly8.i(c80.a, "Api must not be null");
    }

    public abstract void f(ne neVar);

    public final void g(Status status) {
        ly8.b("Failed result must not be success", !status.n());
        e(b(status));
    }
}
