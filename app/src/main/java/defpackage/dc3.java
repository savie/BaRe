package defpackage;

import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenSession;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dc3 extends ws7 implements qt3 {
    public /* synthetic */ Object a;
    public final /* synthetic */ ec3 b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dc3(ec3 ec3Var, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = ec3Var;
        this.c = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        dc3 dc3Var = new dc3(this.b, this.c, jv1Var);
        dc3Var.a = obj;
        return dc3Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        dc3 dc3Var = (dc3) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        dc3Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object obj2 = zb3.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) this.a;
        lg7.H(obj);
        try {
            ec3 ec3Var = this.b;
            sb3 sb3Var = ec3Var.f;
            String str = ec3Var.h;
            String str2 = ec3Var.i;
            sb3Var.getClass();
            str.getClass();
            str2.getClass();
            sb3Var.d = new FilenCredentials(nq7.H0(str).toString(), str2, null, 4, null);
            sb3Var.e = null;
            sb3Var.f = null;
            if (this.b.f.t(this.c, false) instanceof CloudOperationsImpl$LoginResult.Success) {
                if (eh1.d(this.b.f) != null) {
                    if (l73.t(xx1Var) && !this.b.k) {
                        sb3 sb3Var2 = this.b.f;
                        FilenSession filenSession = sb3Var2.e;
                        if (filenSession != null) {
                            FilenCredentials filenCredentials = sb3Var2.d;
                            if (filenCredentials == null) {
                                l0.e("Filen credentials are not loaded");
                            } else if (pe4.d(filenCredentials.getSession(), filenSession)) {
                                FilenCredentials.Companion.getClass();
                                gb3.a(filenCredentials);
                            } else {
                                l0.e("Filen session is not ready to persist");
                            }
                        } else {
                            l0.e("Filen is not authenticated");
                        }
                        obj2 = xb3.a;
                    }
                }
                return be8Var;
            }
            if (this.b.f.i) {
                obj2 = bc3.a;
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, this.b.b, "Filen sign-in transaction failed", e, null, 8, null);
        }
        if (l73.t(xx1Var) && !this.b.k) {
            this.b.f();
            this.b.e.k(obj2);
        }
        return be8Var;
    }
}
