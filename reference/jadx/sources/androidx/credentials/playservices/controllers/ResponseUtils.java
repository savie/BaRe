package androidx.credentials.playservices.controllers;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.util.Log;
import defpackage.be8;
import defpackage.bt3;
import defpackage.bw3;
import defpackage.c6;
import defpackage.cw3;
import defpackage.cy0;
import defpackage.j6;
import defpackage.jj2;
import defpackage.kg;
import defpackage.o10;
import defpackage.o12;
import defpackage.oj;
import defpackage.pb;
import defpackage.pe4;
import defpackage.t22;
import defpackage.ty1;
import defpackage.u20;
import defpackage.vc1;
import defpackage.wv3;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ResponseUtils {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "GetCredentialController";

    public static final void handleGetCredentialResponse(int i, int i2, Intent intent, Executor executor, t22 t22Var, CancellationSignal cancellationSignal) {
        Companion.handleGetCredentialResponse(i, i2, intent, executor, t22Var, cancellationSignal);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final be8 handleGetCredentialResponse$lambda$0(CancellationSignal cancellationSignal, bt3 bt3Var) {
            bt3Var.getClass();
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, bt3Var);
            return be8.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final be8 handleGetCredentialResponse$lambda$1(Executor executor, t22 t22Var, wv3 wv3Var) {
            wv3Var.getClass();
            executor.execute(new ty1(8, t22Var, wv3Var));
            return be8.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final be8 handleGetCredentialResponse$lambda$2(Executor executor, t22 t22Var) {
            executor.execute(new o10(t22Var, 5));
            return be8.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void handleGetCredentialResponse$lambda$2$0(t22 t22Var) {
            t22Var.onError(new cw3("No provider data returned."));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final be8 handleGetCredentialResponse$lambda$3(Executor executor, t22 t22Var, bw3 bw3Var) {
            executor.execute(new o12(5, t22Var, bw3Var));
            return be8.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final be8 handleGetCredentialResponse$lambda$4(Executor executor, t22 t22Var, wv3 wv3Var) {
            executor.execute(new pb(7, t22Var, wv3Var));
            return be8.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void handleGetCredentialResponse$lambda$4$0(t22 t22Var, wv3 wv3Var) {
            if (wv3Var == null) {
                wv3Var = new cw3("No provider data returned");
            }
            t22Var.onError(wv3Var);
        }

        public final void handleGetCredentialResponse(int i, int i2, Intent intent, Executor executor, t22 t22Var, CancellationSignal cancellationSignal) {
            String string;
            Bundle bundle;
            bw3 bw3Var;
            executor.getClass();
            t22Var.getClass();
            CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
            if (i != companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
                Log.w(ResponseUtils.TAG, "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " which  does not match what was given " + i);
                return;
            }
            CredentialProviderController.Companion companion2 = CredentialProviderController.Companion;
            if (companion2.maybeReportErrorResultCodeGet$credentials_play_services_auth(i2, new vc1(2), new jj2(5, executor, t22Var), cancellationSignal)) {
                return;
            }
            if (intent == null) {
                companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new kg(14, executor, t22Var));
                return;
            }
            int i3 = Build.VERSION.SDK_INT;
            wv3 wv3VarJ = null;
            if (i3 >= 34) {
                bw3Var = j6.d(intent);
            } else {
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE");
                bw3Var = (bundleExtra == null || (string = bundleExtra.getString("androidx.credentials.provider.extra.EXTRA_CREDENTIAL_TYPE")) == null || (bundle = bundleExtra.getBundle("androidx.credentials.provider.extra.EXTRA_CREDENTIAL_DATA")) == null) ? null : new bw3(pe4.h(bundle, string));
            }
            if (bw3Var != null) {
                companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new oj(7, executor, t22Var, bw3Var));
                return;
            }
            if (i3 >= 34) {
                wv3VarJ = j6.c(intent);
            } else {
                int i4 = wv3.a;
                Bundle bundleExtra2 = intent.getBundleExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION");
                if (bundleExtra2 != null) {
                    String string2 = bundleExtra2.getString("androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_TYPE");
                    if (string2 == null) {
                        c6.f("Bundle was missing exception type.");
                        return;
                    }
                    wv3VarJ = cy0.J(bundleExtra2.getCharSequence("androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_MESSAGE"), string2);
                }
            }
            companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new u20(4, executor, t22Var, wv3VarJ));
        }

        private Companion() {
        }
    }
}
