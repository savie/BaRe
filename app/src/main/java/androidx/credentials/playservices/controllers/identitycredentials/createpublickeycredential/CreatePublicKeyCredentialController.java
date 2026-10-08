package androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential;

import android.app.PendingIntent;
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
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import defpackage.a12;
import defpackage.a22;
import defpackage.a9;
import defpackage.b22;
import defpackage.be8;
import defpackage.bh;
import defpackage.bt3;
import defpackage.by7;
import defpackage.c12;
import defpackage.c22;
import defpackage.cy0;
import defpackage.d12;
import defpackage.e12;
import defpackage.e22;
import defpackage.e7;
import defpackage.er1;
import defpackage.f12;
import defpackage.f22;
import defpackage.g67;
import defpackage.gf8;
import defpackage.gj;
import defpackage.h12;
import defpackage.he4;
import defpackage.in0;
import defpackage.is;
import defpackage.j12;
import defpackage.jz3;
import defpackage.k12;
import defpackage.kg;
import defpackage.l12;
import defpackage.l30;
import defpackage.m12;
import defpackage.me;
import defpackage.mt3;
import defpackage.nh;
import defpackage.p12;
import defpackage.pb;
import defpackage.pe4;
import defpackage.r19;
import defpackage.re;
import defpackage.t22;
import defpackage.ty1;
import defpackage.uc1;
import defpackage.xu1;
import defpackage.xx3;
import defpackage.xy1;
import defpackage.y53;
import defpackage.z12;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CreatePublicKeyCredentialController extends CredentialProviderController<e22, h12, j12, k12, c12> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "CreatePublicKey";
    private t22 callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    private Executor executor;
    private final CreatePublicKeyCredentialController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$resultReceiver$1] */
    public CreatePublicKeyCredentialController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                bundle.getClass();
                CreatePublicKeyCredentialController createPublicKeyCredentialController = this.this$0;
                CreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 createPublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 = new CreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion);
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
                if (createPublicKeyCredentialController.maybeReportErrorFromResultReceiver(bundle, createPublicKeyCredentialController$resultReceiver$1$onReceiveResult$1, executor, t22Var, this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i, (Intent) xx3.j(bundle, CredentialProviderBaseController.RESULT_DATA_TAG, Intent.class));
            }
        };
    }

    public static final CreatePublicKeyCredentialController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$0(CancellationSignal cancellationSignal, bt3 bt3Var) {
        bt3Var.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, bt3Var);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$1(CreatePublicKeyCredentialController createPublicKeyCredentialController, c12 c12Var) {
        c12Var.getClass();
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new xy1(1, createPublicKeyCredentialController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CreatePublicKeyCredentialController createPublicKeyCredentialController, c12 c12Var) {
        t22 t22Var = createPublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(c12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$2(CreatePublicKeyCredentialController createPublicKeyCredentialController) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new a9(createPublicKeyCredentialController, 4));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2$0(CreatePublicKeyCredentialController createPublicKeyCredentialController) {
        t22 t22Var = createPublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new l12("No provider data returned."));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$3(CreatePublicKeyCredentialController createPublicKeyCredentialController, k12 k12Var) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new ty1(1, createPublicKeyCredentialController, k12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$3$0(CreatePublicKeyCredentialController createPublicKeyCredentialController, k12 k12Var) {
        t22 t22Var = createPublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onResult(k12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$4(CreatePublicKeyCredentialController createPublicKeyCredentialController, c12 c12Var) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new xu1(4, createPublicKeyCredentialController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$4$0(CreatePublicKeyCredentialController createPublicKeyCredentialController, c12 c12Var) {
        t22 t22Var = createPublicKeyCredentialController.callback;
        if (t22Var == null) {
            pe4.F("callback");
            throw null;
        }
        if (c12Var == null) {
            c12Var = new l12("No provider data returned");
        }
        t22Var.onError(c12Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0(CancellationSignal cancellationSignal, CreatePublicKeyCredentialController createPublicKeyCredentialController, Executor executor, t22 t22Var, d12 d12Var) {
        PendingIntent pendingIntent = d12Var.a;
        j12 j12Var = d12Var.b;
        int i = 0;
        be8 be8Var = be8.a;
        if (pendingIntent == null && j12Var == null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new a22(executor, t22Var, i));
            return be8Var;
        }
        if (pendingIntent != null) {
            Intent intent = new Intent(createPublicKeyCredentialController.context, (Class<?>) HiddenActivity.class);
            createPublicKeyCredentialController.generateHiddenActivityIntent(createPublicKeyCredentialController.resultReceiver, intent, CredentialProviderBaseController.CREATE_PUBLIC_KEY_CREDENTIAL_TAG);
            intent.putExtra(CredentialProviderBaseController.EXTRA_FLOW_PENDING_INTENT, pendingIntent);
            try {
                createPublicKeyCredentialController.context.startActivity(intent);
            } catch (Exception unused) {
                CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new bh(createPublicKeyCredentialController, 19));
            }
        }
        if (j12Var != null) {
            k12 k12VarConvertResponseToCredentialManager = createPublicKeyCredentialController.convertResponseToCredentialManager(j12Var);
            if (k12VarConvertResponseToCredentialManager instanceof f22) {
                CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new b22(i, executor, t22Var, (f22) k12VarConvertResponseToCredentialManager));
                return be8Var;
            }
        }
        if (pendingIntent == null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new c22(executor, t22Var, i));
        }
        return be8Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$0(Executor executor, t22 t22Var) {
        executor.execute(new in0(t22Var, 2));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0$0(t22 t22Var) {
        t22Var.onError(new l12(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$1(CreatePublicKeyCredentialController createPublicKeyCredentialController) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new is(createPublicKeyCredentialController, 2));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$1$0(CreatePublicKeyCredentialController createPublicKeyCredentialController) {
        t22 t22Var = createPublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new l12(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$2(Executor executor, t22 t22Var, k12 k12Var) {
        executor.execute(new p12(2, t22Var, k12Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$3(Executor executor, t22 t22Var) {
        executor.execute(new z12(t22Var, 0));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$3$0(t22 t22Var) {
        t22Var.onError(new l12(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2(e22 e22Var, CreatePublicKeyCredentialController createPublicKeyCredentialController, t22 t22Var, Executor executor, CancellationSignal cancellationSignal, Exception exc) {
        exc.getClass();
        e22Var.getClass();
        Log.w(TAG, "Pre-u credman PK create flow failed " + exc + "; retrying with gis flow");
        CredentialProviderCreatePublicKeyCredentialController.Companion.getInstance(createPublicKeyCredentialController.context).invokePlayServices(e22Var, t22Var, executor, cancellationSignal);
    }

    private static final be8 invokePlayServices$lambda$2$0(CreatePublicKeyCredentialController createPublicKeyCredentialController, Exception exc, Executor executor, t22 t22Var) {
        exc.getClass();
        executor.execute(new pb(3, t22Var, createPublicKeyCredentialController.fromGmsException(exc)));
        return be8.a;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public h12 convertRequestToPlayServices(e22 e22Var) {
        e22Var.getClass();
        Object obj = null;
        obj.getClass();
        obj.getClass();
        obj.getClass();
        throw null;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public k12 convertResponseToCredentialManager(j12 j12Var) {
        j12Var.getClass();
        return xx3.c(j12Var.b, j12Var.a);
    }

    public final c12 fromGmsException(Throwable th) {
        th.getClass();
        if (!(th instanceof re)) {
            if (th instanceof gf8) {
                return new m12("API is unsupported");
            }
            return new l12("Conditional create failed, failure: " + th);
        }
        int statusCode = ((re) th).getStatusCode();
        if (statusCode == 16) {
            return new a12(th.getMessage());
        }
        if (statusCode == 17) {
            return new m12("API is not supported: " + th.getMessage());
        }
        if (statusCode == 8) {
            return new f12(th.getMessage());
        }
        if (CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(statusCode))) {
            return new e12(th.getMessage());
        }
        return new l12("Conditional create failed, failure: " + th.getMessage());
    }

    public final void handleResponse$credentials_play_services_auth(int i, int i2, Intent intent) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
        if (i != companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
            Log.w(TAG, "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " does not match what was given " + i);
            return;
        }
        if (CredentialProviderController.maybeReportErrorResultCodeCreate(i2, new uc1(1), new e7(this, 11), this.cancellationSignal)) {
            return;
        }
        if (intent == null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new gj(this, 15));
            return;
        }
        k12 k12VarD = g67.D(intent, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL");
        if (k12VarD != null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new kg(3, this, k12VarD));
        } else {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new l30(2, this, g67.C(intent)));
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(final e22 e22Var, final t22 t22Var, final Executor executor, final CancellationSignal cancellationSignal) {
        e22Var.getClass();
        t22Var.getClass();
        executor.getClass();
        this.cancellationSignal = cancellationSignal;
        this.callback = t22Var;
        this.executor = executor;
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        h12 h12VarConvertRequestToPlayServices = convertRequestToPlayServices(e22Var);
        Context context = this.context;
        context.getClass();
        he4 he4Var = new he4(context, null, he4.k, me.g, jz3.c);
        h12VarConvertRequestToPlayServices.getClass();
        by7 by7VarA = r19.a();
        by7VarA.c = new y53[]{cy0.h};
        by7VarA.a = new nh(h12VarConvertRequestToPlayServices, 23);
        by7VarA.d = 32704;
        Task taskB = he4Var.b(1, by7VarA.a());
        taskB.getClass();
        taskB.addOnSuccessListener(new er1(new mt3() { // from class: x12
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                return CreatePublicKeyCredentialController.invokePlayServices$lambda$0(cancellationSignal, this, executor, t22Var, (d12) obj);
            }
        })).addOnFailureListener(new OnFailureListener() { // from class: y12
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                CreatePublicKeyCredentialController.invokePlayServices$lambda$2(e22Var, this, t22Var, executor, cancellationSignal, exc);
            }
        });
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CreatePublicKeyCredentialController getInstance(Context context) {
            context.getClass();
            return new CreatePublicKeyCredentialController(context);
        }

        private Companion() {
        }
    }

    private static /* synthetic */ void getCallback$annotations() {
    }

    private static /* synthetic */ void getCancellationSignal$annotations() {
    }

    private static /* synthetic */ void getExecutor$annotations() {
    }
}
