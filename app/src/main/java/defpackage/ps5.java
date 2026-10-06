package defpackage;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ps5 extends rl5 {
    public final OnBackInvokedDispatcher c;
    public final int d;
    public final OnBackInvokedCallback e;
    public boolean f;

    public ps5(OnBackInvokedDispatcher onBackInvokedDispatcher, int i) {
        this.c = onBackInvokedDispatcher;
        this.d = i;
        this.e = Build.VERSION.SDK_INT == 33 ? new OnBackInvokedCallback() { // from class: ns5
            public final void onBackInvoked() {
                this.a.a();
            }
        } : new os5(this);
    }

    @Override // defpackage.rl5
    public final void b(boolean z) {
        OnBackInvokedCallback onBackInvokedCallback = this.e;
        if (z && !this.f) {
            this.c.registerOnBackInvokedCallback(this.d, onBackInvokedCallback);
            this.f = true;
        } else {
            if (z || !this.f) {
                return;
            }
            this.c.unregisterOnBackInvokedCallback(onBackInvokedCallback);
            this.f = false;
        }
    }
}
