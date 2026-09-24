package androidx.credentials.playservices.controllers.identityauth.getsigninintent;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
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
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import defpackage.av1;
import defpackage.ax3;
import defpackage.b32;
import defpackage.bb;
import defpackage.be8;
import defpackage.bt3;
import defpackage.bw3;
import defpackage.bx3;
import defpackage.by7;
import defpackage.cw3;
import defpackage.d11;
import defpackage.dw3;
import defpackage.ej;
import defpackage.jf7;
import defpackage.l30;
import defpackage.la;
import defpackage.lh6;
import defpackage.ly8;
import defpackage.mt3;
import defpackage.o20;
import defpackage.o32;
import defpackage.p04;
import defpackage.p12;
import defpackage.pe4;
import defpackage.qc1;
import defpackage.r19;
import defpackage.re;
import defpackage.sv3;
import defpackage.sz8;
import defpackage.t22;
import defpackage.ty1;
import defpackage.u29;
import defpackage.v10;
import defpackage.vn1;
import defpackage.w01;
import defpackage.wv3;
import defpackage.xq;
import defpackage.xv3;
import defpackage.xx3;
import defpackage.xy1;
import defpackage.y2;
import defpackage.y53;
import defpackage.z22;
import defpackage.zu1;
import defpackage.zv3;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialProviderGetSignInIntentController extends CredentialProviderController<zv3, ax3, jf7, bw3, wv3> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "GetSignInIntent";
    public t22 callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final CredentialProviderGetSignInIntentController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$resultReceiver$1] */
    public CredentialProviderGetSignInIntentController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                bundle.getClass();
                if (this.this$0.maybeReportErrorFromResultReceiver(bundle, new CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i, (Intent) bundle.getParcelable(CredentialProviderBaseController.RESULT_DATA_TAG));
            }
        };
    }

    private final wv3 fromGmsException(Throwable th) {
        String str = ((th instanceof re) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((re) th).getStatusCode()))) ? CredentialProviderBaseController.GET_INTERRUPTED : CredentialProviderBaseController.GET_NO_CREDENTIALS;
        return CredentialProviderBaseController.Companion.getCredentialExceptionTypeToException$credentials_play_services_auth(str, "During get sign-in intent, failure response from one tap: " + th.getMessage());
    }

    public static final CredentialProviderGetSignInIntentController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$0(CancellationSignal cancellationSignal, bt3 bt3Var) {
        bt3Var.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, bt3Var);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$1(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, wv3 wv3Var) {
        wv3Var.getClass();
        credentialProviderGetSignInIntentController.getExecutor().execute(new zu1(3, credentialProviderGetSignInIntentController, wv3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, wv3 wv3Var) {
        credentialProviderGetSignInIntentController.getCallback().onError(wv3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$2(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, bw3 bw3Var) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new z22(4, credentialProviderGetSignInIntentController, bw3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, bw3 bw3Var) {
        credentialProviderGetSignInIntentController.getCallback().onResult(bw3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$3(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, lh6 lh6Var) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new av1(3, credentialProviderGetSignInIntentController, lh6Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$3$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, lh6 lh6Var) {
        credentialProviderGetSignInIntentController.getCallback().onError(lh6Var.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$4(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, wv3 wv3Var) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new xy1(3, credentialProviderGetSignInIntentController, wv3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$4$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, wv3 wv3Var) {
        credentialProviderGetSignInIntentController.getCallback().onError(wv3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$5(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, cw3 cw3Var) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new p12(3, credentialProviderGetSignInIntentController, cw3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$5$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, cw3 cw3Var) {
        credentialProviderGetSignInIntentController.getCallback().onError(cw3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, dw3 dw3Var) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new b32(1, credentialProviderGetSignInIntentController, dw3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, dw3 dw3Var) {
        credentialProviderGetSignInIntentController.getCallback().onError(dw3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$1(CancellationSignal cancellationSignal, CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, PendingIntent pendingIntent) {
        pendingIntent.getClass();
        boolean zCancellationReviewer$credentials_play_services_auth = CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal);
        be8 be8Var = be8.a;
        if (zCancellationReviewer$credentials_play_services_auth) {
            return be8Var;
        }
        Intent intent = new Intent(credentialProviderGetSignInIntentController.context, (Class<?>) HiddenActivity.class);
        credentialProviderGetSignInIntentController.generateHiddenActivityIntent(credentialProviderGetSignInIntentController.resultReceiver, intent, CredentialProviderBaseController.SIGN_IN_INTENT_TAG);
        intent.putExtra(CredentialProviderBaseController.EXTRA_FLOW_PENDING_INTENT, pendingIntent);
        try {
            credentialProviderGetSignInIntentController.context.startActivity(intent);
            return be8Var;
        } catch (Exception unused) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new ej(credentialProviderGetSignInIntentController, 15));
            return be8Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$1$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new vn1(credentialProviderGetSignInIntentController, 3));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$1$0$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController) {
        credentialProviderGetSignInIntentController.getCallback().onError(new cw3(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$3(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, CancellationSignal cancellationSignal, Exception exc) {
        exc.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new l30(5, credentialProviderGetSignInIntentController, credentialProviderGetSignInIntentController.fromGmsException(exc)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$3$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, wv3 wv3Var) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new ty1(5, credentialProviderGetSignInIntentController, wv3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$3$0$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, wv3 wv3Var) {
        credentialProviderGetSignInIntentController.getCallback().onError(wv3Var);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public ax3 convertRequestToPlayServices(zv3 zv3Var) throws dw3 {
        zv3Var.getClass();
        List list = zv3Var.a;
        if (list.size() != 1) {
            throw new dw3("GetSignInWithGoogleOption cannot be combined with other options.");
        }
        Object obj = list.get(0);
        obj.getClass();
        String str = ((bx3) obj).f;
        ly8.h(str);
        return new ax3(str, null, null, null, false, 0, null);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public bw3 convertResponseToCredentialManager(jf7 jf7Var) throws cw3 {
        p04 p04VarCreateGoogleIdCredential;
        jf7Var.getClass();
        if (jf7Var.k != null) {
            p04VarCreateGoogleIdCredential = createGoogleIdCredential(jf7Var);
        } else {
            Log.w(TAG, "Credential returned but no google Id found");
            p04VarCreateGoogleIdCredential = null;
        }
        if (p04VarCreateGoogleIdCredential != null) {
            return new bw3(p04VarCreateGoogleIdCredential);
        }
        throw new cw3("When attempting to convert get response, null credential found");
    }

    public final p04 createGoogleIdCredential(jf7 jf7Var) throws cw3 {
        jf7Var.getClass();
        String str = jf7Var.a;
        str.getClass();
        try {
            String str2 = jf7Var.k;
            str2.getClass();
            String str3 = jf7Var.b;
            String str4 = str3 != null ? str3 : null;
            String str5 = jf7Var.c;
            String str6 = str5 != null ? str5 : null;
            String str7 = jf7Var.d;
            String str8 = str7 != null ? str7 : null;
            String str9 = jf7Var.n;
            String str10 = str9 != null ? str9 : null;
            Uri uri = jf7Var.e;
            return new p04(str, str2, str4, str8, str6, uri != null ? uri : null, str10);
        } catch (Exception unused) {
            throw new cw3("When attempting to convert get response, null Google ID Token found");
        }
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
        CredentialProviderController.Companion companion2 = CredentialProviderController.Companion;
        if (companion2.maybeReportErrorResultCodeGet$credentials_play_services_auth(i2, new qc1(2), new v10(this, 7), this.cancellationSignal)) {
            return;
        }
        int i3 = 4;
        try {
            xx3.k(this.context);
            companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new w01(i3, this, convertResponseToCredentialManager(u29.c(intent))));
        } catch (re e) {
            lh6 lh6Var = new lh6();
            lh6Var.a = new cw3(e.getMessage());
            if (e.getStatusCode() == 16) {
                lh6Var.a = new sv3(e.getMessage());
            } else if (CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(e.getStatusCode()))) {
                lh6Var.a = new xv3(e.getMessage());
            }
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new y2(6, this, lh6Var));
        } catch (wv3 e2) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new o20(i3, this, e2));
        } catch (Throwable th) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new xq(5, this, new cw3(th.getMessage())));
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(zv3 zv3Var, t22 t22Var, Executor executor, final CancellationSignal cancellationSignal) {
        zv3Var.getClass();
        t22Var.getClass();
        executor.getClass();
        this.cancellationSignal = cancellationSignal;
        setCallback(t22Var);
        setExecutor(executor);
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        try {
            ax3 ax3VarConvertRequestToPlayServices = convertRequestToPlayServices(zv3Var);
            u29 u29VarK = xx3.k(this.context);
            ly8.h(ax3VarConvertRequestToPlayServices);
            String str = ax3VarConvertRequestToPlayServices.a;
            ly8.h(str);
            String str2 = ax3VarConvertRequestToPlayServices.d;
            ax3 ax3Var = new ax3(str, ax3VarConvertRequestToPlayServices.b, u29VarK.k, str2, ax3VarConvertRequestToPlayServices.e, ax3VarConvertRequestToPlayServices.f, ax3VarConvertRequestToPlayServices.k);
            by7 by7VarA = r19.a();
            by7VarA.c = new y53[]{sz8.d};
            by7VarA.a = new la(u29VarK, ax3Var);
            by7VarA.d = 1555;
            u29VarK.b(0, by7VarA.a()).addOnSuccessListener(new bb(new mt3() { // from class: n32
                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$1(cancellationSignal, this, (PendingIntent) obj);
                }
            }, 3)).addOnFailureListener(new o32(this, cancellationSignal));
        } catch (dw3 e) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new d11(6, this, e));
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

        public final CredentialProviderGetSignInIntentController getInstance(Context context) {
            context.getClass();
            return new CredentialProviderGetSignInIntentController(context);
        }

        private Companion() {
        }
    }

    public static /* synthetic */ void getCallback$annotations() {
    }

    private static /* synthetic */ void getCancellationSignal$annotations() {
    }

    public static /* synthetic */ void getExecutor$annotations() {
    }
}
