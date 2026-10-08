package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iq3 implements Callable {
    public final /* synthetic */ String a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ fq3 c;
    public final /* synthetic */ int d;

    public iq3(String str, Context context, fq3 fq3Var, int i) {
        this.a = str;
        this.b = context;
        this.c = fq3Var;
        this.d = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object[] objArr = {this.c};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        return nq3.b(this.a, this.b, Collections.unmodifiableList(arrayList), this.d);
    }
}
