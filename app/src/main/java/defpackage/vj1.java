package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vj1 extends ws7 implements qt3 {
    public final /* synthetic */ qo0 a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ wj1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vj1(qo0 qo0Var, boolean z, wj1 wj1Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = qo0Var;
        this.b = z;
        this.c = wj1Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new vj1(this.a, this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        vj1 vj1Var = (vj1) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        vj1Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        bt3 bt3Var;
        lg7.H(obj);
        qo0 qo0Var = this.a;
        qo0Var.h(R.string.processing);
        tb1 tb1Var = tb1.a;
        boolean z = this.b;
        qb1.o(z);
        CloudResult cloudResultA = z ? qb1.c().a(true) : null;
        if (cloudResultA != null && !(cloudResultA instanceof si1)) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String string = contextC.getString(R.string.cloud_connection_failed);
            string.getClass();
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, string);
        }
        boolean z2 = z && (cloudResultA instanceof si1) && qb1.m();
        if (z2) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            Context contextC2 = SwiftApp.Companion.c();
            String string2 = contextC2.getString(R.string.cloud_connection_successful);
            string2.getClass();
            zn4 zn4Var2 = zn4.a;
            dj7.y(contextC2, string2);
        }
        wj1 wj1Var = this.c;
        if (z2 && (bt3Var = wj1Var.c) != null) {
            bt3Var.invoke();
        }
        wj1Var.c = null;
        qo0Var.f();
        return be8.a;
    }
}
