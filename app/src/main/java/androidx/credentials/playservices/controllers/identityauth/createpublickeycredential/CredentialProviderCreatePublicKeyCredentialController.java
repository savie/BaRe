package androidx.credentials.playservices.controllers.identityauth.createpublickeycredential;

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
import defpackage.av1;
import defpackage.b32;
import defpackage.be8;
import defpackage.bt3;
import defpackage.by7;
import defpackage.c12;
import defpackage.c63;
import defpackage.cg4;
import defpackage.cy0;
import defpackage.d22;
import defpackage.e22;
import defpackage.e7;
import defpackage.ek;
import defpackage.ew2;
import defpackage.f22;
import defpackage.is;
import defpackage.j80;
import defpackage.jq6;
import defpackage.k12;
import defpackage.kb;
import defpackage.kg;
import defpackage.l12;
import defpackage.l30;
import defpackage.ln;
import defpackage.lx;
import defpackage.m80;
import defpackage.mt3;
import defpackage.n80;
import defpackage.na6;
import defpackage.o12;
import defpackage.o20;
import defpackage.o80;
import defpackage.pb;
import defpackage.pe4;
import defpackage.qa6;
import defpackage.r19;
import defpackage.re;
import defpackage.rn1;
import defpackage.rs9;
import defpackage.t22;
import defpackage.ty1;
import defpackage.uc1;
import defpackage.vn1;
import defpackage.w01;
import defpackage.wk9;
import defpackage.xq;
import defpackage.yq;
import defpackage.z22;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialProviderCreatePublicKeyCredentialController extends CredentialProviderController<e22, qa6, na6, k12, c12> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "CreatePublicKey";
    private t22 callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    private Executor executor;
    private final CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1] */
    public CredentialProviderCreatePublicKeyCredentialController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                bundle.getClass();
                CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.this$0;
                CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 credentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion);
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
                if (credentialProviderCreatePublicKeyCredentialController.maybeReportErrorFromResultReceiver(bundle, credentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1, executor, t22Var, this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i, (Intent) bundle.getParcelable(CredentialProviderBaseController.RESULT_DATA_TAG));
            }
        };
    }

    private final d22 JSONExceptionToPKCError(JSONException jSONException) {
        String message = jSONException.getMessage();
        return (message == null || message.length() <= 0) ? new d22(new ew2(0), "Unknown error") : new d22(new ew2(0), message);
    }

    private final c12 fromIntentRequestException(Throwable th) {
        String str = ((th instanceof re) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((re) th).getStatusCode()))) ? CredentialProviderBaseController.CREATE_INTERRUPTED : CredentialProviderBaseController.CREATE_UNKNOWN;
        return CredentialProviderBaseController.Companion.createCredentialExceptionTypeToException$credentials_play_services_auth(str, "During create public key credential, fido registration failure: " + th.getMessage());
    }

    public static final CredentialProviderCreatePublicKeyCredentialController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$0(CancellationSignal cancellationSignal, bt3 bt3Var) {
        bt3Var.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, bt3Var);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$1(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, c12 c12Var) {
        c12Var.getClass();
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new z22(2, credentialProviderCreatePublicKeyCredentialController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, c12 c12Var) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(c12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new d22(new cg4(2), "Upon handling create public key credential response, fido module giving null bytes indicating internal error"));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$3(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, c12 c12Var) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new ln(2, credentialProviderCreatePublicKeyCredentialController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$3$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, c12 c12Var) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(c12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$4(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, k12 k12Var) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new o12(3, credentialProviderCreatePublicKeyCredentialController, k12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$4$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, k12 k12Var) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onResult(k12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$5(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new z22(1, credentialProviderCreatePublicKeyCredentialController, jSONException));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$5$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new d22(new ew2(0), jSONException.getMessage()));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 handleResponse$lambda$6(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, Throwable th) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new ty1(3, credentialProviderCreatePublicKeyCredentialController, th));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$6$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, Throwable th) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new d22(new cg4(2), th.getMessage()));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new pb(6, credentialProviderCreatePublicKeyCredentialController, jSONException));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(credentialProviderCreatePublicKeyCredentialController.JSONExceptionToPKCError(jSONException));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$1(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, Throwable th) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new b32(0, credentialProviderCreatePublicKeyCredentialController, th));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$1$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, Throwable th) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new l12(th.getMessage()));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$2(CancellationSignal cancellationSignal, CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, PendingIntent pendingIntent) {
        pendingIntent.getClass();
        boolean zCancellationReviewer$credentials_play_services_auth = CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal);
        be8 be8Var = be8.a;
        if (zCancellationReviewer$credentials_play_services_auth) {
            return be8Var;
        }
        Intent intent = new Intent(credentialProviderCreatePublicKeyCredentialController.context, (Class<?>) HiddenActivity.class);
        credentialProviderCreatePublicKeyCredentialController.generateHiddenActivityIntent(credentialProviderCreatePublicKeyCredentialController.resultReceiver, intent, CredentialProviderBaseController.CREATE_PUBLIC_KEY_CREDENTIAL_TAG);
        intent.putExtra(CredentialProviderBaseController.EXTRA_FLOW_PENDING_INTENT, pendingIntent);
        try {
            credentialProviderCreatePublicKeyCredentialController.context.startActivity(intent);
            return be8Var;
        } catch (Exception unused) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new ek(credentialProviderCreatePublicKeyCredentialController, 21));
            return be8Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$2$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new vn1(credentialProviderCreatePublicKeyCredentialController, 2));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(new l12(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$4(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, CancellationSignal cancellationSignal, Exception exc) {
        exc.getClass();
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new w01(3, credentialProviderCreatePublicKeyCredentialController, credentialProviderCreatePublicKeyCredentialController.fromIntentRequestException(exc)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$4$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, c12 c12Var) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor != null) {
            executor.execute(new av1(2, credentialProviderCreatePublicKeyCredentialController, c12Var));
            return be8.a;
        }
        pe4.F("executor");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$4$0$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, c12 c12Var) {
        t22 t22Var = credentialProviderCreatePublicKeyCredentialController.callback;
        if (t22Var != null) {
            t22Var.onError(c12Var);
        } else {
            pe4.F("callback");
            throw null;
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public qa6 convertRequestToPlayServices(e22 e22Var) {
        e22Var.getClass();
        return PublicKeyCredentialControllerUtility.Companion.convert(e22Var, this.context);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public k12 convertResponseToCredentialManager(na6 na6Var) throws l12 {
        JSONObject jSONObjectU;
        na6Var.getClass();
        try {
            o80 o80Var = na6Var.f;
            wk9 wk9Var = na6Var.c;
            try {
                JSONObject jSONObject = new JSONObject();
                if (wk9Var != null && wk9Var.o().length > 0) {
                    jSONObject.put("rawId", cy0.t(wk9Var.o()));
                }
                String str = na6Var.n;
                if (str != null) {
                    jSONObject.put("authenticatorAttachment", str);
                }
                String str2 = na6Var.b;
                if (str2 != null && o80Var == null) {
                    jSONObject.put("type", str2);
                }
                String str3 = na6Var.a;
                if (str3 != null) {
                    jSONObject.put("id", str3);
                }
                String str4 = "response";
                m80 m80Var = na6Var.e;
                boolean z = true;
                if (m80Var != null) {
                    jSONObjectU = m80Var.u();
                } else {
                    n80 n80Var = na6Var.d;
                    if (n80Var != null) {
                        jSONObjectU = n80Var.u();
                    } else {
                        z = false;
                        if (o80Var != null) {
                            try {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("code", o80Var.a.a);
                                String str5 = o80Var.b;
                                if (str5 != null) {
                                    jSONObject2.put("message", str5);
                                }
                                str4 = "error";
                                jSONObjectU = jSONObject2;
                            } catch (JSONException e) {
                                throw new RuntimeException("Error encoding AuthenticatorErrorResponse to JSON object", e);
                            }
                        } else {
                            jSONObjectU = null;
                        }
                    }
                }
                if (jSONObjectU != null) {
                    jSONObject.put(str4, jSONObjectU);
                }
                j80 j80Var = na6Var.k;
                if (j80Var != null) {
                    jSONObject.put("clientExtensionResults", j80Var.n());
                } else if (z) {
                    jSONObject.put("clientExtensionResults", new JSONObject());
                }
                String string = jSONObject.toString();
                string.getClass();
                Bundle bundle = new Bundle();
                bundle.putString("androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON", string);
                return new f22(bundle, string);
            } catch (JSONException e2) {
                throw new RuntimeException("Error encoding PublicKeyCredential to JSON object", e2);
            }
        } catch (Throwable th) {
            throw new l12("The PublicKeyCredential response json had an unexpected exception when parsing: " + th.getMessage());
        }
    }

    public final void handleResponse$credentials_play_services_auth(int i, int i2, Intent intent) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
        if (i != companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
            Log.w(TAG, "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " does not match what was given " + i);
            return;
        }
        if (CredentialProviderController.maybeReportErrorResultCodeCreate(i2, new uc1(2), new e7(this, 12), this.cancellationSignal)) {
            return;
        }
        byte[] byteArrayExtra = intent != null ? intent.getByteArrayExtra("FIDO2_CREDENTIAL_EXTRA") : null;
        int i3 = 3;
        if (byteArrayExtra == null) {
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(this.cancellationSignal)) {
                return;
            }
            Executor executor = this.executor;
            if (executor != null) {
                executor.execute(new is(this, i3));
                return;
            } else {
                pe4.F("executor");
                throw null;
            }
        }
        na6 na6Var = (na6) rs9.d(byteArrayExtra, na6.CREATOR);
        na6Var.getClass();
        c12 c12VarPublicKeyCredentialResponseContainsError = PublicKeyCredentialControllerUtility.Companion.publicKeyCredentialResponseContainsError(na6Var);
        if (c12VarPublicKeyCredentialResponseContainsError != null) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new kg(5, this, c12VarPublicKeyCredentialResponseContainsError));
            return;
        }
        int i4 = 4;
        try {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new l30(i4, this, convertResponseToCredentialManager(na6Var)));
        } catch (JSONException e) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new o20(i3, this, e));
        } catch (Throwable th) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new xq(i4, this, th));
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(e22 e22Var, t22 t22Var, Executor executor, final CancellationSignal cancellationSignal) {
        e22Var.getClass();
        t22Var.getClass();
        executor.getClass();
        this.cancellationSignal = cancellationSignal;
        this.callback = t22Var;
        this.executor = executor;
        int i = 3;
        try {
            qa6 qa6VarConvertRequestToPlayServices = convertRequestToPlayServices(e22Var);
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
                return;
            }
            c63 c63Var = new c63(this.context);
            by7 by7VarA = r19.a();
            by7VarA.a = new jq6(c63Var, qa6VarConvertRequestToPlayServices, 20);
            by7VarA.d = 5407;
            c63Var.b(0, by7VarA.a()).addOnSuccessListener(new rn1(new mt3() { // from class: a32
                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$2(cancellationSignal, this, (PendingIntent) obj);
                }
            }, 2)).addOnFailureListener(new kb(this, cancellationSignal));
        } catch (JSONException e) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new yq(i, this, e));
        } catch (Throwable th) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new lx(i, this, th));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CredentialProviderCreatePublicKeyCredentialController getInstance(Context context) {
            context.getClass();
            return new CredentialProviderCreatePublicKeyCredentialController(context);
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
