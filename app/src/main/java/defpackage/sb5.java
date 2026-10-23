package defpackage;

import java.util.Arrays;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;
import org.swiftapps.swiftbackup.cloud.protocols.mega.MegaLoginResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sb5 extends ws7 implements qt3 {
    public final /* synthetic */ tb5 a;
    public final /* synthetic */ MegaClient$Credentials b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sb5(tb5 tb5Var, MegaClient$Credentials megaClient$Credentials, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = tb5Var;
        this.b = megaClient$Credentials;
        this.c = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new sb5(this.a, this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        sb5 sb5Var = (sb5) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        sb5Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        MegaLoginResult megaLoginResultE;
        lg7.H(obj);
        tb5 tb5Var = this.a;
        gv7 gv7Var = tb5Var.e;
        tb5Var.h(R.string.processing_please_wait);
        MegaClient$Credentials megaClient$Credentials = this.b;
        if (!megaClient$Credentials.isValid()) {
            f6.g(eq3.j(tb5Var.b, ".login"));
            return null;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        boolean z = false;
        if (ai8.i(SwiftApp.Companion.c())) {
            ((nb5) gv7Var.getValue()).getClass();
            gt7 gt7Var = nb5.b;
            gt7Var.getClass();
            gt7.b = megaClient$Credentials;
            gh ghVar = gt7.h;
            if (ghVar != null) {
                Arrays.fill((byte[]) ghVar.b, (byte) 0);
            }
            gt7.h = null;
            gt7.i = null;
            ((nb5) gv7Var.getValue()).getClass();
            megaLoginResultE = gt7Var.e(this.c);
            vr6 vr6Var = vr6.INSTANCE;
            vr6.i$default(vr6Var, tb5Var.b, "login.LoginResult: " + megaLoginResultE, null, 4, null);
            if (megaLoginResultE instanceof MegaLoginResult.Failed) {
                Exception e = ((MegaLoginResult.Failed) megaLoginResultE).getE();
                vr6.e$default(vr6Var, tb5Var.b, "Error: ".concat(io4.b(e)), null, 4, null);
                ai8.n(SwiftApp.Companion.c(), String.valueOf(e.getMessage()));
            }
        } else {
            vr6.e$default(vr6.INSTANCE, tb5Var.b, "Network not available", null, 4, null);
            ai8.m(SwiftApp.Companion.c(), R.string.no_internet_connection);
            megaLoginResultE = new MegaLoginResult.Failed(new Exception("Network not available"));
        }
        boolean z2 = megaLoginResultE instanceof MegaLoginResult.Success;
        if (z2) {
            x95 x95Var = x95.g;
            x95.r(megaClient$Credentials);
            ((nb5) gv7Var.getValue()).getClass();
            nb5.b.getClass();
            gt7.b = megaClient$Credentials;
            gh ghVar2 = gt7.h;
            if (ghVar2 != null) {
                Arrays.fill((byte[]) ghVar2.b, (byte) 0);
            }
            gt7.h = null;
            gt7.i = null;
            ((x95) tb5Var.f.getValue()).getClass();
            String strO = x95.o();
            if (strO == null || strO.length() == 0) {
                ix6 ix6Var = tb5Var.m;
                if (strO == null) {
                    strO = "";
                }
                ix6Var.k(strO);
            } else {
                vr6.i$default(vr6.INSTANCE, tb5Var.b, "Main folder created!", null, 4, null);
                z = true;
            }
        } else {
            z = z2;
        }
        if (megaLoginResultE instanceof MegaLoginResult.MultiFactorAuthRequired) {
            tb5Var.k.k(Boolean.TRUE);
        }
        if (z) {
            tb5Var.j.k(Boolean.TRUE);
        }
        tb5Var.f();
        return be8.a;
    }
}
