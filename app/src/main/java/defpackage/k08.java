package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class k08 extends ws7 implements qt3 {
    public final /* synthetic */ l08 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k08(l08 l08Var, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = l08Var;
        this.b = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new k08(this.a, this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        k08 k08Var = (k08) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        k08Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        CloudServiceId cloudServiceId;
        be8 be8Var = be8.a;
        lg7.H(obj);
        l08 l08Var = this.a;
        dd1 dd1Var = l08Var.f;
        i08 i08Var = l08Var.h;
        l08Var.h(R.string.processing);
        try {
            TeraBoxTokenCredentials.Companion.getClass();
            TeraBoxTokenCredentials teraBoxTokenCredentialsB = m08.b(dd1Var);
            TeraBoxTokenCredentials teraBoxTokenCredentialsE = new h08(l08Var.g, null, null, 30).e(this.b);
            teraBoxTokenCredentialsE.getClass();
            CloudServiceId cloudServiceId2 = teraBoxTokenCredentialsB.getCloudServiceId();
            if (cloudServiceId2 == null) {
                cloudServiceId = null;
            } else {
                if (!zm5.u(cloudServiceId2)) {
                    cloudServiceId2 = null;
                }
                if (cloudServiceId2 != null) {
                    String string = nq7.H0(teraBoxTokenCredentialsB.getUk()).toString();
                    String string2 = nq7.H0(teraBoxTokenCredentialsE.getUk()).toString();
                    if (!nq7.j0(string) && !nq7.j0(string2) && string.equals(string2)) {
                        cloudServiceId = cloudServiceId2;
                    }
                }
                cloudServiceId = null;
            }
            TeraBoxTokenCredentials teraBoxTokenCredentialsCopy$default = TeraBoxTokenCredentials.copy$default(teraBoxTokenCredentialsE, null, null, 0L, null, null, null, null, cloudServiceId, 127, null);
            CloudServiceId cloudServiceId3 = cloudServiceId;
            i08Var.getClass();
            teraBoxTokenCredentialsCopy$default.getClass();
            i08Var.c = teraBoxTokenCredentialsCopy$default;
            boolean zU = false;
            CloudOperationsImpl$LoginResult cloudOperationsImpl$LoginResultD = i08Var.d(false);
            Log.i(l08Var.b, "onCodeReceived: loginResult=" + cloudOperationsImpl$LoginResultD);
            if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.Success) {
                String strD = eh1.d(i08Var);
                if (strD == null || strD.length() == 0) {
                    ix6 ix6Var = l08Var.l;
                    if (strD == null) {
                        strD = "";
                    }
                    ix6Var.k(strD);
                } else {
                    CloudServiceId cloudServiceIdC = eh1.c(i08Var, cloudServiceId3);
                    TeraBoxTokenCredentials teraBoxTokenCredentialsCopy$default2 = TeraBoxTokenCredentials.copy$default(teraBoxTokenCredentialsCopy$default, null, null, 0L, null, null, null, null, cloudServiceIdC, 127, null);
                    zU = zm5.u(cloudServiceIdC);
                    if (zU) {
                        m08.c(dd1Var, teraBoxTokenCredentialsCopy$default2);
                        i08Var.getClass();
                        i08Var.c = teraBoxTokenCredentialsCopy$default2;
                    }
                    vr6.i$default(vr6.INSTANCE, l08Var.b, "CloudServiceId = " + cloudServiceIdC, null, 4, null);
                }
            }
            l08Var.j.k(Boolean.valueOf(zU));
            l08Var.f();
            return be8Var;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, l08Var.b, "onCodeReceived", e, null, 8, null);
            l08Var.k.k(io4.b(e));
            l08Var.f();
            return be8Var;
        }
    }
}
