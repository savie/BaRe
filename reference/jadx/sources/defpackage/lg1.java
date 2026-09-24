package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.cloud.CloudBackupTag;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lg1 extends ws7 implements qt3 {
    public final /* synthetic */ ng1 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lg1(ng1 ng1Var, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = ng1Var;
        this.b = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new lg1(this.a, this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        lg1 lg1Var = (lg1) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        lg1Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        ng1 ng1Var = this.a;
        qo0 qo0Var = ng1Var.d;
        if (qo0Var == null) {
            pe4.F("activityVM");
            throw null;
        }
        qo0Var.h(R.string.processing);
        Log.d("CloudFilesCleaner", "deleteCloudTag called");
        String str = this.b;
        if (str.length() == 0 || nq7.j0(str)) {
            c6.f("deleteCloudTag: Invalid tag name = ".concat(str));
            return null;
        }
        if (ai8.h()) {
            zc2 zc2VarD = re3.f().d(str);
            af3 af3VarC = cf3.c(zc2VarD, new CloudBackupTag(null, null, null, null, Boolean.TRUE, 15, null));
            if (pe4.d(af3VarC, ze3.b)) {
                vr6.i$default(vr6.INSTANCE, "CloudFilesCleaner", "deleteCloudTag: Tag set to be deleted", null, 4, null);
                tb1 tb1Var = tb1.a;
                if (qb1.c().e(str) && !(cf3.c(zc2VarD, null) instanceof ze3)) {
                    zc2VarD.i(null);
                }
            } else {
                if (!(af3VarC instanceof ye3)) {
                    q.j();
                    return null;
                }
                Const.P();
                vr6.e$default(vr6.INSTANCE, "CloudFilesCleaner", "deleteCloudTag: Error while reading - " + ((ye3) af3VarC).b, null, 4, null);
            }
        } else {
            vr6.e$default(vr6.INSTANCE, "CloudFilesCleaner", "deleteCloudTag: No internet access! Stopped.", null, 4, null);
        }
        tb1 tb1Var2 = tb1.a;
        qb1.t("");
        qo0 qo0Var2 = ng1Var.d;
        if (qo0Var2 != null) {
            qo0Var2.f();
            return be8.a;
        }
        pe4.F("activityVM");
        throw null;
    }
}
