package defpackage;

import android.content.Context;
import android.os.Looper;
import com.microsoft.identity.client.Account;
import com.microsoft.identity.client.AuthenticationResult;
import com.microsoft.identity.client.SingleAccountPublicClientApplication;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tt5 extends ws7 implements qt3 {
    public final /* synthetic */ vt5 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tt5(vt5 vt5Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = vt5Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new tt5(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        tt5 tt5Var = (tt5) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        tt5Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        vt5 vt5Var = this.a;
        ix6 ix6Var = vt5Var.f;
        lg7.H(obj);
        SingleAccountPublicClientApplication singleAccountPublicClientApplicationC = nq5.i.c();
        be8 be8Var = be8.a;
        if (singleAccountPublicClientApplicationC == null) {
            vr6.e$default(vr6.INSTANCE, vt5Var.b, "OneDrive client null", null, 4, null);
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String string = contextC.getString(R.string.unknown_error_occured);
            string.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, contextC, string));
            vt5Var.d();
            return be8Var;
        }
        vt5Var.e = singleAccountPublicClientApplicationC;
        try {
            Account currentAccount = singleAccountPublicClientApplicationC.getCurrentAccount().getCurrentAccount();
            if (currentAccount == null) {
                ix6Var.getClass();
                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    ix6Var.k(null);
                    return be8Var;
                }
                ix6Var.i(null);
                return be8Var;
            }
            singleAccountPublicClientApplicationC.getConfiguration().getDefaultAuthority().getAuthorityURL().toString();
            AuthenticationResult authenticationResultB = oq5.b(singleAccountPublicClientApplicationC, currentAccount, false);
            vr6.i$default(vr6.INSTANCE, vt5Var.b, "Successfully authenticated", null, 4, null);
            String accessToken = authenticationResultB.getAccessToken();
            accessToken.getClass();
            vt5Var.j(accessToken.length() > 0, authenticationResultB);
            return be8Var;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, vt5Var.b, "OneDriveSignInVM.init error", e, null, 8, null);
            jq5 jq5Var = nq5.i;
            jq5.a();
            ix6Var.getClass();
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                ix6Var.k(null);
            } else {
                ix6Var.i(null);
            }
            return be8Var;
        }
    }
}
