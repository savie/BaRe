package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class x72 extends ws7 implements qt3 {
    public final /* synthetic */ int a = 1;
    public int b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x72(jv1 jv1Var, mt3 mt3Var, eo6 eo6Var, boolean z) {
        super(2, jv1Var);
        this.d = eo6Var;
        this.c = z;
        this.e = mt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        boolean z = this.c;
        Object obj2 = this.e;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                return new x72(jv1Var, (mt3) obj2, (eo6) obj3, z);
            default:
                return new x72((he5) obj3, (List) obj2, z, jv1Var);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                break;
        }
        return ((x72) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007f  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        yx1 yx1Var = yx1.a;
        Object obj2 = this.d;
        Object obj3 = this.e;
        boolean z = this.c;
        jv1 jv1Var = null;
        switch (i) {
            case 0:
                int i2 = this.b;
                if (i2 != 0) {
                    if (i2 == 1) {
                        lg7.H(obj);
                        return obj;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                eo6 eo6Var = (eo6) obj2;
                a82 a82Var = new a82(null, (mt3) obj3, eo6Var, z);
                this.b = 1;
                Object objK = eo6Var.k(z, a82Var, this);
                return objK == yx1Var ? yx1Var : objK;
            default:
                List list = (List) obj3;
                he5 he5Var = (he5) obj2;
                ex6 ex6Var = he5Var.f;
                int i3 = this.b;
                if (i3 == 0) {
                    lg7.H(obj);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    he5Var.h(R.string.deleting_backup);
                    ud5.b(list, z);
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    if (jCurrentTimeMillis2 < 500) {
                        this.b = 1;
                        if (yc9.j(500 - jCurrentTimeMillis2, this) == yx1Var) {
                            return yx1Var;
                        }
                    }
                } else {
                    if (i3 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                he5Var.f();
                ze5 ze5Var = z ? ze5.LOCAL_AND_CLOUD : ze5.LOCAL;
                ze5Var.getClass();
                af5 af5Var = new af5();
                af5Var.a = ze5Var;
                ny2.b().e(af5Var);
                fe5 fe5Var = (fe5) ex6Var.d();
                if (fe5Var != null) {
                    if (list.size() == fe5Var.b.size()) {
                        he5Var.d();
                    } else {
                        ex6Var.k(new fe5(new ArrayList(), true));
                        zn4 zn4Var = zn4.a;
                        zn4.b(null, new mj(he5Var, jv1Var, 2));
                    }
                } else {
                    ex6Var.k(new fe5(new ArrayList(), true));
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(null, new mj(he5Var, jv1Var, 2));
                }
                return be8.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x72(he5 he5Var, List list, boolean z, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = he5Var;
        this.e = list;
        this.c = z;
    }
}
