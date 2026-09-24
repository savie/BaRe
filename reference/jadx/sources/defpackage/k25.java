package defpackage;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k25 implements Callable {
    public final /* synthetic */ WeakReference a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ int c;
    public final /* synthetic */ String d;

    public k25(WeakReference weakReference, Context context, int i, String str) {
        this.a = weakReference;
        this.b = context;
        this.c = i;
        this.d = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Context context = (Context) this.a.get();
        if (context == null) {
            context = this.b;
        }
        return n25.e(this.c, context, this.d);
    }
}
