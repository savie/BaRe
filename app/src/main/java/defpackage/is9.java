package defpackage;

import android.content.Context;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class is9 extends yc9 {
    public final /* synthetic */ int q;

    public /* synthetic */ is9(int i) {
        this.q = i;
    }

    @Override // defpackage.yc9
    public ne b(Context context, Looper looper, z91 z91Var, Object obj, nz3 nz3Var, oz3 oz3Var) {
        switch (this.q) {
            case 0:
                return new bt9(context, looper, 148, z91Var, nz3Var, oz3Var, 0);
            default:
                return super.b(context, looper, z91Var, obj, nz3Var, oz3Var);
        }
    }

    @Override // defpackage.yc9
    public ne c(Context context, Looper looper, z91 z91Var, Object obj, g19 g19Var, g19 g19Var2) {
        switch (this.q) {
            case 1:
                return new hn9(context, looper, 224, z91Var, g19Var, g19Var2, 0);
            default:
                return super.c(context, looper, z91Var, obj, g19Var, g19Var2);
        }
    }
}
