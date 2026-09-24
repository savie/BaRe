package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vv extends ws7 implements qt3 {
    public final /* synthetic */ Boolean a;
    public final /* synthetic */ Boolean b;
    public final /* synthetic */ lh6 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vv(Boolean bool, Boolean bool2, lh6 lh6Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = bool;
        this.b = bool2;
        this.c = lh6Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new vv(this.a, this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        vv vvVar = (vv) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        vvVar.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        Boolean bool = Boolean.TRUE;
        if (pe4.d(this.a, bool)) {
            mp6.a.h(new String[]{"settings put global package_verifier_enable 1"}, ip6.SHIZUKU);
        }
        if (pe4.d(this.b, bool)) {
            mp6.a.h(new String[]{"settings put global verifier_verify_adb_installs 1"}, ip6.SHIZUKU);
        }
        if (pe4.d(this.c.a, bool)) {
            mp6.a.h(new String[]{"bmgr ".concat("enable true")}, ip6.SHIZUKU);
        }
        return be8.a;
    }
}
