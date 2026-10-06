package defpackage;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c19 extends yc9 {
    public final /* synthetic */ int q = 1;

    @Override // defpackage.yc9
    public final /* synthetic */ ne b(Context context, Looper looper, z91 z91Var, Object obj, nz3 nz3Var, oz3 oz3Var) {
        switch (this.q) {
            case 0:
                throw eq3.g(obj);
            default:
                return new c39(context, looper, z91Var, (GoogleSignInOptions) obj, (g19) nz3Var, (g19) oz3Var);
        }
    }
}
