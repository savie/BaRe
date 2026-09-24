package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b64 extends ws7 implements qt3 {
    public final /* synthetic */ c64 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b64(c64 c64Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = c64Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new b64(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        b64 b64Var = (b64) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        b64Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        boolean zIsAnonymous = mFirebaseUserA.isAnonymous();
        be8 be8Var = be8.a;
        if (zIsAnonymous) {
            return be8Var;
        }
        Log.d(this.a.b, "postLoginWork()");
        ah8.Companion.fromDatabase(mFirebaseUserA, new zi1(5));
        return be8Var;
    }
}
