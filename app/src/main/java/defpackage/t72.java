package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t72 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t72(qo0 qo0Var, Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = qo0Var;
        this.c = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                t72 t72Var = new t72((mt3) obj2, jv1Var);
                t72Var.b = obj;
                return t72Var;
            case 1:
                t72 t72Var2 = new t72((em7) obj2, jv1Var);
                t72Var2.b = obj;
                return t72Var2;
            case 2:
                return new t72((me5) this.b, (vd5) obj2, jv1Var, 2);
            default:
                return new t72((tp8) this.b, (List) obj2, jv1Var, 3);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((t72) create((e98) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 1:
                return ((t72) create((em7) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 2:
                ((t72) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
            default:
                ((t72) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                lg7.H(obj);
                e98 e98Var = (e98) this.b;
                e98Var.getClass();
                return ((mt3) obj2).invoke(((gf6) e98Var).d());
            case 1:
                lg7.H(obj);
                em7 em7Var = (em7) this.b;
                return Boolean.valueOf((em7Var instanceof ga2) && em7Var.a <= ((em7) obj2).a);
            case 2:
                lg7.H(obj);
                me5 me5Var = (me5) this.b;
                me5Var.h(R.string.preparing);
                q63 localFile = ((vd5) obj2).getLocalFile();
                ArrayList arrayListK = ud5.k(localFile);
                me5Var.f();
                me5Var.c(ff5.class, new ff5(arrayListK, localFile));
                return be8Var;
            default:
                lg7.H(obj);
                tp8 tp8Var = (tp8) this.b;
                if (tp8Var.h) {
                    tp8Var.h(R.string.deleting_backup);
                }
                List list = (List) obj2;
                boolean z = tp8Var.h;
                dv dvVar = tp8Var.i;
                if (dvVar == null) {
                    pe4.F("repo");
                    throw null;
                }
                do8.a(list, z, dvVar);
                tp8Var.f();
                tp8Var.l.k(Boolean.TRUE);
                return be8Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t72(mt3 mt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = 0;
        this.c = mt3Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t72(em7 em7Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = 1;
        this.c = em7Var;
    }
}
