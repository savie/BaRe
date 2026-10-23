package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nn8 implements Serializable {
    public static final nn8 f;
    public static final nn8 k;
    public final yi4 a;
    public final yi4 b;
    public final yi4 c;
    public final yi4 d;
    public final yi4 e;

    static {
        yi4 yi4Var = yi4.a;
        yi4 yi4Var2 = yi4.b;
        f = new nn8(yi4Var2, yi4Var2, yi4Var, yi4Var, yi4Var2);
        k = new nn8(yi4Var2, yi4Var2, yi4Var2, yi4Var2, yi4Var2);
    }

    public nn8(yi4 yi4Var, yi4 yi4Var2, yi4 yi4Var3, yi4 yi4Var4, yi4 yi4Var5) {
        this.a = yi4Var;
        this.b = yi4Var2;
        this.c = yi4Var3;
        this.d = yi4Var4;
        this.e = yi4Var5;
    }

    public final String toString() {
        return "[Visibility: getter=" + this.a + ",isGetter=" + this.b + ",setter=" + this.c + ",creator=" + this.d + ",field=" + this.e + "]";
    }
}
