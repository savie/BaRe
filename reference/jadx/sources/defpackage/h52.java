package defpackage;

import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h52 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ CsActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h52(CsActivity csActivity, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = csActivity;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new h52(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((h52) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        CloudCredentials cloudCredentials = null;
        if (i == 0) {
            lg7.H(obj);
            CsActivity csActivity = this.b;
            m62 m62VarA0 = csActivity.a0();
            dd1 dd1VarD0 = csActivity.d0();
            dd1VarD0.getClass();
            if (m62VarA0.e == null) {
                m62VarA0.f = dd1VarD0;
                tb1 client = dd1VarD0.getClient();
                client.getClass();
                m62VarA0.e = (mj1) ((v52) client).o();
            }
            lh6 lh6Var = new lh6();
            CloudCredentials cloudCredentialsB = csActivity.a0().g;
            if (cloudCredentialsB == null) {
                a aVar = CloudCredentials.Companion;
                dd1 dd1VarD1 = csActivity.d0();
                aVar.getClass();
                cloudCredentialsB = a.b(dd1VarD1);
            }
            lh6Var.a = cloudCredentialsB;
            if (cloudCredentialsB == null && csActivity.d0().isEmailPasswordBasedWebDav()) {
                a aVar2 = CloudCredentials.Companion;
                dd1 dd1VarD2 = csActivity.d0();
                aVar2.getClass();
                dd1VarD2.getClass();
                if (gd1.a[dd1VarD2.ordinal()] != 1) {
                    c6.l(dd1VarD2, "CloudCredentials.forEmailBasedWebDav hasn't handled cloud type ");
                    return null;
                }
                lh6Var.a = new CloudCredentials(dd1VarD2.getConstant(), (fd1) el1.S0(dd1VarD2.getProtocols()), "webdav.cloud.mail.ru", null, 443, null, null, null, null, null, null, null, null, null, 6944, null);
            }
            CloudCredentials cloudCredentials2 = (CloudCredentials) lh6Var.a;
            if (cloudCredentials2 != null && zm5.u(cloudCredentials2.getCloudServiceId())) {
                cloudCredentials = cloudCredentials2;
            }
            csActivity.O0 = cloudCredentials;
            csActivity.a0().l((CloudCredentials) lh6Var.a);
            zn4 zn4Var = zn4.a;
            g52 g52Var = new g52(0, csActivity, lh6Var);
            this.a = 1;
            Object objG = zn4.g(g52Var, this);
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
