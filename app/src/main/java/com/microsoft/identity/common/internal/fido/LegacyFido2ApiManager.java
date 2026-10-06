package com.microsoft.identity.common.internal.fido;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment;
import com.microsoft.identity.common.logging.Logger;
import defpackage.be8;
import defpackage.bn6;
import defpackage.by7;
import defpackage.c63;
import defpackage.cr3;
import defpackage.f51;
import defpackage.gs4;
import defpackage.ho5;
import defpackage.jq6;
import defpackage.kv1;
import defpackage.ly8;
import defpackage.mt3;
import defpackage.nc8;
import defpackage.o21;
import defpackage.ph6;
import defpackage.qj7;
import defpackage.r19;
import defpackage.ta6;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LegacyFido2ApiManager implements IFidoManager {
    private final String TAG;
    private final WebViewAuthorizationFragment fragment;
    private final c63 legacyApi;

    public LegacyFido2ApiManager(Context context, WebViewAuthorizationFragment webViewAuthorizationFragment) {
        context.getClass();
        webViewAuthorizationFragment.getClass();
        this.fragment = webViewAuthorizationFragment;
        this.TAG = String.valueOf(ph6.a(LegacyFido2ApiManager.class).c());
        this.legacyApi = new c63(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void createAndThrowException(o21 o21Var, String str, String str2, String str3, Exception exc) {
        LegacyFido2ApiException legacyFido2ApiException = exc != null ? new LegacyFido2ApiException(str2, str3, exc) : new LegacyFido2ApiException(str2, str3, null);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.error(str, str3, legacyFido2ApiException);
        if (o21Var.t() instanceof ho5) {
            o21Var.resumeWith(new bn6(legacyFido2ApiException));
        }
    }

    @Override // com.microsoft.identity.common.internal.fido.IFidoManager
    public final Object authenticate(String str, String str2, List list, String str3, qj7 qj7Var, kv1 kv1Var) {
        final o21 o21Var = new o21(1, nc8.D(kv1Var));
        o21Var.u();
        final String str4 = this.TAG + ":authenticate";
        qj7Var.getClass();
        byte[] bytes = str.getBytes(f51.a);
        bytes.getClass();
        ly8.h(str2);
        ta6 ta6Var = new ta6(bytes, null, str2, null, null, null, null, null, null, null, null);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(str4, "Calling the legacy FIDO2 API with public key credential options to get a PendingIntent.");
        c63 c63Var = this.legacyApi;
        c63Var.getClass();
        by7 by7VarA = r19.a();
        by7VarA.a = new jq6(c63Var, ta6Var, 22);
        by7VarA.d = 5408;
        Task taskB = c63Var.b(0, by7VarA.a());
        taskB.getClass();
        taskB.addOnSuccessListener(new OnSuccessListener() { // from class: com.microsoft.identity.common.internal.fido.LegacyFido2ApiManager$authenticate$2$1

            /* JADX INFO: renamed from: com.microsoft.identity.common.internal.fido.LegacyFido2ApiManager$authenticate$2$1$1, reason: invalid class name */
            /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
            final class AnonymousClass1 extends gs4 implements mt3 {
                final /* synthetic */ o21 $continuation;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(o21 o21Var) {
                    super(1);
                    this.$continuation = o21Var;
                }

                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    String str = (String) obj;
                    str.getClass();
                    o21 o21Var = this.$continuation;
                    if (o21Var.t() instanceof ho5) {
                        o21Var.resumeWith(str);
                    }
                    return be8.a;
                }
            }

            /* JADX INFO: renamed from: com.microsoft.identity.common.internal.fido.LegacyFido2ApiManager$authenticate$2$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
            final class AnonymousClass2 extends gs4 implements mt3 {
                final /* synthetic */ o21 $continuation;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(o21 o21Var) {
                    super(1);
                    this.$continuation = o21Var;
                }

                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    LegacyFido2ApiException legacyFido2ApiException = (LegacyFido2ApiException) obj;
                    legacyFido2ApiException.getClass();
                    o21 o21Var = this.$continuation;
                    if (o21Var.t() instanceof ho5) {
                        o21Var.resumeWith(new bn6(legacyFido2ApiException));
                    }
                    return be8.a;
                }
            }

            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                PendingIntent pendingIntent = (PendingIntent) obj;
                o21 o21Var2 = o21Var;
                String str5 = str4;
                if (pendingIntent == null) {
                    LegacyFido2ApiManager.createAndThrowException(o21Var2, str5, "null_object", "Returned PendingIntent from legacy API is null.", null);
                    return;
                }
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info(str5, "Launching the legacy FIDO2 API PendingIntent.");
                cr3 fidoLauncher = this.getFragment().getFidoLauncher();
                if (fidoLauncher != null) {
                    fidoLauncher.a(new LegacyFido2ApiObject(new AnonymousClass1(o21Var2), new AnonymousClass2(o21Var2), pendingIntent));
                } else {
                    LegacyFido2ApiManager.createAndThrowException(o21Var2, str5, "null_object", "fidoLauncher is null, which indicates that the legacy FIDO2 API is being used where it shouldn't be.", null);
                }
            }
        });
        taskB.addOnFailureListener(new OnFailureListener(this, str4) { // from class: com.microsoft.identity.common.internal.fido.LegacyFido2ApiManager$authenticate$2$2
            final /* synthetic */ String $methodTag;

            {
                this.$methodTag = str4;
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                exc.getClass();
                LegacyFido2ApiManager.createAndThrowException(this.$continuation, this.$methodTag, "get_pending_intent_error", "Failed to get a PendingIntent from the legacy FIDO2 API.", exc);
            }
        });
        taskB.addOnCanceledListener(new OnCanceledListener(this, str4) { // from class: com.microsoft.identity.common.internal.fido.LegacyFido2ApiManager$authenticate$2$3
            final /* synthetic */ String $methodTag;

            {
                this.$methodTag = str4;
            }

            @Override // com.google.android.gms.tasks.OnCanceledListener
            public final void onCanceled() {
                LegacyFido2ApiManager.createAndThrowException(this.$continuation, this.$methodTag, "get_pending_intent_canceled", "The operation to get a PendingIntent from the legacy FIDO2 API was canceled.", null);
            }
        });
        return o21Var.s();
    }

    public final WebViewAuthorizationFragment getFragment() {
        return this.fragment;
    }
}
