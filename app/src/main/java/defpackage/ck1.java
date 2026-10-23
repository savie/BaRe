package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ck1 implements sj7 {
    public final /* synthetic */ int a;

    public /* synthetic */ ck1(int i) {
        this.a = i;
    }

    @Override // defpackage.sj7
    public final Object a(j75 j75Var, di4 di4Var) {
        switch (this.a) {
            case 0:
                return new bk1((o75) j75Var.a);
            default:
                o75 o75Var = (o75) j75Var.a;
                String str = (String) xx3.b.a(di4Var);
                jb9 jb9Var = (jb9) j75Var.b;
                cz4 cz4Var = (cz4) j75Var.f;
                q86 q86Var = xx3.d;
                HashMap map = di4Var.a;
                p60 p60Var = new p60(str, jb9Var, cz4Var, (da4) map.get(q86Var));
                q86 q86Var2 = xx3.c;
                Object obj = Boolean.FALSE;
                Object obj2 = map.get(q86Var2);
                if (obj2 != null) {
                    obj = obj2;
                }
                return new v60(o75Var, p60Var, ((Boolean) obj).booleanValue());
        }
    }
}
