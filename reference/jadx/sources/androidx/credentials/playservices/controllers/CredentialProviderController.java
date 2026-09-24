package androidx.credentials.playservices.controllers;

import android.content.Context;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import defpackage.a12;
import defpackage.b22;
import defpackage.be8;
import defpackage.bt3;
import defpackage.cw3;
import defpackage.g84;
import defpackage.l12;
import defpackage.lh6;
import defpackage.mt3;
import defpackage.qt3;
import defpackage.sv3;
import defpackage.t22;
import defpackage.xq;
import defpackage.xs1;
import defpackage.yq;
import defpackage.z22;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class CredentialProviderController<T1, T2, R2, R1, E1> extends CredentialProviderBaseController {
    public static final Companion Companion = new Companion(null);
    public static final String ERROR_MESSAGE_START_ACTIVITY_FAILED = "Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context.";
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
    }

    public static /* synthetic */ void invokePlayServices$default(CredentialProviderController credentialProviderController, Object obj, t22 t22Var, Executor executor, CancellationSignal cancellationSignal, int i, Object obj2) {
        if (obj2 != null) {
            g84.j("Super calls with default arguments not supported in this target, function: invokePlayServices");
            return;
        }
        if ((i & 8) != 0) {
            cancellationSignal = null;
        }
        credentialProviderController.invokePlayServices(obj, t22Var, executor, cancellationSignal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 maybeReportErrorFromResultReceiver$lambda$0(Executor executor, t22 t22Var, Object obj) {
        executor.execute(new z22(0, t22Var, obj));
        return be8.a;
    }

    public static final boolean maybeReportErrorResultCodeCreate(int i, qt3 qt3Var, mt3 mt3Var, CancellationSignal cancellationSignal) {
        return Companion.maybeReportErrorResultCodeCreate(i, qt3Var, mt3Var, cancellationSignal);
    }

    public abstract T2 convertRequestToPlayServices(T1 t1);

    public abstract R1 convertResponseToCredentialManager(R2 r2);

    public abstract void invokePlayServices(T1 t1, t22 t22Var, Executor executor, CancellationSignal cancellationSignal);

    public final boolean maybeReportErrorFromResultReceiver(Bundle bundle, qt3 qt3Var, Executor executor, t22 t22Var, CancellationSignal cancellationSignal) {
        bundle.getClass();
        qt3Var.getClass();
        executor.getClass();
        t22Var.getClass();
        if (!bundle.getBoolean(CredentialProviderBaseController.FAILURE_RESPONSE_TAG)) {
            return false;
        }
        Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new b22(1, executor, t22Var, qt3Var.invoke(bundle.getString(CredentialProviderBaseController.EXCEPTION_TYPE_TAG), bundle.getString(CredentialProviderBaseController.EXCEPTION_MESSAGE_TAG))));
        return true;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final be8 maybeReportErrorResultCodeCreate$lambda$0(mt3 mt3Var, lh6 lh6Var) {
            mt3Var.invoke(lh6Var.a);
            return be8.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final be8 maybeReportErrorResultCodeGet$lambda$0(mt3 mt3Var, lh6 lh6Var) {
            mt3Var.invoke(lh6Var.a);
            return be8.a;
        }

        public final void cancelOrCallbackExceptionOrResult$credentials_play_services_auth(CancellationSignal cancellationSignal, bt3 bt3Var) {
            bt3Var.getClass();
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
                return;
            }
            bt3Var.invoke();
        }

        public final String generateErrorStringCanceled$credentials_play_services_auth() {
            return "activity is cancelled by the user.";
        }

        public final String generateErrorStringUnknown$credentials_play_services_auth(int i) {
            return xs1.h(i, "activity with result code: ", " indicating not RESULT_OK");
        }

        public final boolean maybeReportErrorResultCodeCreate(int i, qt3 qt3Var, mt3 mt3Var, CancellationSignal cancellationSignal) {
            qt3Var.getClass();
            mt3Var.getClass();
            if (i == -1) {
                return false;
            }
            lh6 lh6Var = new lh6();
            lh6Var.a = new l12(generateErrorStringUnknown$credentials_play_services_auth(i));
            if (i == 0) {
                lh6Var.a = new a12(generateErrorStringCanceled$credentials_play_services_auth());
            }
            qt3Var.invoke(cancellationSignal, new xq(3, mt3Var, lh6Var));
            return true;
        }

        public final boolean maybeReportErrorResultCodeGet$credentials_play_services_auth(int i, qt3 qt3Var, mt3 mt3Var, CancellationSignal cancellationSignal) {
            qt3Var.getClass();
            mt3Var.getClass();
            if (i == -1) {
                return false;
            }
            lh6 lh6Var = new lh6();
            lh6Var.a = new cw3(generateErrorStringUnknown$credentials_play_services_auth(i));
            if (i == 0) {
                lh6Var.a = new sv3(generateErrorStringCanceled$credentials_play_services_auth());
            }
            qt3Var.invoke(cancellationSignal, new yq(2, mt3Var, lh6Var));
            return true;
        }

        private Companion() {
        }
    }
}
