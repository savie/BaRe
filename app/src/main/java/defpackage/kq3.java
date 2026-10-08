package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kq3 implements Callable {
    public final /* synthetic */ String a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ int d;

    public kq3(String str, Context context, ArrayList arrayList, int i) {
        this.a = str;
        this.b = context;
        this.c = arrayList;
        this.d = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        try {
            return nq3.b(this.a, this.b, this.c, this.d);
        } catch (Throwable unused) {
            return new mq3(-3);
        }
    }
}
