package defpackage;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i99 implements Runnable {
    public final /* synthetic */ vt4 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ va9 c;

    public i99(va9 va9Var, vt4 vt4Var, String str) {
        this.a = vt4Var;
        this.b = str;
        this.c = va9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        va9 va9Var = this.c;
        int i = va9Var.b;
        vt4 vt4Var = this.a;
        if (i > 0) {
            Bundle bundle = va9Var.c;
            vt4Var.onCreate(bundle != null ? bundle.getBundle(this.b) : null);
        }
        if (va9Var.b >= 2) {
            vt4Var.onStart();
        }
        if (va9Var.b >= 3) {
            vt4Var.onResume();
        }
        if (va9Var.b >= 4) {
            vt4Var.onStop();
        }
        if (va9Var.b >= 5) {
            vt4Var.onDestroy();
        }
    }
}
