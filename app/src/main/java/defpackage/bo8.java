package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bo8 extends ws7 implements qt3 {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ co8 b;
    public final /* synthetic */ List c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bo8(boolean z, co8 co8Var, List list, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = z;
        this.b = co8Var;
        this.c = list;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new bo8(this.a, this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        bo8 bo8Var = (bo8) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        bo8Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        co8 co8Var = this.b;
        boolean z = this.a;
        if (z) {
            co8Var.h(R.string.deleting_backup);
        }
        do8.a(this.c, z, z ? xj1.g : c05.g);
        co8Var.f();
        co8Var.d();
        return be8.a;
    }
}
