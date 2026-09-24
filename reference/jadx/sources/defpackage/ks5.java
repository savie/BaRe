package defpackage;

import okhttp3.Call;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ks5 implements Cloneable {
    public final Call a;
    public final hm6 b;

    public ks5(Call call, hm6 hm6Var) {
        this.a = call;
        this.b = hm6Var;
    }

    public final Object a() {
        return this.b.a(this.a.g());
    }

    public final Object clone() {
        return new ks5(this.a.clone(), this.b);
    }
}
