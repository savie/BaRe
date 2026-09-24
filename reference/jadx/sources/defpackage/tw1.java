package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tw1 implements uw1 {
    public final vy4 a = new vy4();

    @Override // defpackage.uw1
    public final void a(final int i, final long j) {
        this.a.forEach(new Consumer() { // from class: sw1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((uw1) obj).a(i, j);
            }
        });
    }
}
