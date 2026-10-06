package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dy3 extends ContextWrapper {
    public static final gv3 k = new gv3();
    public final m35 a;
    public final qy3 b;
    public final ns0 c;
    public final us2 d;
    public final List e;
    public final k50 f;
    public final zw2 g;
    public final ky3 h;
    public final int i;
    public bl6 j;

    public dy3(Context context, m35 m35Var, ni6 ni6Var, ns0 ns0Var, us2 us2Var, k50 k50Var, List list, zw2 zw2Var, ky3 ky3Var, int i) {
        super(context.getApplicationContext());
        this.a = m35Var;
        this.c = ns0Var;
        this.d = us2Var;
        this.e = list;
        this.f = k50Var;
        this.g = zw2Var;
        this.h = ky3Var;
        this.i = i;
        this.b = new qy3(ni6Var);
    }

    public final mi6 a() {
        return (mi6) this.b.get();
    }
}
