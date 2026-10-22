package defpackage;

import android.content.Context;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ie4 extends yc9 {
    public final /* synthetic */ int q = 0;

    @Override // defpackage.yc9
    public /* synthetic */ ne b(Context context, Looper looper, z91 z91Var, Object obj, nz3 nz3Var, oz3 oz3Var) {
        switch (this.q) {
            case 1:
                return new a39(context, looper, z91Var, (b39) obj, (g19) nz3Var, (g19) oz3Var);
            default:
                return super.b(context, looper, z91Var, obj, nz3Var, oz3Var);
        }
    }

    @Override // defpackage.yc9
    public ne c(Context context, Looper looper, z91 z91Var, Object obj, g19 g19Var, g19 g19Var2) {
        switch (this.q) {
            case 0:
                context.getClass();
                looper.getClass();
                ((le) obj).getClass();
                return new km6(context, looper, 381, z91Var, g19Var, g19Var2, 0);
            default:
                return super.c(context, looper, z91Var, obj, g19Var, g19Var2);
        }
    }
}
