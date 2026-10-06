package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId;
import org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rv5 extends ws7 implements qt3 {
    public final /* synthetic */ sv5 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rv5(sv5 sv5Var, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = sv5Var;
        this.b = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new rv5(this.a, this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        rv5 rv5Var = (rv5) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        rv5Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean zU;
        lg7.H(obj);
        sv5 sv5Var = this.a;
        sv5Var.h(R.string.processing);
        TokenCredentials tokenCredentials = new TokenCredentials(this.b, null, null, null, 14, null);
        ov5 ov5Var = sv5Var.g;
        ov5Var.getClass();
        ov5Var.a = tokenCredentials;
        CloudOperationsImpl$LoginResult cloudOperationsImpl$LoginResultZ = ov5Var.z();
        Log.i(sv5Var.b, "onTokenReceived: loginResult=" + cloudOperationsImpl$LoginResultZ);
        if (cloudOperationsImpl$LoginResultZ instanceof CloudOperationsImpl$LoginResult.Success) {
            String strD = eh1.d(ov5Var);
            if (strD == null || strD.length() == 0) {
                ix6 ix6Var = sv5Var.l;
                if (strD == null) {
                    strD = "";
                }
                ix6Var.k(strD);
                zU = false;
            } else {
                CloudServiceId cloudServiceIdC = eh1.c(ov5Var, null);
                TokenCredentials tokenCredentialsCopy$default = TokenCredentials.copy$default(tokenCredentials, null, cloudServiceIdC, null, null, 13, null);
                zU = zm5.u(cloudServiceIdC);
                if (zU) {
                    i58 i58Var = TokenCredentials.Companion;
                    dd1 dd1Var = sv5Var.f;
                    i58Var.getClass();
                    i58.c(dd1Var, tokenCredentialsCopy$default);
                }
                vr6.i$default(vr6.INSTANCE, sv5Var.b, "CloudServiceId = " + cloudServiceIdC, null, 4, null);
            }
        } else {
            zU = false;
        }
        sv5Var.j.k(Boolean.valueOf(zU));
        sv5Var.f();
        return be8.a;
    }
}
