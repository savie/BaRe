package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jw3 implements qm7 {
    public final TaskCompletionSource a;

    public jw3(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // defpackage.qm7
    public final boolean a(ee0 ee0Var) {
        int i = ee0Var.b;
        if (i != 3 && i != 4 && i != 5) {
            return false;
        }
        this.a.trySetResult(ee0Var.a);
        return true;
    }

    @Override // defpackage.qm7
    public final boolean onException(Exception exc) {
        return false;
    }
}
