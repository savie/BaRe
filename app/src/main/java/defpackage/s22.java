package defpackage;

import android.os.CancellationSignal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s22 implements mt3 {
    public final /* synthetic */ CancellationSignal a;

    public s22(CancellationSignal cancellationSignal) {
        this.a = cancellationSignal;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        this.a.cancel();
        return be8.a;
    }
}
