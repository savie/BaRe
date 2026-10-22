package defpackage;

import android.content.Context;
import android.credentials.ClearCredentialStateRequest;
import android.credentials.CredentialManager;
import android.credentials.CredentialOption;
import android.credentials.GetCredentialRequest;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.util.Log;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g32 implements x22 {
    public final CredentialManager a;

    public g32(Context context) {
        context.getClass();
        this.a = (CredentialManager) context.getSystemService("credential");
    }

    @Override // defpackage.x22
    public final boolean isAvailableOnDevice() {
        return Build.VERSION.SDK_INT >= 34 && this.a != null;
    }

    @Override // defpackage.x22
    public final void onClearCredential(f91 f91Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var) {
        Log.i("CredManProvService", "In CredentialProviderFrameworkImpl onClearCredential");
        z28 z28Var = (z28) t22Var;
        CredentialManager credentialManager = this.a;
        if (credentialManager == null) {
            z28Var.onError(new i91("Your device doesn't support credential manager", "androidx.credentials.TYPE_CLEAR_CREDENTIAL_UNSUPPORTED_EXCEPTION"));
            return;
        }
        e32 e32Var = new e32(z28Var);
        credentialManager.getClass();
        credentialManager.clearCredentialState(new ClearCredentialStateRequest(new Bundle()), cancellationSignal, executor, e32Var);
    }

    @Override // defpackage.x22
    public final void onCreateCredential(Context context, i12 i12Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var) {
        vk9 vk9Var = (vk9) t22Var;
        CredentialManager credentialManager = this.a;
        if (credentialManager == null) {
            vk9Var.onError(new m12("Your device doesn't support credential manager"));
        } else {
            credentialManager.getClass();
            throw null;
        }
    }

    @Override // defpackage.x22
    public final void onGetCredential(Context context, zv3 zv3Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var) {
        context.getClass();
        nh nhVar = (nh) t22Var;
        CredentialManager credentialManager = this.a;
        if (credentialManager == null) {
            nhVar.onError(new dw3("Your device doesn't support credential manager"));
            return;
        }
        f32 f32Var = new f32(nhVar, this);
        credentialManager.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI", false);
        bundle.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", zv3Var.b);
        bundle.putParcelable("androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME", null);
        GetCredentialRequest.Builder builder = new GetCredentialRequest.Builder(bundle);
        for (w22 w22Var : zv3Var.a) {
            builder.addCredentialOption(new CredentialOption.Builder(w22Var.a, w22Var.b, w22Var.c).setIsSystemProviderRequired(w22Var.d).setAllowedProviders(w22Var.e).build());
        }
        GetCredentialRequest getCredentialRequestBuild = builder.build();
        getCredentialRequestBuild.getClass();
        credentialManager.getCredential(context, getCredentialRequestBuild, cancellationSignal, executor, f32Var);
    }
}
