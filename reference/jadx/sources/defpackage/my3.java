package defpackage;

import android.graphics.drawable.Drawable;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class my3 extends jb9 {
    public final nh M;
    public final HashMap N = new HashMap(2);

    public my3(nh nhVar) {
        this.M = nhVar;
    }

    @Override // defpackage.jb9
    public final void G(p60 p60Var) {
        ly3 ly3Var = new ly3(this, p60Var);
        this.N.put(p60Var, ly3Var);
        nh nhVar = this.M;
        nhVar.getClass();
        String str = p60Var.a;
        str.getClass();
        pk6 pk6VarD = ((yk6) nhVar.b).f(Drawable.class).w(new a75()).D(str);
        pk6VarD.getClass();
        pk6VarD.A(ly3Var, null, pk6VarD, xh8.e);
    }

    @Override // defpackage.jb9
    public final void g(p60 p60Var) {
        px7 px7Var = (px7) this.N.remove(p60Var);
        if (px7Var != null) {
            nh nhVar = this.M;
            nhVar.getClass();
            ((yk6) nhVar.b).i(px7Var);
        }
    }
}
