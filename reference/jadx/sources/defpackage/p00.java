package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p00 extends ws7 implements qt3 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ q00 c;
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p00(q00 q00Var, int i, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = q00Var;
        this.d = i;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        p00 p00Var = new p00(this.c, this.d, jv1Var);
        p00Var.b = obj;
        return p00Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((p00) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        final Object bn6Var;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            try {
                PackageManager packageManager = contextC.getPackageManager();
                packageManager.getClass();
                String packageName = contextC.getPackageName();
                packageName.getClass();
                bn6Var = i6.i(packageManager, packageName);
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            zn4 zn4Var = zn4.a;
            final int i2 = this.d;
            final q00 q00Var = this.c;
            bt3 bt3Var = new bt3() { // from class: o00
                @Override // defpackage.bt3
                public final Object invoke() {
                    q00 q00Var2 = q00Var;
                    ex6 ex6Var = q00Var2.e;
                    int i3 = q00Var2.h;
                    int i4 = i2;
                    be8 be8Var = be8.a;
                    if (i4 == i3) {
                        Object obj2 = bn6Var;
                        if (!(obj2 instanceof bn6)) {
                            n00 n00VarA = n00.a(q00Var2.f, (v00) obj2, null, false, null, 2);
                            q00Var2.f = n00VarA;
                            ex6Var.k(n00VarA);
                        }
                        Throwable thA = en6.a(obj2);
                        if (thA != null) {
                            n00 n00Var = q00Var2.f;
                            String localizedMessage = thA.getLocalizedMessage();
                            if (localizedMessage == null) {
                                localizedMessage = thA.getClass().getSimpleName();
                            }
                            n00 n00VarA2 = n00.a(n00Var, null, null, false, localizedMessage, 2);
                            q00Var2.f = n00VarA2;
                            ex6Var.k(n00VarA2);
                        }
                    }
                    return be8Var;
                }
            };
            this.b = null;
            this.a = 1;
            Object objG = zn4.g(bt3Var, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
