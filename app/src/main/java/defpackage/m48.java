package defpackage;

import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m48 extends ContextWrapper {
    public static final Object a = null;

    public static void a(Context context) {
        if (context.getResources() instanceof o48) {
            return;
        }
        context.getResources();
        int i = sj8.a;
    }
}
