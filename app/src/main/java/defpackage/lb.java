package defpackage;

import android.content.Context;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.material.internal.CheckableImageButton;
import com.google.firebase.FirebaseApp;
import com.microsoft.identity.common.internal.providers.oauth2.CameraPermissionRequestHandler;
import com.pcloud.sdk.internal.a;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lb implements ig2, h9, Continuation, mo1, v51, hm6, ny6 {
    public final /* synthetic */ Object a;

    public /* synthetic */ lb(Object obj) {
        this.a = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        return ((gw3) ((a) this.a).f(response, gw3.class)).d();
    }

    @Override // defpackage.v51
    public void b() {
        CheckableImageButton checkableImageButton = ((pw2) this.a).k;
        wx3.E(checkableImageButton, checkableImageButton.getContentDescription());
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
        ((AtomicReference) ((wc9) this.a).c).set((ae4) ga6Var.get());
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        CameraPermissionRequestHandler.c((CameraPermissionRequestHandler) this.a, ((Boolean) obj).booleanValue());
    }

    @Override // defpackage.ny6
    public boolean isCancellationRequested() {
        Object obj = ((ap6) this.a).b.get();
        obj.getClass();
        return ((Boolean) obj).booleanValue();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        return new ne2((Context) pp0Var.b(Context.class), ((FirebaseApp) pp0Var.b(FirebaseApp.class)).getPersistenceKey(), pp0Var.a(nc6.a(q34.class)), pp0Var.c(fg2.class), (Executor) pp0Var.g((nc6) this.a));
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        ((Runnable) this.a).run();
        return Tasks.forResult(null);
    }
}
