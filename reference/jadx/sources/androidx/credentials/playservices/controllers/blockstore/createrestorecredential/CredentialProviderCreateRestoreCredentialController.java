package androidx.credentials.playservices.controllers.blockstore.createrestorecredential;

import android.content.Context;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import defpackage.b12;
import defpackage.b22;
import defpackage.be8;
import defpackage.c12;
import defpackage.c32;
import defpackage.c6;
import defpackage.d32;
import defpackage.e6;
import defpackage.g22;
import defpackage.h22;
import defpackage.i22;
import defpackage.j22;
import defpackage.k12;
import defpackage.l12;
import defpackage.lh6;
import defpackage.qo1;
import defpackage.re;
import defpackage.ro1;
import defpackage.t22;
import defpackage.u20;
import defpackage.yr2;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialProviderCreateRestoreCredentialController extends CredentialProviderController<h22, g22, i22, k12, c12> {
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderCreateRestoreCredentialController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
    }

    private static final be8 invokePlayServices$lambda$0(CredentialProviderCreateRestoreCredentialController credentialProviderCreateRestoreCredentialController, CancellationSignal cancellationSignal, Executor executor, t22 t22Var, i22 i22Var) {
        try {
            i22Var.getClass();
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new d32(0, executor, t22Var, credentialProviderCreateRestoreCredentialController.convertResponseToCredentialManager(i22Var)));
        } catch (Exception e) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new b22(2, executor, t22Var, e));
        }
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$0(Executor executor, t22 t22Var, k12 k12Var) {
        executor.execute(new qo1(1, t22Var, k12Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$1(Executor executor, t22 t22Var, Exception exc) {
        executor.execute(new c32(t22Var, exc, 0));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$1$0(t22 t22Var, Exception exc) {
        t22Var.onError(new l12(exc.getMessage()));
    }

    private static final void invokePlayServices$lambda$2(CancellationSignal cancellationSignal, Executor executor, t22 t22Var, Exception exc) {
        exc.getClass();
        lh6 lh6Var = new lh6();
        lh6Var.a = new l12("Create restore credential failed for unknown reason, failure: " + exc.getMessage());
        if (exc instanceof re) {
            re reVar = (re) exc;
            switch (reVar.getStatusCode()) {
                case 40201:
                    lh6Var.a = new l12("The restore credential internal service had a failure, failure: " + exc.getMessage());
                    break;
                case 40202:
                    lh6Var.a = new b12("The request did not match the fido spec, failure: " + exc.getMessage(), "androidx.credentials.TYPE_CREATE_RESTORE_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_ERROR");
                    break;
                case 40203:
                    lh6Var.a = new yr2("E2ee is not available on the device. Check whether the backup and screen lock are enabled.", "androidx.credentials.TYPE_E2EE_UNAVAILABLE_EXCEPTION");
                    break;
                default:
                    lh6Var.a = new l12("The restore credential service failed with unsupported status code, failure: " + exc.getMessage() + ", status code: " + reVar.getStatusCode());
                    break;
            }
        }
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new u20(1, executor, t22Var, lh6Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$2$0(Executor executor, t22 t22Var, lh6 lh6Var) {
        executor.execute(new ro1(2, t22Var, lh6Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0$0(t22 t22Var, lh6 lh6Var) {
        t22Var.onError(lh6Var.a);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ g22 convertRequestToPlayServices(h22 h22Var) {
        if (h22Var == null) {
            return convertRequestToPlayServices2((h22) null);
        }
        e6.d();
        return null;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public k12 convertResponseToCredentialManager(i22 i22Var) throws l12 {
        i22Var.getClass();
        Bundle bundle = i22Var.a;
        bundle.getClass();
        String string = bundle.getString("androidx.credentials.BUNDLE_KEY_CREATE_RESTORE_CREDENTIAL_RESPONSE");
        if (string == null) {
            throw new l12("The response bundle did not contain the response data. This should not happen.");
        }
        j22 j22Var = new j22();
        if (string.length() != 0) {
            try {
                new JSONObject(string);
                return j22Var;
            } catch (Exception unused) {
            }
        }
        c6.f("registrationResponseJson must not be empty, and must be a valid JSON");
        return null;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ void invokePlayServices(h22 h22Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        if (h22Var == null) {
            invokePlayServices2((h22) null, t22Var, executor, cancellationSignal);
        } else {
            e6.d();
        }
    }

    /* JADX INFO: renamed from: invokePlayServices, reason: avoid collision after fix types in other method */
    public void invokePlayServices2(h22 h22Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        throw null;
    }

    /* JADX INFO: renamed from: convertRequestToPlayServices, reason: avoid collision after fix types in other method */
    public g22 convertRequestToPlayServices2(h22 h22Var) {
        throw null;
    }
}
