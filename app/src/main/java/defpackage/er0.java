package defpackage;

import android.hardware.biometrics.BiometricPrompt;
import android.hardware.biometrics.BiometricPrompt$AuthenticationCallback;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class er0 extends BiometricPrompt$AuthenticationCallback {
    public final void onAuthenticationError(int i, CharSequence charSequence) {
        if (i == 11 || i == 14) {
            ((ix6) fr0.b.getValue()).k(fr0.a);
            return;
        }
        vr6.e$default(vr6.INSTANCE, "BiometricLeakFix", "Biometric auth error(requestCode=" + fr0.a + ")=" + i + ":" + ((Object) charSequence), null, 4, null);
    }

    public final void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
        ((ix6) fr0.b.getValue()).k(fr0.a);
    }
}
