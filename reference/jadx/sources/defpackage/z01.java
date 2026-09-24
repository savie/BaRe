package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z01 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ b11 b;
    public final /* synthetic */ List c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z01(b11 b11Var, List list, boolean z, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = b11Var;
        this.c = list;
        this.d = z;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new z01(this.b, this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((z01) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        boolean z = this.d;
        b11 b11Var = this.b;
        if (i == 0) {
            lg7.H(obj);
            long jCurrentTimeMillis = System.currentTimeMillis();
            b11Var.h(R.string.deleting_backup);
            d01.b(this.c, z);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            long j = jCurrentTimeMillis2 > 500 ? 0L : 500 - jCurrentTimeMillis2;
            this.a = 1;
            Object objJ = yc9.j(j, this);
            yx1 yx1Var = yx1.a;
            if (objJ == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        b11Var.f();
        pz0 pz0Var = z ? pz0.LOCAL_AND_CLOUD : pz0.LOCAL;
        pz0Var.getClass();
        qz0 qz0Var = new qz0();
        qz0Var.a = pz0Var;
        ny2.b().e(qz0Var);
        return be8.a;
    }
}
