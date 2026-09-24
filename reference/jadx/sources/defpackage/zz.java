package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zz extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ zz(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                return new zz((a00) obj2, jv1Var, 0);
            default:
                return new zz((ye5) obj2, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws IOException {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((zz) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((zz) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws IOException {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                lg7.H(obj);
                Set set = j94.a;
                ji jiVar = ((a00) obj2).d;
                j94.f(jiVar.getPackageName(), jiVar.isInstalled());
                break;
            default:
                lg7.H(obj);
                ArrayList arrayListF = ud5.f();
                ((ye5) obj2).f.k(arrayListF.isEmpty() ? we5.a : new ve5(arrayListF));
                break;
        }
        return be8Var;
    }
}
