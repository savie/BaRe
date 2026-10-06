package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iv3 implements qm7 {
    public final hi8 a;
    public final TaskCompletionSource b;

    public iv3(hi8 hi8Var, TaskCompletionSource taskCompletionSource) {
        this.a = hi8Var;
        this.b = taskCompletionSource;
    }

    @Override // defpackage.qm7
    public final boolean a(ee0 ee0Var) {
        if (ee0Var.b == 4 && !this.a.a(ee0Var)) {
            String str = ee0Var.c;
            if (str != null) {
                this.b.setResult(new vd0(ee0Var.e, ee0Var.f, str));
                return true;
            }
            f6.n("Null token");
        }
        return false;
    }

    @Override // defpackage.qm7
    public final boolean onException(Exception exc) {
        this.b.trySetException(exc);
        return true;
    }
}
