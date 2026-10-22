package defpackage;

import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n76 implements fu4 {
    public static final n76 p = new n76();
    public int a;
    public int b;
    public Handler e;
    public boolean c = true;
    public boolean d = true;
    public final hu4 f = new hu4(this);
    public final vn1 k = new vn1(this, 6);
    public final s79 n = new s79(this, 5);

    public final void a() {
        int i = this.b + 1;
        this.b = i;
        if (i == 1) {
            if (this.c) {
                this.f.d(rt4.ON_RESUME);
                this.c = false;
            } else {
                Handler handler = this.e;
                handler.getClass();
                handler.removeCallbacks(this.k);
            }
        }
    }

    @Override // defpackage.fu4
    public final hu4 getLifecycle() {
        return this.f;
    }
}
