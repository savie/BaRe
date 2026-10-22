package defpackage;

import java.io.Serializable;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class iw implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ Serializable c;
    public final /* synthetic */ Object d;

    public /* synthetic */ iw(q63 q63Var, long j, mt3 mt3Var, xw xwVar) {
        this.a = 0;
        this.c = q63Var;
        this.b = j;
        this.d = mt3Var;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0061  */
    /* JADX WARN: Code duplicated, block: B:18:0x006b  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        long jA;
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.d;
        long j = this.b;
        Serializable serializable = this.c;
        switch (i) {
            case 0:
                q63 q63Var = (q63) serializable;
                mt3 mt3Var = (mt3) obj2;
                dz6 dz6Var = (dz6) obj;
                dz6Var.getClass();
                Long l = dz6Var.b;
                if (l == null) {
                    jA = q63Var.A();
                    if (jA < 1) {
                        jA = 1;
                    }
                } else {
                    if (l.longValue() <= 0) {
                        l = null;
                    }
                    if (l != null) {
                        jA = l.longValue();
                    } else {
                        jA = q63Var.A();
                        if (jA < 1) {
                            jA = 1;
                        }
                    }
                }
                long j2 = dz6Var.a;
                long j3 = j2 >= 0 ? j2 : 0L;
                if (j3 > jA) {
                    j3 = jA;
                }
                mt3Var.invoke(Long.valueOf(tu0.w((j3 / jA) * j)));
                break;
            case 1:
                ((qv) obj2).invoke(Integer.valueOf(Const.r(((kh6) serializable).a + ((Long) obj).longValue(), j)));
                break;
            default:
                ((wj3) obj2).c.invoke(Integer.valueOf(Const.r(((kh6) serializable).a + ((Long) obj).longValue(), j)));
                break;
        }
        return be8Var;
    }

    public /* synthetic */ iw(kh6 kh6Var, long j, Object obj, int i) {
        this.a = i;
        this.c = kh6Var;
        this.b = j;
        this.d = obj;
    }
}
