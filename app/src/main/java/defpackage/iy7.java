package defpackage;

import java.util.TimerTask;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class iy7 extends TimerTask {
    public final /* synthetic */ jy7 a;

    public iy7(jy7 jy7Var) {
        this.a = jy7Var;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.a.c();
    }
}
