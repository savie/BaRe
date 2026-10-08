package androidx.credentials.playservices.controllers.identityauth.beginsignin;

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
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.PublicKeyCredentialControllerUtility;
import defpackage.ah;
import defpackage.ao;
import defpackage.be8;
import defpackage.bt3;
import defpackage.bw3;
import defpackage.by7;
import defpackage.cw3;
import defpackage.hb;
import defpackage.jf7;
import defpackage.kg;
import defpackage.lh6;
import defpackage.ln;
import defpackage.ly8;
import defpackage.mt3;
import defpackage.o12;
import defpackage.o20;
import defpackage.oa6;
import defpackage.ot9;
import defpackage.p04;
import defpackage.pb;
import defpackage.pe4;
import defpackage.px1;
import defpackage.qf;
import defpackage.r19;
import defpackage.re;
import defpackage.rx5;
import defpackage.sp0;
import defpackage.sv3;
import defpackage.t22;
import defpackage.tp0;
import defpackage.ty1;
import defpackage.u10;
import defpackage.u29;
import defpackage.up0;
import defpackage.v12;
import defpackage.vp0;
import defpackage.w01;
import defpackage.wp0;
import defpackage.wv3;
import defpackage.xp0;
import defpackage.xv3;
import defpackage.xx3;
import defpackage.xy1;
import defpackage.y2;
import defpackage.y53;
import defpackage.yu1;
import defpackage.zu1;
import defpackage.zv3;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialProviderBeginSignInController extends CredentialProviderController<zv3, wp0, jf7, bw3, wv3> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "BeginSignIn";
    public t22 callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final CredentialProviderBeginSignInController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$resultReceiver$1] */
    public CredentialProviderBeginSignInController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                bundle.getClass();
                if (this.this$0.maybeReportErrorFromResultReceiver(bundle, new CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i, (Intent) bundle.getParcelable(CredentialProviderBaseController.RESULT_DATA_TAG));
            }
        };
    }

    private final p04 createGoogleIdCredential(jf7 jf7Var) {
        String str = jf7Var.a;
        str.getClass();
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
    }

    private final wv3 fromGmsException(Throwable th) {
        String str = ((th instanceof re) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((re) th).getStatusCode()))) ? CredentialProviderBaseController.GET_INTERRUPTED : CredentialProviderBaseController.GET_NO_CREDENTIALS;
        return CredentialProviderBaseController.Companion.getCredentialExceptionTypeToException$credentials_play_services_auth(str, "During begin sign in, failure response from one tap: " + th.getMessage());
    }

    public static final CredentialProviderBeginSignInController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$0(CancellationSignal cancellationSignal, bt3 bt3Var) {
        bt3Var.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, bt3Var);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$1(CredentialProviderBeginSignInController credentialProviderBeginSignInController, wv3 wv3Var) {
        wv3Var.getClass();
        credentialProviderBeginSignInController.getExecutor().execute(new ln(1, credentialProviderBeginSignInController, wv3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController, wv3 wv3Var) {
        credentialProviderBeginSignInController.getCallback().onError(wv3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$2(CredentialProviderBeginSignInController credentialProviderBeginSignInController, bw3 bw3Var) {
        credentialProviderBeginSignInController.getExecutor().execute(new zu1(2, credentialProviderBeginSignInController, bw3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController, bw3 bw3Var) {
        credentialProviderBeginSignInController.getCallback().onResult(bw3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$3(CredentialProviderBeginSignInController credentialProviderBeginSignInController, lh6 lh6Var) {
        credentialProviderBeginSignInController.getExecutor().execute(new pb(4, credentialProviderBeginSignInController, lh6Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$3$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController, lh6 lh6Var) {
        credentialProviderBeginSignInController.getCallback().onError(lh6Var.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$4(CredentialProviderBeginSignInController credentialProviderBeginSignInController, wv3 wv3Var) {
        credentialProviderBeginSignInController.getExecutor().execute(new xy1(2, credentialProviderBeginSignInController, wv3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$4$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController, wv3 wv3Var) {
        credentialProviderBeginSignInController.getCallback().onError(wv3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$5(CredentialProviderBeginSignInController credentialProviderBeginSignInController, cw3 cw3Var) {
        credentialProviderBeginSignInController.getExecutor().execute(new ty1(2, credentialProviderBeginSignInController, cw3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$5$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController, cw3 cw3Var) {
        credentialProviderBeginSignInController.getCallback().onError(cw3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0(CancellationSignal cancellationSignal, CredentialProviderBeginSignInController credentialProviderBeginSignInController, xp0 xp0Var) {
        boolean zCancellationReviewer$credentials_play_services_auth = CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal);
        be8 be8Var = be8.a;
        if (zCancellationReviewer$credentials_play_services_auth) {
            return be8Var;
        }
        Intent intent = new Intent(credentialProviderBeginSignInController.context, (Class<?>) HiddenActivity.class);
        credentialProviderBeginSignInController.generateHiddenActivityIntent(credentialProviderBeginSignInController.resultReceiver, intent, CredentialProviderBaseController.BEGIN_SIGN_IN_TAG);
        intent.putExtra(CredentialProviderBaseController.EXTRA_FLOW_PENDING_INTENT, xp0Var.a);
        try {
            credentialProviderBeginSignInController.context.startActivity(intent);
            return be8Var;
        } catch (Exception unused) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new ah(credentialProviderBeginSignInController, 21));
            return be8Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController) {
        credentialProviderBeginSignInController.getExecutor().execute(new v12(credentialProviderBeginSignInController, 1));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController) {
        credentialProviderBeginSignInController.getCallback().onError(new cw3(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2(CredentialProviderBeginSignInController credentialProviderBeginSignInController, CancellationSignal cancellationSignal, Exception exc) {
        exc.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new kg(4, credentialProviderBeginSignInController, credentialProviderBeginSignInController.fromGmsException(exc)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$2$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController, wv3 wv3Var) {
        credentialProviderBeginSignInController.getExecutor().execute(new o12(2, credentialProviderBeginSignInController, wv3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController, wv3 wv3Var) {
        credentialProviderBeginSignInController.getCallback().onError(wv3Var);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public wp0 convertRequestToPlayServices(zv3 zv3Var) {
        zv3Var.getClass();
        return BeginSignInControllerUtility.Companion.constructBeginSignInRequest$credentials_play_services_auth(zv3Var, this.context);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public bw3 convertResponseToCredentialManager(jf7 jf7Var) throws cw3 {
        ao oa6Var;
        jf7Var.getClass();
        String str = jf7Var.f;
        if (str != null) {
            String str2 = jf7Var.a;
            str2.getClass();
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_ID", str2);
            bundle.putString("androidx.credentials.BUNDLE_KEY_PASSWORD", str);
            oa6Var = new rx5(bundle, str);
        } else if (jf7Var.k != null) {
            oa6Var = createGoogleIdCredential(jf7Var);
        } else if (jf7Var.p != null) {
            String assertPasskeyResponse = PublicKeyCredentialControllerUtility.Companion.toAssertPasskeyResponse(jf7Var);
            assertPasskeyResponse.getClass();
            Bundle bundle2 = new Bundle();
            bundle2.putString("androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON", assertPasskeyResponse);
            oa6Var = new oa6(bundle2, assertPasskeyResponse);
        } else {
            Log.w(TAG, "Credential returned but no google Id or password or passkey found");
            oa6Var = null;
        }
        if (oa6Var != null) {
            return new bw3(oa6Var);
        }
        throw new cw3("When attempting to convert get response, null credential found");
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
        if (companion2.maybeReportErrorResultCodeGet$credentials_play_services_auth(i2, new px1(1), new u10(this, 4), this.cancellationSignal)) {
            return;
        }
        int i3 = 2;
        try {
            xx3.k(this.context);
            companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new qf(8, this, convertResponseToCredentialManager(u29.c(intent))));
        } catch (re e) {
            lh6 lh6Var = new lh6();
            lh6Var.a = new cw3(e.getMessage());
            if (e.getStatusCode() == 16) {
                lh6Var.a = new sv3(e.getMessage());
            } else if (CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(e.getStatusCode()))) {
                lh6Var.a = new xv3(e.getMessage());
            }
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new w01(i3, this, lh6Var));
        } catch (wv3 e2) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new y2(5, this, e2));
        } catch (Throwable th) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new o20(i3, this, new cw3(th.getMessage())));
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
        wp0 wp0VarConvertRequestToPlayServices = convertRequestToPlayServices(zv3Var);
        u29 u29VarK = xx3.k(this.context);
        ly8.h(wp0VarConvertRequestToPlayServices);
        new sp0(false, null, null, true, null, null, false, null, null);
        sp0 sp0Var = wp0VarConvertRequestToPlayServices.b;
        ly8.h(sp0Var);
        vp0 vp0Var = wp0VarConvertRequestToPlayServices.a;
        ly8.h(vp0Var);
        up0 up0Var = wp0VarConvertRequestToPlayServices.f;
        ly8.h(up0Var);
        tp0 tp0Var = wp0VarConvertRequestToPlayServices.k;
        ly8.h(tp0Var);
        wp0 wp0Var = new wp0(vp0Var, sp0Var, u29VarK.k, wp0VarConvertRequestToPlayServices.d, wp0VarConvertRequestToPlayServices.e, up0Var, tp0Var, wp0VarConvertRequestToPlayServices.n);
        by7 by7VarA = r19.a();
        by7VarA.c = new y53[]{new y53("auth_api_credentials_begin_sign_in", 8L)};
        by7VarA.a = new ot9(u29VarK, wp0Var, false);
        by7VarA.b = false;
        by7VarA.d = 1553;
        u29VarK.b(0, by7VarA.a()).addOnSuccessListener(new hb(new mt3() { // from class: y22
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                return CredentialProviderBeginSignInController.invokePlayServices$lambda$0(cancellationSignal, this, (xp0) obj);
            }
        }, 2)).addOnFailureListener(new yu1(this, cancellationSignal));
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

        public final CredentialProviderBeginSignInController getInstance(Context context) {
            context.getClass();
            return new CredentialProviderBeginSignInController(context);
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
