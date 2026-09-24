package androidx.credentials.playservices.controllers.identitycredentials.getcredential;

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
import androidx.credentials.playservices.controllers.ResponseUtils;
import androidx.credentials.playservices.controllers.identityauth.HiddenActivity;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController;
import com.google.android.gms.identitycredentials.GetCredentialRequest;
import com.google.android.gms.tasks.OnFailureListener;
import defpackage.aw3;
import defpackage.be8;
import defpackage.bw3;
import defpackage.cv;
import defpackage.cw3;
import defpackage.he4;
import defpackage.hl1;
import defpackage.jz3;
import defpackage.me;
import defpackage.mt3;
import defpackage.o22;
import defpackage.pe4;
import defpackage.pf;
import defpackage.r32;
import defpackage.t22;
import defpackage.ty5;
import defpackage.v22;
import defpackage.w22;
import defpackage.wv3;
import defpackage.xx3;
import defpackage.zv3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class GetCredentialController extends CredentialProviderController<zv3, GetCredentialRequest, aw3, bw3, wv3> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "GetCredentialController";
    public t22 callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final GetCredentialController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$resultReceiver$1] */
    public GetCredentialController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                bundle.getClass();
                if (this.this$0.maybeReportErrorFromResultReceiver(bundle, new GetCredentialController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
                    return;
                }
                ResponseUtils.Companion.handleGetCredentialResponse(bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i, (Intent) xx3.j(bundle, CredentialProviderBaseController.RESULT_DATA_TAG, Intent.class), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal);
            }
        };
    }

    private final v22 convertCredentialOptionToPlayServices(w22 w22Var) {
        return new v22(w22Var.a, w22Var.b, w22Var.c, "", "", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0(CancellationSignal cancellationSignal, GetCredentialController getCredentialController, Executor executor, t22 t22Var, ty5 ty5Var) {
        boolean zCancellationReviewer$credentials_play_services_auth = CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal);
        be8 be8Var = be8.a;
        if (zCancellationReviewer$credentials_play_services_auth) {
            return be8Var;
        }
        Intent intent = new Intent(getCredentialController.context, (Class<?>) HiddenActivity.class);
        getCredentialController.generateHiddenActivityIntent(getCredentialController.resultReceiver, intent, CredentialProviderBaseController.BEGIN_SIGN_IN_TAG);
        intent.putExtra(CredentialProviderBaseController.EXTRA_FLOW_PENDING_INTENT, ty5Var.a);
        try {
            getCredentialController.context.startActivity(intent);
            return be8Var;
        } catch (Exception unused) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new cv(11, executor, t22Var));
            return be8Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$0(Executor executor, t22 t22Var) {
        executor.execute(new r32(t22Var, 2));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0$0(t22 t22Var) {
        t22Var.onError(new cw3(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2(zv3 zv3Var, GetCredentialController getCredentialController, t22 t22Var, Executor executor, CancellationSignal cancellationSignal, Exception exc) {
        exc.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.isGetSignInIntentRequest$credentials_play_services_auth(zv3Var)) {
            Log.w(TAG, "Pre-u credman get flow failed for get sign in intent; retrying with gis flow");
            new CredentialProviderGetSignInIntentController(getCredentialController.context).invokePlayServices(zv3Var, t22Var, executor, cancellationSignal);
        } else {
            Log.w(TAG, "Pre-u credman get flow failed; retrying with gis flow");
            new CredentialProviderBeginSignInController(getCredentialController.context).invokePlayServices(zv3Var, t22Var, executor, cancellationSignal);
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public GetCredentialRequest convertRequestToPlayServices(zv3 zv3Var) {
        zv3Var.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI", false);
        bundle.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", zv3Var.b);
        bundle.putParcelable("androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME", null);
        List list = zv3Var.a;
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(convertCredentialOptionToPlayServices((w22) it.next()));
        }
        return new GetCredentialRequest(arrayList, bundle, null, new ResultReceiver(null));
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public bw3 convertResponseToCredentialManager(aw3 aw3Var) {
        aw3Var.getClass();
        o22 o22Var = aw3Var.a;
        return new bw3(pe4.h(o22Var.b, o22Var.a));
    }

    public final t22 getCallback() {
        t22 t22Var = this.callback;
        if (t22Var != null) {
            return t22Var;
        }
        pe4.F("callback");
        throw null;
    }

    public final Context getContext() {
        return this.context;
    }

    public final Executor getExecutor() {
        Executor executor = this.executor;
        if (executor != null) {
            return executor;
        }
        pe4.F("executor");
        throw null;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(final zv3 zv3Var, final t22 t22Var, final Executor executor, final CancellationSignal cancellationSignal) {
        zv3Var.getClass();
        t22Var.getClass();
        executor.getClass();
        this.cancellationSignal = cancellationSignal;
        setCallback(t22Var);
        setExecutor(executor);
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        GetCredentialRequest getCredentialRequestConvertRequestToPlayServices = convertRequestToPlayServices(zv3Var);
        Context context = this.context;
        context.getClass();
        new he4(context, null, he4.k, me.g, jz3.c).c(getCredentialRequestConvertRequestToPlayServices).addOnSuccessListener(new pf(new mt3() { // from class: tv3
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                return GetCredentialController.invokePlayServices$lambda$0(cancellationSignal, this, executor, t22Var, (ty5) obj);
            }
        }, 6)).addOnFailureListener(new OnFailureListener() { // from class: uv3
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                GetCredentialController.invokePlayServices$lambda$2(zv3Var, this, t22Var, executor, cancellationSignal, exc);
            }
        });
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

    public static /* synthetic */ void getCallback$annotations() {
    }

    private static /* synthetic */ void getCancellationSignal$annotations() {
    }

    public static /* synthetic */ void getExecutor$annotations() {
    }
}
