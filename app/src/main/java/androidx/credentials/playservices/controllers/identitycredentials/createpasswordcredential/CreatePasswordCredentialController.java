package androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential;

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
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import defpackage.be8;
import defpackage.bk;
import defpackage.bt3;
import defpackage.c12;
import defpackage.cv;
import defpackage.d11;
import defpackage.d12;
import defpackage.d76;
import defpackage.e6;
import defpackage.g67;
import defpackage.h12;
import defpackage.hj;
import defpackage.k12;
import defpackage.l12;
import defpackage.o12;
import defpackage.oc1;
import defpackage.p12;
import defpackage.pe4;
import defpackage.r12;
import defpackage.t22;
import defpackage.u12;
import defpackage.v12;
import defpackage.w12;
import defpackage.xu1;
import defpackage.xx3;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CreatePasswordCredentialController extends CredentialProviderController<w12, h12, be8, k12, c12> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "CreatePassword";
    private t22 callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    private Executor executor;
    private final CreatePasswordCredentialController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController$resultReceiver$1] */
    public CreatePasswordCredentialController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                bundle.getClass();
                CreatePasswordCredentialController createPasswordCredentialController = this.this$0;
                CreatePasswordCredentialController$resultReceiver$1$onReceiveResult$1 createPasswordCredentialController$resultReceiver$1$onReceiveResult$1 = new CreatePasswordCredentialController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion);
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
                if (createPasswordCredentialController.maybeReportErrorFromResultReceiver(bundle, createPasswordCredentialController$resultReceiver$1$onReceiveResult$1, executor, t22Var, this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i, (Intent) xx3.j(bundle, CredentialProviderBaseController.RESULT_DATA_TAG, Intent.class));
            }
        };
    }

    public static final CreatePasswordCredentialController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$0(CancellationSignal cancellationSignal, bt3 bt3Var) {
        bt3Var.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, bt3Var);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$1(CreatePasswordCredentialController createPasswordCredentialController, c12 c12Var) {
        c12Var.getClass();
        Executor executor = createPasswordCredentialController.executor;
        if (executor != null) {
            executor.execute(new o12(1, createPasswordCredentialController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CreatePasswordCredentialController createPasswordCredentialController, c12 c12Var) {
        t22 t22Var = createPasswordCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(c12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$2(CreatePasswordCredentialController createPasswordCredentialController) {
        Executor executor = createPasswordCredentialController.executor;
        if (executor != null) {
            executor.execute(new v12(createPasswordCredentialController, 0));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2$0(CreatePasswordCredentialController createPasswordCredentialController) {
        t22 t22Var = createPasswordCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new l12("No provider data returned."));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$3(CreatePasswordCredentialController createPasswordCredentialController, k12 k12Var) {
        Executor executor = createPasswordCredentialController.executor;
        if (executor != null) {
            executor.execute(new xu1(3, createPasswordCredentialController, k12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$3$0(CreatePasswordCredentialController createPasswordCredentialController, k12 k12Var) {
        t22 t22Var = createPasswordCredentialController.callback;
        if (t22Var != null) {
            t22Var.onResult(k12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$4(CreatePasswordCredentialController createPasswordCredentialController, c12 c12Var) {
        Executor executor = createPasswordCredentialController.executor;
        if (executor != null) {
            executor.execute(new p12(1, createPasswordCredentialController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$4$0(CreatePasswordCredentialController createPasswordCredentialController, c12 c12Var) {
        t22 t22Var = createPasswordCredentialController.callback;
        if (t22Var == null) {
            pe4.F("callback");
            throw null;
        }
        if (c12Var == null) {
            c12Var = new l12("No provider data returned");
        }
        t22Var.onError(c12Var);
    }

    private static final be8 invokePlayServices$lambda$0(CancellationSignal cancellationSignal, CreatePasswordCredentialController createPasswordCredentialController, d12 d12Var) {
        boolean zCancellationReviewer$credentials_play_services_auth = CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal);
        be8 be8Var = be8.a;
        if (zCancellationReviewer$credentials_play_services_auth) {
            return be8Var;
        }
        Intent intent = new Intent(createPasswordCredentialController.context, (Class<?>) HiddenActivity.class);
        createPasswordCredentialController.generateHiddenActivityIntent(createPasswordCredentialController.resultReceiver, intent, CredentialProviderBaseController.CREATE_PASSWORD_TAG);
        intent.putExtra(CredentialProviderBaseController.EXTRA_FLOW_PENDING_INTENT, d12Var.a);
        try {
            createPasswordCredentialController.context.startActivity(intent);
            return be8Var;
        } catch (Exception unused) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new d76(createPasswordCredentialController, 19));
            return be8Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$0(CreatePasswordCredentialController createPasswordCredentialController) {
        Executor executor = createPasswordCredentialController.executor;
        if (executor != null) {
            executor.execute(new u12(createPasswordCredentialController, 0));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0$0(CreatePasswordCredentialController createPasswordCredentialController) {
        t22 t22Var = createPasswordCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new l12(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    private static final void invokePlayServices$lambda$2(CreatePasswordCredentialController createPasswordCredentialController, w12 w12Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal, Exception exc) {
        exc.getClass();
        Log.w(TAG, "Pre-u credman create flow failed " + exc + "; retrying with gis flow");
        new CredentialProviderCreatePasswordController(createPasswordCredentialController.context).invokePlayServices2(w12Var, t22Var, executor, cancellationSignal);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ h12 convertRequestToPlayServices(w12 w12Var) {
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

    public final Context getContext() {
        return this.context;
    }

    public final void handleResponse$credentials_play_services_auth(int i, int i2, Intent intent) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
        if (i != companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
            Log.w(TAG, "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " which does not match what was given " + i);
            return;
        }
        if (CredentialProviderController.maybeReportErrorResultCodeCreate(i2, new oc1(3), new hj(this, 9), this.cancellationSignal)) {
            return;
        }
        if (intent == null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new bk(this, 15));
            return;
        }
        k12 k12VarD = g67.D(intent, "android.credentials.TYPE_PASSWORD_CREDENTIAL");
        if (k12VarD != null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new cv(6, this, k12VarD));
        } else {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new d11(5, this, g67.C(intent)));
        }
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

        public final CreatePasswordCredentialController getInstance(Context context) {
            context.getClass();
            return new CreatePasswordCredentialController(context);
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: invokePlayServices, reason: avoid collision after fix types in other method */
    public void invokePlayServices2(w12 w12Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        throw null;
    }

    /* JADX INFO: renamed from: convertRequestToPlayServices, reason: avoid collision after fix types in other method */
    public h12 convertRequestToPlayServices2(w12 w12Var) {
        throw null;
    }

    private static /* synthetic */ void getCallback$annotations() {
    }

    private static /* synthetic */ void getCancellationSignal$annotations() {
    }
}
