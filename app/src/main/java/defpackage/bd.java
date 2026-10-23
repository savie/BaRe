package defpackage;

import android.view.Choreographer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bd implements Choreographer.FrameCallback {
    public final /* synthetic */ Runnable a;

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.a.run();
    }
}
