package defpackage;

import android.webkit.WebView;
import androidx.core.widget.NestedScrollView;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import com.yubico.yubikit.android.ui.YubiKeyPromptActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v12 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ v12(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                CreatePasswordCredentialController.handleResponse$lambda$2$0((CreatePasswordCredentialController) obj);
                break;
            case 1:
                CredentialProviderBeginSignInController.invokePlayServices$lambda$0$0$0((CredentialProviderBeginSignInController) obj);
                break;
            case 2:
                ((NestedScrollView) ((pa8) obj).Q.getValue()).scrollTo(0, 0);
                break;
            case 3:
                ((WebView) obj).destroy();
                break;
            default:
                YubiKeyPromptActivity yubiKeyPromptActivity = (YubiKeyPromptActivity) obj;
                int i2 = yubiKeyPromptActivity.d - 1;
                yubiKeyPromptActivity.d = i2;
                if (i2 == 0) {
                    yubiKeyPromptActivity.runOnUiThread(new in0(yubiKeyPromptActivity, 4));
                }
                break;
        }
    }
}
