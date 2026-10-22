package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class px1 implements qt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ px1(int i) {
        this.a = i;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return ((ox1) obj).plus((mx1) obj2);
            case 1:
                return CredentialProviderBeginSignInController.handleResponse$lambda$0((CancellationSignal) obj, (bt3) obj2);
            default:
                mx1 mx1Var = (mx1) obj2;
                if (!(mx1Var instanceof l28)) {
                    return obj;
                }
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int iIntValue = num != null ? num.intValue() : 1;
                return iIntValue == 0 ? mx1Var : Integer.valueOf(iIntValue + 1);
        }
    }
}
