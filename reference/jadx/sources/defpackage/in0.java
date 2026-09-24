package defpackage;

import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import com.google.android.material.slider.Slider;
import com.yubico.yubikit.android.ui.YubiKeyPromptActivity;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class in0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ in0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Slider slider = (Slider) obj;
                slider.setActiveThumbIndex(-1);
                slider.invalidate();
                break;
            case 1:
                ((io1) obj).invalidateOptionsMenu();
                break;
            case 2:
                CreatePublicKeyCredentialController.invokePlayServices$lambda$0$0$0((t22) obj);
                break;
            case 3:
                ((bt3) obj).invoke();
                break;
            default:
                YubiKeyPromptActivity yubiKeyPromptActivity = (YubiKeyPromptActivity) obj;
                yubiKeyPromptActivity.k.setText(yubiKeyPromptActivity.c ? R.string.yubikit_prompt_plug_in_or_tap : R.string.yubikit_prompt_plug_in);
                break;
        }
    }
}
