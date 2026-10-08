package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gh4 extends ws7 implements qt3 {
    public final /* synthetic */ int a = 0;
    public /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gh4(tp8 tp8Var, List list, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = tp8Var;
        this.c = list;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                gh4 gh4Var = new gh4((mt3) obj2, jv1Var);
                gh4Var.b = obj;
                return gh4Var;
            default:
                return new gh4((tp8) this.b, (List) obj2, jv1Var);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ((gh4) create((ij5) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
            default:
                ((gh4) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                lg7.H(obj);
                ((mt3) obj2).invoke((ij5) this.b);
                break;
            default:
                lg7.H(obj);
                tp8 tp8Var = (tp8) this.b;
                tp8Var.j((List) obj2);
                tp8Var.l.k(Boolean.TRUE);
                break;
        }
        return be8Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gh4(mt3 mt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = mt3Var;
    }
}
