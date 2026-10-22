package defpackage;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vh6 implements au4 {
    public final eu4 a;
    public final y81 b;

    public vh6(eu4 eu4Var) {
        this.a = eu4Var;
        a91 a91Var = a91.c;
        Class<?> cls = eu4Var.getClass();
        y81 y81Var = (y81) a91Var.a.get(cls);
        this.b = y81Var == null ? a91Var.a(cls, null) : y81Var;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        HashMap map = this.b.a;
        List list = (List) map.get(rt4Var);
        eu4 eu4Var = this.a;
        y81.a(list, fu4Var, rt4Var, eu4Var);
        y81.a((List) map.get(rt4.ON_ANY), fu4Var, rt4Var, eu4Var);
    }
}
