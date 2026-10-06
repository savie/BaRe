package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qc1 implements qt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ qc1(int i) {
        this.a = i;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return dd1._init_$lambda$23((il0) obj, ((Integer) obj2).intValue());
            case 1:
                return dd1._init_$lambda$7((il0) obj, ((Integer) obj2).intValue());
            case 2:
                return CredentialProviderGetSignInIntentController.handleResponse$lambda$0((CancellationSignal) obj, (bt3) obj2);
            case 3:
                String str = (String) obj;
                pg1 pg1Var = (pg1) obj2;
                str.getClass();
                pg1Var.getClass();
                String str2 = pg1Var.b;
                String str3 = nq7.j0(str2) ? null : str2;
                return str3 == null ? "/".concat(str) : str3;
            default:
                l28 l28Var = (l28) obj;
                mx1 mx1Var = (mx1) obj2;
                if (l28Var != null) {
                    return l28Var;
                }
                if (mx1Var instanceof l28) {
                    return (l28) mx1Var;
                }
                return null;
        }
    }
}
