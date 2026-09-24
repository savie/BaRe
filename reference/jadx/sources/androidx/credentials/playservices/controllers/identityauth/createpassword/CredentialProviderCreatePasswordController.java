package androidx.credentials.playservices.controllers.identityauth.createpassword;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.identityauth.HiddenActivity;
import defpackage.be8;
import defpackage.bt3;
import defpackage.c12;
import defpackage.e6;
import defpackage.fj;
import defpackage.hj;
import defpackage.k12;
import defpackage.kx6;
import defpackage.l12;
import defpackage.l30;
import defpackage.lx6;
import defpackage.oc1;
import defpackage.pb;
import defpackage.pe4;
import defpackage.qf;
import defpackage.r12;
import defpackage.re;
import defpackage.ro1;
import defpackage.t22;
import defpackage.vn1;
import defpackage.w12;
import defpackage.xu1;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialProviderCreatePasswordController extends CredentialProviderController<w12, kx6, be8, k12, c12> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "CreatePassword";
    private t22 callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    private Executor executor;
    private final CredentialProviderCreatePasswordController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController$resultReceiver$1] */
    public CredentialProviderCreatePasswordController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                bundle.getClass();
                CredentialProviderCreatePasswordController credentialProviderCreatePasswordController = this.this$0;
                CredentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1 credentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion);
                Executor executor = this.this$0.executor;
                if (executor == null) {
                    pe4.F("executor");
                    throw null;
                }
                t22 t22Var = this.this$0.callback;
                if (t22Var == null) {
                    pe4.F("callback");
                    throw null;
                }
                if (credentialProviderCreatePasswordController.maybeReportErrorFromResultReceiver(bundle, credentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1, executor, t22Var, this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i);
            }
        };
    }

    private final c12 fromGmsException(Throwable th) {
        String str = ((th instanceof re) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((re) th).getStatusCode()))) ? CredentialProviderBaseController.CREATE_INTERRUPTED : CredentialProviderBaseController.CREATE_UNKNOWN;
        return CredentialProviderBaseController.Companion.createCredentialExceptionTypeToException$credentials_play_services_auth(str, "During save password, found password failure response from one tap " + th.getMessage());
    }

    public static final CredentialProviderCreatePasswordController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$0(CancellationSignal cancellationSignal, bt3 bt3Var) {
        bt3Var.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, bt3Var);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$1(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController, c12 c12Var) {
        c12Var.getClass();
        Executor executor = credentialProviderCreatePasswordController.executor;
        if (executor != null) {
            executor.execute(new ro1(1, credentialProviderCreatePasswordController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController, c12 c12Var) {
        t22 t22Var = credentialProviderCreatePasswordController.callback;
        if (t22Var != null) {
            t22Var.onError(c12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$2(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController, k12 k12Var) {
        Executor executor = credentialProviderCreatePasswordController.executor;
        if (executor != null) {
            executor.execute(new xu1(5, credentialProviderCreatePasswordController, k12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2$0(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController, k12 k12Var) {
        t22 t22Var = credentialProviderCreatePasswordController.callback;
        if (t22Var != null) {
            t22Var.onResult(k12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    private static final be8 invokePlayServices$lambda$0(CancellationSignal cancellationSignal, CredentialProviderCreatePasswordController credentialProviderCreatePasswordController, lx6 lx6Var) {
        boolean zCancellationReviewer$credentials_play_services_auth = CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal);
        be8 be8Var = be8.a;
        if (zCancellationReviewer$credentials_play_services_auth) {
            return be8Var;
        }
        Intent intent = new Intent(credentialProviderCreatePasswordController.context, (Class<?>) HiddenActivity.class);
        credentialProviderCreatePasswordController.generateHiddenActivityIntent(credentialProviderCreatePasswordController.resultReceiver, intent, CredentialProviderBaseController.CREATE_PASSWORD_TAG);
        intent.putExtra(CredentialProviderBaseController.EXTRA_FLOW_PENDING_INTENT, lx6Var.a);
        try {
            credentialProviderCreatePasswordController.context.startActivity(intent);
            return be8Var;
        } catch (Exception unused) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new fj(credentialProviderCreatePasswordController, 20));
            return be8Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$0(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController) {
        Executor executor = credentialProviderCreatePasswordController.executor;
        if (executor != null) {
            executor.execute(new vn1(credentialProviderCreatePasswordController, 1));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0$0(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController) {
        t22 t22Var = credentialProviderCreatePasswordController.callback;
        if (t22Var != null) {
            t22Var.onError(new l12(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    private static final void invokePlayServices$lambda$2(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController, CancellationSignal cancellationSignal, Exception exc) {
        exc.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new qf(9, credentialProviderCreatePasswordController, credentialProviderCreatePasswordController.fromGmsException(exc)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$2$0(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController, c12 c12Var) {
        Executor executor = credentialProviderCreatePasswordController.executor;
        if (executor != null) {
            executor.execute(new pb(5, credentialProviderCreatePasswordController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0$0(CredentialProviderCreatePasswordController credentialProviderCreatePasswordController, c12 c12Var) {
        t22 t22Var = credentialProviderCreatePasswordController.callback;
        if (t22Var != null) {
            t22Var.onError(c12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ kx6 convertRequestToPlayServices(w12 w12Var) {
        if (w12Var == null) {
            return convertRequestToPlayServices2((w12) null);
        }
        e6.d();
        return null;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public k12 convertResponseToCredentialManager(be8 be8Var) {
        be8Var.getClass();
        return new r12();
    }

    public final void handleResponse$credentials_play_services_auth(int i, int i2) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
        if (i == companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
            if (CredentialProviderController.maybeReportErrorResultCodeCreate(i2, new oc1(4), new hj(this, 10), this.cancellationSignal)) {
                return;
            }
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new l30(3, this, convertResponseToCredentialManager(be8.a)));
            return;
        }
        Log.w(TAG, "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " which does not match what was given " + i);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ void invokePlayServices(w12 w12Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        if (w12Var == null) {
            invokePlayServices2((w12) null, t22Var, executor, cancellationSignal);
        } else {
            e6.d();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CredentialProviderCreatePasswordController getInstance(Context context) {
            context.getClass();
            return new CredentialProviderCreatePasswordController(context);
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: invokePlayServices, reason: avoid collision after fix types in other method */
    public void invokePlayServices2(w12 w12Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        throw null;
    }

    /* JADX INFO: renamed from: convertRequestToPlayServices, reason: avoid collision after fix types in other method */
    public kx6 convertRequestToPlayServices2(w12 w12Var) {
        throw null;
    }

    private static /* synthetic */ void getCallback$annotations() {
    }

    private static /* synthetic */ void getCancellationSignal$annotations() {
    }
}
