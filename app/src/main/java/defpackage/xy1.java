package defpackage;

import android.app.job.JobParameters;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xy1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xy1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                zy1 zy1Var = (zy1) this.b;
                Map map = (Map) this.c;
                fh8 fh8Var = (fh8) zy1Var.h.d.d;
                synchronized (fh8Var) {
                    ((bp4) fh8Var.a.getReference()).c(map);
                    AtomicMarkableReference atomicMarkableReference = fh8Var.a;
                    atomicMarkableReference.set((bp4) atomicMarkableReference.getReference(), true);
                    break;
                }
                fh8Var.a();
                return;
            case 1:
                CreatePublicKeyCredentialController.handleResponse$lambda$1$0((CreatePublicKeyCredentialController) this.b, (c12) this.c);
                return;
            case 2:
                CredentialProviderBeginSignInController.handleResponse$lambda$4$0((CredentialProviderBeginSignInController) this.b, (wv3) this.c);
                return;
            case 3:
                CredentialProviderGetSignInIntentController.handleResponse$lambda$4$0((CredentialProviderGetSignInIntentController) this.b, (wv3) this.c);
                return;
            case 4:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.b;
                JobParameters jobParameters = (JobParameters) this.c;
                int i = JobInfoSchedulerService.a;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            default:
                vg8 vg8Var = (vg8) this.b;
                ug8 ug8Var = (ug8) this.c;
                try {
                    xu5 xu5Var = (xu5) vg8Var.b.b.b(xu5.class);
                    while (true) {
                        try {
                            try {
                                vz0 vz0Var = (vz0) vg8Var.a.take();
                                if (vz0Var == wg8.p) {
                                    wg8.n.k("Closing CachedOtpConnection");
                                    ((pg8) xu5Var).close();
                                    return;
                                } else {
                                    try {
                                        vz0Var.invoke(new cn6(xu5Var, null));
                                    } catch (Exception e) {
                                        ms8.A(1, wg8.n, "OtpConnection callback threw an exception", e);
                                    }
                                }
                            } catch (InterruptedException e2) {
                                ms8.A(1, wg8.n, "InterruptedException when processing OtpConnection: ", e2);
                            }
                        } catch (Throwable th) {
                            try {
                                ((pg8) xu5Var).close();
                                break;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                } catch (IOException e3) {
                    ug8Var.invoke(cn6.a(e3));
                    return;
                }
                break;
        }
    }
}
