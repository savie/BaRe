package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oc1 implements qt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ oc1(int i) {
        this.a = i;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        bm1 bm1Var;
        switch (this.a) {
            case 0:
                return dd1._init_$lambda$20((il0) obj, ((Integer) obj2).intValue());
            case 1:
                return dd1._init_$lambda$3((il0) obj, ((Integer) obj2).intValue());
            case 2:
                ox1 ox1Var = (ox1) obj;
                mx1 mx1Var = (mx1) obj2;
                ox1Var.getClass();
                mx1Var.getClass();
                ox1 ox1VarMinusKey = ox1Var.minusKey(mx1Var.getKey());
                lv2 lv2Var = lv2.a;
                if (ox1VarMinusKey == lv2Var) {
                    return mx1Var;
                }
                lv1 lv1Var = lv1.b;
                rx1 rx1Var = (rx1) ox1VarMinusKey.get(lv1Var);
                if (rx1Var == null) {
                    bm1Var = new bm1(mx1Var, ox1VarMinusKey);
                } else {
                    ox1 ox1VarMinusKey2 = ox1VarMinusKey.minusKey(lv1Var);
                    if (ox1VarMinusKey2 == lv2Var) {
                        return new bm1(rx1Var, mx1Var);
                    }
                    bm1Var = new bm1(rx1Var, new bm1(mx1Var, ox1VarMinusKey2));
                }
                return bm1Var;
            case 3:
                return CreatePasswordCredentialController.handleResponse$lambda$0((CancellationSignal) obj, (bt3) obj2);
            case 4:
                return CredentialProviderCreatePasswordController.handleResponse$lambda$0((CancellationSignal) obj, (bt3) obj2);
            default:
                return Integer.valueOf(((Integer) obj).intValue() + 1);
        }
    }
}
