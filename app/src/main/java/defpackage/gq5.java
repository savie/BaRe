package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gq5 extends ws7 implements qt3 {
    public /* synthetic */ Object a;
    public final /* synthetic */ hq5 b;
    public final /* synthetic */ g90 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gq5(hq5 hq5Var, g90 g90Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = hq5Var;
        this.c = g90Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        gq5 gq5Var = new gq5(this.b, this.c, jv1Var);
        gq5Var.a = obj;
        return gq5Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        gq5 gq5Var = (gq5) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        gq5Var.invokeSuspend(be8Var);
        return be8Var;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object bn6Var;
        boolean z;
        lg7.H(obj);
        hq5 hq5Var = this.b;
        hq5Var.h(R.string.processing);
        g90 g90Var = this.c;
        try {
            uj ujVar = hq5Var.f;
            if (ujVar == null) {
                pe4.F("authProvider");
                throw null;
            }
            SwiftApp.Companion companion = SwiftApp.d;
            vj vjVarD = ujVar.d(SwiftApp.Companion.c(), g90Var.I());
            String str = vjVarD.a;
            if (nq7.j0(str)) {
                z = false;
            } else {
                if (hq5Var.g == null) {
                    pe4.F("tokenProcessor");
                    throw null;
                }
                if (nh4.j(str, vjVarD.c, vjVarD.b)) {
                    z = true;
                } else {
                    z = false;
                }
            }
            bn6Var = Boolean.valueOf(z);
            Throwable thA = en6.a(bn6Var);
            if (thA != null) {
                vr6.e$default(vr6.INSTANCE, hq5Var.b, "Error while authenticating", thA, null, 8, null);
            }
            Boolean bool = Boolean.FALSE;
            if (bn6Var instanceof bn6) {
                bn6Var = bool;
            }
            hq5Var.i.i((Boolean) bn6Var);
            hq5Var.f();
            return be8.a;
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
    }
}
