package androidx.credentials.playservices.controllers.blockstore.getrestorecredential;

import android.content.Context;
import android.os.CancellationSignal;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import com.google.android.gms.tasks.Task;
import defpackage.an5;
import defpackage.be8;
import defpackage.bw3;
import defpackage.by7;
import defpackage.cw3;
import defpackage.fs;
import defpackage.jb9;
import defpackage.jz3;
import defpackage.l32;
import defpackage.le4;
import defpackage.lh;
import defpackage.lh6;
import defpackage.ln;
import defpackage.m32;
import defpackage.me;
import defpackage.mh;
import defpackage.mt3;
import defpackage.pe4;
import defpackage.r19;
import defpackage.re;
import defpackage.t22;
import defpackage.ty1;
import defpackage.vk9;
import defpackage.w22;
import defpackage.wv3;
import defpackage.xu1;
import defpackage.xw3;
import defpackage.y53;
import defpackage.yw3;
import defpackage.zv3;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialProviderGetRestoreCredentialController extends CredentialProviderController<zv3, xw3, yw3, bw3, wv3> {
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderGetRestoreCredentialController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0(CredentialProviderGetRestoreCredentialController credentialProviderGetRestoreCredentialController, CancellationSignal cancellationSignal, Executor executor, t22 t22Var, yw3 yw3Var) {
        int i = 3;
        try {
            yw3Var.getClass();
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new lh(i, executor, t22Var, credentialProviderGetRestoreCredentialController.convertResponseToCredentialManager(yw3Var)));
        } catch (Exception e) {
            CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new mh(i, executor, t22Var, e));
        }
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$0(Executor executor, t22 t22Var, bw3 bw3Var) {
        executor.execute(new ty1(4, t22Var, bw3Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$0$1(Executor executor, t22 t22Var, Exception exc) {
        executor.execute(new ln(3, t22Var, exc));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$1$0(t22 t22Var, Exception exc) {
        t22Var.onError(exc instanceof an5 ? (wv3) exc : new cw3(exc.getMessage()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2(CancellationSignal cancellationSignal, Executor executor, t22 t22Var, Exception exc) {
        exc.getClass();
        lh6 lh6Var = new lh6();
        lh6Var.a = new cw3("Get restore credential failed for unknown reason, failure: " + exc.getMessage());
        if (exc instanceof re) {
            re reVar = (re) exc;
            if (reVar.getStatusCode() == 40201) {
                lh6Var.a = new cw3("The restore credential internal service had a failure, failure: " + exc.getMessage());
            } else {
                lh6Var.a = new cw3("The restore credential service failed with unsupported status code, failure: " + exc.getMessage() + ", status code: " + reVar.getStatusCode());
            }
        }
        CredentialProviderController.Companion.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new m32(executor, t22Var, lh6Var, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 invokePlayServices$lambda$2$0(Executor executor, t22 t22Var, lh6 lh6Var) {
        executor.execute(new xu1(6, t22Var, lh6Var));
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0$0(t22 t22Var, lh6 lh6Var) {
        t22Var.onError(lh6Var.a);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public xw3 convertRequestToPlayServices(zv3 zv3Var) {
        zv3Var.getClass();
        for (w22 w22Var : zv3Var.a) {
        }
        pe4.F("credentialOption");
        throw null;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public bw3 convertResponseToCredentialManager(yw3 yw3Var) {
        yw3Var.getClass();
        return new bw3(pe4.h(yw3Var.a, "androidx.credentials.TYPE_RESTORE_CREDENTIAL"));
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(zv3 zv3Var, final t22 t22Var, final Executor executor, final CancellationSignal cancellationSignal) {
        zv3Var.getClass();
        t22Var.getClass();
        executor.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        xw3 xw3VarConvertRequestToPlayServices = convertRequestToPlayServices(zv3Var);
        Context context = this.context;
        context.getClass();
        le4 le4Var = new le4(context, null, le4.k, me.g, jz3.c);
        xw3VarConvertRequestToPlayServices.getClass();
        by7 by7VarA = r19.a();
        by7VarA.c = new y53[]{jb9.K};
        vk9 vk9Var = new vk9(9, false);
        vk9Var.b = xw3VarConvertRequestToPlayServices;
        by7VarA.a = vk9Var;
        by7VarA.d = 1695;
        Task taskB = le4Var.b(0, by7VarA.a());
        taskB.getClass();
        taskB.addOnSuccessListener(new fs(new mt3() { // from class: k32
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$0(this.a, cancellationSignal, executor, t22Var, (yw3) obj);
            }
        }, 5)).addOnFailureListener(new l32(cancellationSignal, executor, t22Var));
    }
}
