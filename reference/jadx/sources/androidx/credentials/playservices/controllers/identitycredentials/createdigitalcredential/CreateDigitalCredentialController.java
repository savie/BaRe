package androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential;

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
import androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity;
import defpackage.a9;
import defpackage.be8;
import defpackage.bt3;
import defpackage.c12;
import defpackage.ck;
import defpackage.d11;
import defpackage.d12;
import defpackage.e6;
import defpackage.g67;
import defpackage.h12;
import defpackage.j12;
import defpackage.k12;
import defpackage.l12;
import defpackage.o12;
import defpackage.ox;
import defpackage.p12;
import defpackage.pc1;
import defpackage.pe4;
import defpackage.q12;
import defpackage.qf;
import defpackage.t22;
import defpackage.xu1;
import defpackage.xx3;
import defpackage.yi0;
import defpackage.zu1;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CreateDigitalCredentialController extends CredentialProviderController<q12, h12, j12, k12, c12> {
    private static final Companion Companion = new Companion(null);
    private static final String TAG = "DigitalCredentialClient";
    public t22 callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final CreateDigitalCredentialController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController$resultReceiver$1] */
    public CreateDigitalCredentialController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                bundle.getClass();
                if (this.this$0.maybeReportErrorFromResultReceiver(bundle, new CreateDigitalCredentialController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i, (Intent) bundle.getParcelable(CredentialProviderBaseController.RESULT_DATA_TAG));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$0(CancellationSignal cancellationSignal, bt3 bt3Var) {
        bt3Var.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, bt3Var);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$1(CreateDigitalCredentialController createDigitalCredentialController, c12 c12Var) {
        c12Var.getClass();
        createDigitalCredentialController.getExecutor().execute(new zu1(1, createDigitalCredentialController, c12Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CreateDigitalCredentialController createDigitalCredentialController, c12 c12Var) {
        createDigitalCredentialController.getCallback().onError(c12Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$2(CreateDigitalCredentialController createDigitalCredentialController) {
        createDigitalCredentialController.getExecutor().execute(new a9(createDigitalCredentialController, 3));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2$0(CreateDigitalCredentialController createDigitalCredentialController) {
        createDigitalCredentialController.getCallback().onError(new l12("No provider data returned."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$3(CreateDigitalCredentialController createDigitalCredentialController, c12 c12Var) {
        createDigitalCredentialController.getExecutor().execute(new o12(0, createDigitalCredentialController, c12Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$3$0(CreateDigitalCredentialController createDigitalCredentialController, c12 c12Var) {
        t22 callback = createDigitalCredentialController.getCallback();
        if (c12Var == null) {
            c12Var = new l12("Unexpected configuration error");
        }
        callback.onError(c12Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$4(CreateDigitalCredentialController createDigitalCredentialController, k12 k12Var) {
        createDigitalCredentialController.getExecutor().execute(new xu1(2, createDigitalCredentialController, k12Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$4$0(CreateDigitalCredentialController createDigitalCredentialController, k12 k12Var) {
        createDigitalCredentialController.getCallback().onResult(k12Var);
    }

    private static final be8 invokePlayServices$lambda$0(CancellationSignal cancellationSignal, CreateDigitalCredentialController createDigitalCredentialController, d12 d12Var) {
        boolean zCancellationReviewer$credentials_play_services_auth = CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal);
        be8 be8Var = be8.a;
        if (zCancellationReviewer$credentials_play_services_auth) {
            return be8Var;
        }
        Intent intent = new Intent(createDigitalCredentialController.context, (Class<?>) IdentityCredentialApiHiddenActivity.class);
        intent.setFlags(65536);
        intent.putExtra(CredentialProviderBaseController.RESULT_RECEIVER_TAG, createDigitalCredentialController.toIpcFriendlyResultReceiver(createDigitalCredentialController.resultReceiver));
        intent.putExtra(CredentialProviderBaseController.EXTRA_FLOW_PENDING_INTENT, d12Var.a);
        intent.putExtra(CredentialProviderBaseController.EXTRA_ERROR_NAME, CredentialProviderBaseController.CREATE_UNKNOWN);
        createDigitalCredentialController.context.startActivity(intent);
        return be8Var;
    }

    private static final void invokePlayServices$lambda$2(CancellationSignal cancellationSignal, Executor executor, t22 t22Var, Exception exc) {
        exc.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new yi0(1, executor, t22Var, exc));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$2$0(Executor executor, t22 t22Var, Exception exc) {
        executor.execute(new p12(0, t22Var, exc));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0$0(t22 t22Var, Exception exc) {
        t22Var.onError(new l12(exc.getMessage()));
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ h12 convertRequestToPlayServices(q12 q12Var) {
        if (q12Var == null) {
            return convertRequestToPlayServices2((q12) null);
        }
        e6.d();
        return null;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public k12 convertResponseToCredentialManager(j12 j12Var) {
        j12Var.getClass();
        return xx3.c(j12Var.b, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL");
    }

    public final t22 getCallback() {
        t22 t22Var = this.callback;
        if (t22Var != null) {
            return t22Var;
        }
        pe4.F("callback");
        throw null;
    }

    public final Executor getExecutor() {
        Executor executor = this.executor;
        if (executor != null) {
            return executor;
        }
        pe4.F("executor");
        throw null;
    }

    public final void handleResponse$credentials_play_services_auth(int i, int i2, Intent intent) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
        if (i != companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
            Log.w(TAG, "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " which  does not match what was given " + i);
            return;
        }
        if (CredentialProviderController.maybeReportErrorResultCodeCreate(i2, new pc1(3), new ox(this, 8), this.cancellationSignal)) {
            return;
        }
        if (intent == null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new ck(this, 15));
            return;
        }
        k12 k12VarD = g67.D(intent, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL");
        if (k12VarD != null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new qf(7, this, k12VarD));
        } else {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new d11(4, this, g67.C(intent)));
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ void invokePlayServices(q12 q12Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        if (q12Var == null) {
            invokePlayServices2((q12) null, t22Var, executor, cancellationSignal);
        } else {
            e6.d();
        }
    }

    public final void setCallback(t22 t22Var) {
        t22Var.getClass();
        this.callback = t22Var;
    }

    public final void setExecutor(Executor executor) {
        executor.getClass();
        this.executor = executor;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: invokePlayServices, reason: avoid collision after fix types in other method */
    public void invokePlayServices2(q12 q12Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        throw null;
    }

    /* JADX INFO: renamed from: convertRequestToPlayServices, reason: avoid collision after fix types in other method */
    public h12 convertRequestToPlayServices2(q12 q12Var) {
        throw null;
    }

    public static /* synthetic */ void getCallback$annotations() {
    }

    private static /* synthetic */ void getCancellationSignal$annotations() {
    }

    public static /* synthetic */ void getExecutor$annotations() {
    }

    private static /* synthetic */ void getResultReceiver$annotations() {
    }
}
