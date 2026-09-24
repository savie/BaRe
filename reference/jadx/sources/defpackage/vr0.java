package defpackage;

import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vr0 extends ws7 implements qt3 {
    public final /* synthetic */ Set a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vr0(Set set, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = set;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new vr0(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        vr0 vr0Var = (vr0) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        vr0Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        gs0 gs0Var = gs0.a;
        ds0 ds0Var = BlacklistData.Companion;
        List listV1 = el1.v1(this.a);
        ds0Var.getClass();
        gs0Var.d(ds0.a(listV1), true);
        dv.i(kz4.g, true, null, true, false, 10);
        dv.i(ua1.g, true, null, true, false, 10);
        return be8.a;
    }
}
