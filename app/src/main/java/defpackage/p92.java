package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p92 implements dh5, ry3 {
    public Context a;

    public /* synthetic */ p92(Context context) {
        this.a = context;
    }

    public q92 a() {
        Context context = this.a;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        q92 q92Var = new q92();
        q92Var.a = bo2.a(k55.d);
        int i = 17;
        rb rbVar = new rb(context, i);
        q92Var.b = rbVar;
        int i2 = 12;
        q92Var.c = bo2.a(new h80((Object) rbVar, (Object) new rb(rbVar, 9), i2, false));
        rb rbVar2 = q92Var.b;
        q92Var.d = new tr9(rbVar2, 18);
        ea6 ea6VarA = bo2.a(new oe(i2, q92Var.d, bo2.a(new rb(rbVar2, 14))));
        q92Var.e = ea6VarA;
        ma2 ma2Var = new ma2(i);
        rb rbVar3 = q92Var.b;
        l22 l22Var = new l22(6, rbVar3, ea6VarA, ma2Var);
        ea6 ea6Var = q92Var.a;
        ea6 ea6Var2 = q92Var.c;
        q92Var.f = bo2.a(new u94(new tf2(ea6Var, ea6Var2, l22Var, ea6VarA, ea6VarA), new zr7(rbVar3, ea6Var2, ea6VarA, l22Var, ea6Var, ea6VarA, ea6VarA), new lj3(ea6Var, ea6VarA, l22Var, ea6VarA)));
        return q92Var;
    }

    @Override // defpackage.ry3
    public Object get() {
        return (ConnectivityManager) this.a.getSystemService("connectivity");
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new v83(this.a);
    }
}
