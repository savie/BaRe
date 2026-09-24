package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kw8 {
    public static final kw8 b;
    public be4 a;

    static {
        kw8 kw8Var = new kw8();
        kw8Var.a = null;
        b = kw8Var;
    }

    public static be4 a(Context context) {
        be4 be4Var;
        kw8 kw8Var = b;
        synchronized (kw8Var) {
            try {
                if (kw8Var.a == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    kw8Var.a = new be4(context, 2);
                }
                be4Var = kw8Var.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return be4Var;
    }
}
