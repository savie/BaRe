package androidx.credentials.playservices;

import android.content.Context;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import defpackage.a22;
import defpackage.be8;
import defpackage.bt3;
import defpackage.bx3;
import defpackage.by7;
import defpackage.c22;
import defpackage.c32;
import defpackage.cy0;
import defpackage.d91;
import defpackage.e22;
import defpackage.e91;
import defpackage.f91;
import defpackage.fu;
import defpackage.g12;
import defpackage.g84;
import defpackage.g91;
import defpackage.gb;
import defpackage.h91;
import defpackage.he4;
import defpackage.hs1;
import defpackage.i12;
import defpackage.i19;
import defpackage.i41;
import defpackage.j70;
import defpackage.jb9;
import defpackage.jq6;
import defpackage.jz3;
import defpackage.l02;
import defpackage.le;
import defpackage.le4;
import defpackage.lh6;
import defpackage.lz3;
import defpackage.m32;
import defpackage.m91;
import defpackage.me;
import defpackage.mt3;
import defpackage.o20;
import defpackage.pf7;
import defpackage.pz3;
import defpackage.q56;
import defpackage.qf;
import defpackage.r19;
import defpackage.r32;
import defpackage.re;
import defpackage.rn1;
import defpackage.s32;
import defpackage.sz8;
import defpackage.t22;
import defpackage.u29;
import defpackage.w22;
import defpackage.wr0;
import defpackage.x22;
import defpackage.x5;
import defpackage.xx3;
import defpackage.y10;
import defpackage.y2;
import defpackage.y53;
import defpackage.yv3;
import defpackage.z12;
import defpackage.zq8;
import defpackage.zu1;
import defpackage.zv3;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialProviderPlayServicesImpl implements x22 {
    public static final Companion Companion = new Companion(null);
    public static final int MIN_GMS_APK_VERSION = 230815045;
    public static final int MIN_GMS_APK_VERSION_DIGITAL_CRED = 243100000;
    public static final int MIN_GMS_APK_VERSION_RESTORE_CRED = 242200000;
    public static final int MIN_GMS_APK_VERSION_SIGNAL_API = 254625000;
    public static final int PRE_U_MIN_GMS_APK_VERSION = 252400000;
    private static final String TAG = "PlayServicesImpl";
    private final Context context;
    private lz3 googleApiAvailability;

    public CredentialProviderPlayServicesImpl(Context context) {
        context.getClass();
        this.context = context;
        this.googleApiAvailability = lz3.d;
    }

    private final int isGooglePlayServicesAvailable(Context context, int i) {
        return this.googleApiAvailability.c(context, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 onClearCredential$lambda$0(Executor executor, t22 t22Var) {
        executor.execute(new j70(t22Var, 2));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClearCredential$lambda$0$0(t22 t22Var) {
        t22Var.onError(new d91());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 onClearCredential$lambda$1(CancellationSignal cancellationSignal, Executor executor, t22 t22Var, Boolean bool) {
        Companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new c22(executor, t22Var, 2));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 onClearCredential$lambda$1$0(Executor executor, t22 t22Var) {
        Log.i(TAG, "Cleared restore credential successfully!");
        executor.execute(new s32(t22Var, 1));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClearCredential$lambda$3(CancellationSignal cancellationSignal, Executor executor, t22 t22Var, Exception exc) {
        exc.getClass();
        Log.w(TAG, "Clearing restore credential failed", exc);
        lh6 lh6Var = new lh6();
        lh6Var.a = new h91("Clear restore credential failed for unknown reason.");
        if ((exc instanceof re) && ((re) exc).getStatusCode() == 40201) {
            lh6Var.a = new h91("The restore credential internal service had a failure.");
        }
        Companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new m32(executor, t22Var, lh6Var, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 onClearCredential$lambda$3$0(Executor executor, t22 t22Var, lh6 lh6Var) {
        executor.execute(new zu1(4, t22Var, lh6Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClearCredential$lambda$3$0$0(t22 t22Var, lh6 lh6Var) {
        t22Var.onError(lh6Var.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 onClearCredential$lambda$4(CancellationSignal cancellationSignal, Executor executor, t22 t22Var, g91 g91Var) {
        Companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new y2(7, executor, t22Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 onClearCredential$lambda$4$0(Executor executor, t22 t22Var) {
        Log.i(TAG, "During clear credential, signed out successfully!");
        executor.execute(new z12(t22Var, 1));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClearCredential$lambda$6(CredentialProviderPlayServicesImpl credentialProviderPlayServicesImpl, f91 f91Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var, Exception exc) {
        exc.getClass();
        Log.e(TAG, "GMS Clear credential flow failed, calling fallback");
        credentialProviderPlayServicesImpl.runFallbackClearCredFlow(f91Var, cancellationSignal, executor, t22Var);
    }

    private static final be8 onCreateCredential$lambda$0(Executor executor, t22 t22Var) {
        executor.execute(new r32(t22Var, 1));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateCredential$lambda$0$0(t22 t22Var) {
        t22Var.onError(new g12("createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 onGetCredential$lambda$0(Executor executor, t22 t22Var) {
        executor.execute(new s32(t22Var, 0));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGetCredential$lambda$0$0(t22 t22Var) {
        t22Var.onError(new yv3("this device requires a Google Play Services update for the given feature to be supported"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 onGetCredential$lambda$1(Executor executor, t22 t22Var) {
        executor.execute(new r32(t22Var, 0));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGetCredential$lambda$1$0(t22 t22Var) {
        t22Var.onError(new yv3("getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
    }

    private final void runFallbackClearCredFlow(f91 f91Var, final CancellationSignal cancellationSignal, final Executor executor, final t22 t22Var) {
        u29 u29VarK = xx3.k(this.context);
        u29VarK.a.getSharedPreferences("com.google.android.gms.signin", 0).edit().clear().apply();
        Set set = i19.b;
        synchronized (set) {
        }
        Iterator it = set.iterator();
        if (it.hasNext()) {
            ((i19) it.next()).getClass();
            x5.e();
            return;
        }
        pz3.a();
        by7 by7VarA = r19.a();
        by7VarA.c = new y53[]{sz8.c};
        by7VarA.a = new fu(u29VarK);
        by7VarA.b = false;
        by7VarA.d = 1554;
        u29VarK.b(1, by7VarA.a()).addOnSuccessListener(new gb(new mt3() { // from class: t32
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                return CredentialProviderPlayServicesImpl.runFallbackClearCredFlow$lambda$0(cancellationSignal, executor, t22Var, (Void) obj);
            }
        }, 4)).addOnFailureListener(new wr0(this, cancellationSignal, executor, t22Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 runFallbackClearCredFlow$lambda$0(CancellationSignal cancellationSignal, Executor executor, t22 t22Var, Void r5) {
        Companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new o20(5, executor, t22Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 runFallbackClearCredFlow$lambda$0$0(Executor executor, t22 t22Var) {
        Log.i(TAG, "During clear credential, signed out successfully!");
        executor.execute(new i41(t22Var, 2));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runFallbackClearCredFlow$lambda$2(CredentialProviderPlayServicesImpl credentialProviderPlayServicesImpl, CancellationSignal cancellationSignal, Executor executor, t22 t22Var, Exception exc) {
        exc.getClass();
        Companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new y10(2, exc, executor, t22Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 runFallbackClearCredFlow$lambda$2$0$0(Exception exc, Executor executor, t22 t22Var) {
        Log.w(TAG, "During clear credential sign out failed with " + exc);
        executor.execute(new c32(t22Var, exc, 1));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runFallbackClearCredFlow$lambda$2$0$0$0(t22 t22Var, Exception exc) {
        t22Var.onError(new h91(exc.getMessage()));
    }

    public final lz3 getGoogleApiAvailability() {
        return this.googleApiAvailability;
    }

    public final boolean isAvailableOnDevice(int i) {
        int iIsGooglePlayServicesAvailable = isGooglePlayServicesAvailable(this.context, i);
        boolean z = iIsGooglePlayServicesAvailable == 0;
        if (!z) {
            Log.w(TAG, "Connection with Google Play Services was not successful. Connection result is: " + new hs1(iIsGooglePlayServicesAvailable, null, null));
        }
        return z;
    }

    @Override // defpackage.x22
    public void onClearCredential(final f91 f91Var, final CancellationSignal cancellationSignal, final Executor executor, final t22 t22Var) {
        f91Var.getClass();
        executor.getClass();
        t22Var.getClass();
        Companion companion = Companion;
        if (companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        boolean zEquals = f91Var.a.equals("androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL");
        int i = 3;
        le leVar = me.g;
        if (!zEquals) {
            if (!isAvailableOnDevice(PRE_U_MIN_GMS_APK_VERSION)) {
                runFallbackClearCredFlow(f91Var, cancellationSignal, executor, t22Var);
                return;
            }
            Context context = this.context;
            context.getClass();
            he4 he4Var = new he4(context, null, he4.k, leVar, jz3.c);
            e91 e91Var = new e91();
            by7 by7VarA = r19.a();
            by7VarA.c = new y53[]{cy0.g};
            by7VarA.a = new zq8(e91Var, 20);
            by7VarA.d = 32708;
            Task taskB = he4Var.b(1, by7VarA.a());
            taskB.getClass();
            taskB.addOnSuccessListener(new rn1(new mt3() { // from class: p32
                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    return CredentialProviderPlayServicesImpl.onClearCredential$lambda$4(cancellationSignal, executor, t22Var, (g91) obj);
                }
            }, i)).addOnFailureListener(new OnFailureListener() { // from class: q32
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    CredentialProviderPlayServicesImpl.onClearCredential$lambda$6(this.a, f91Var, cancellationSignal, executor, t22Var, exc);
                }
            }).getClass();
            return;
        }
        if (!isAvailableOnDevice(MIN_GMS_APK_VERSION_RESTORE_CRED)) {
            companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new qf(10, executor, t22Var));
            return;
        }
        Context context2 = this.context;
        context2.getClass();
        le4 le4Var = new le4(context2, null, le4.k, leVar, jz3.c);
        m91 m91Var = new m91(f91Var.b);
        by7 by7VarA2 = r19.a();
        by7VarA2.c = new y53[]{jb9.J};
        jq6 jq6Var = new jq6(13);
        jq6Var.b = m91Var;
        by7VarA2.a = jq6Var;
        by7VarA2.d = 1694;
        Task taskB2 = le4Var.b(0, by7VarA2.a());
        taskB2.getClass();
        taskB2.addOnSuccessListener(new gb(new mt3() { // from class: u32
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                return CredentialProviderPlayServicesImpl.onClearCredential$lambda$1(cancellationSignal, executor, t22Var, (Boolean) obj);
            }
        }, i)).addOnFailureListener(new l02(cancellationSignal, executor, t22Var)).getClass();
    }

    @Override // defpackage.x22
    public void onCreateCredential(Context context, i12 i12Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var) {
        context.getClass();
        i12Var.getClass();
        executor.getClass();
        t22Var.getClass();
        if (Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        if (!(i12Var instanceof e22)) {
            g84.j("Create Credential request is unsupported, not password or publickeycredential");
        } else if (isAvailableOnDevice(PRE_U_MIN_GMS_APK_VERSION)) {
            CreatePublicKeyCredentialController.Companion.getInstance(context).invokePlayServices((e22) i12Var, t22Var, executor, cancellationSignal);
        } else {
            CredentialProviderCreatePublicKeyCredentialController.Companion.getInstance(context).invokePlayServices((e22) i12Var, t22Var, executor, cancellationSignal);
        }
    }

    @Override // defpackage.x22
    public void onGetCredential(Context context, zv3 zv3Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var) {
        context.getClass();
        zv3Var.getClass();
        executor.getClass();
        t22Var.getClass();
        Companion companion = Companion;
        if (companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        int i = 1;
        if (companion.isDigitalCredentialRequest$credentials_play_services_auth(zv3Var)) {
            if (isAvailableOnDevice(MIN_GMS_APK_VERSION_DIGITAL_CRED)) {
                new CredentialProviderGetDigitalCredentialController(context).invokePlayServices(zv3Var, t22Var, executor, cancellationSignal);
                return;
            } else {
                companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new c22(executor, t22Var, i));
                return;
            }
        }
        if (companion.isGetRestoreCredentialRequest$credentials_play_services_auth(zv3Var)) {
            if (isAvailableOnDevice(MIN_GMS_APK_VERSION_RESTORE_CRED)) {
                new CredentialProviderGetRestoreCredentialController(context).invokePlayServices(zv3Var, t22Var, executor, cancellationSignal);
                return;
            } else {
                companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new a22(executor, t22Var, i));
                return;
            }
        }
        if (isAvailableOnDevice(PRE_U_MIN_GMS_APK_VERSION)) {
            new GetCredentialController(context).invokePlayServices(zv3Var, t22Var, executor, cancellationSignal);
        } else if (companion.isGetSignInIntentRequest$credentials_play_services_auth(zv3Var)) {
            new CredentialProviderGetSignInIntentController(context).invokePlayServices(zv3Var, t22Var, executor, cancellationSignal);
        } else {
            new CredentialProviderBeginSignInController(context).invokePlayServices(zv3Var, t22Var, executor, cancellationSignal);
        }
    }

    public void onPrepareCredential(zv3 zv3Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var) {
        zv3Var.getClass();
        executor.getClass();
        t22Var.getClass();
    }

    public void onSignalCredentialState(pf7 pf7Var, Executor executor, t22 t22Var) {
        throw null;
    }

    public final void setGoogleApiAvailability(lz3 lz3Var) {
        lz3Var.getClass();
        this.googleApiAvailability = lz3Var;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean cancellationReviewer$credentials_play_services_auth(CancellationSignal cancellationSignal) {
            if (cancellationSignal == null) {
                Log.i(CredentialProviderPlayServicesImpl.TAG, "No cancellationSignal found");
                return false;
            }
            if (!cancellationSignal.isCanceled()) {
                return false;
            }
            Log.i(CredentialProviderPlayServicesImpl.TAG, "the flow has been canceled");
            return true;
        }

        public final void cancellationReviewerWithCallback$credentials_play_services_auth(CancellationSignal cancellationSignal, bt3 bt3Var) {
            bt3Var.getClass();
            if (cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
                return;
            }
            bt3Var.invoke();
        }

        public final boolean isDigitalCredentialRequest$credentials_play_services_auth(zv3 zv3Var) {
            zv3Var.getClass();
            for (w22 w22Var : zv3Var.a) {
            }
            return false;
        }

        public final boolean isGetRestoreCredentialRequest$credentials_play_services_auth(zv3 zv3Var) {
            zv3Var.getClass();
            for (w22 w22Var : zv3Var.a) {
            }
            return false;
        }

        public final boolean isGetSignInIntentRequest$credentials_play_services_auth(zv3 zv3Var) {
            zv3Var.getClass();
            Iterator it = zv3Var.a.iterator();
            while (it.hasNext()) {
                if (((w22) it.next()) instanceof bx3) {
                    return true;
                }
            }
            return false;
        }

        private Companion() {
        }
    }

    public static /* synthetic */ void getGoogleApiAvailability$annotations() {
    }

    @Override // defpackage.x22
    public boolean isAvailableOnDevice() {
        return isAvailableOnDevice(MIN_GMS_APK_VERSION);
    }

    public void onGetCredential(Context context, q56 q56Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var) {
        context.getClass();
        throw null;
    }
}
