package defpackage;

import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eq6 implements Runnable {
    public final /* synthetic */ iq6 a;
    public final /* synthetic */ IBinder[] b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Intent d;

    public /* synthetic */ eq6(iq6 iq6Var, IBinder[] iBinderArr, int i, Intent intent) {
        this.a = iq6Var;
        this.b = iBinderArr;
        this.c = i;
        this.d = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        iq6 iq6Var = this.a;
        try {
            this.b[0] = iq6Var.a(this.d, this.c);
        } catch (Exception e) {
            ji8.k("IPC", e);
        }
    }
}
