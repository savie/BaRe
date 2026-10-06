package defpackage;

import java.io.FilterOutputStream;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rh8 extends la6 {
    public final /* synthetic */ uw1 a;
    public final /* synthetic */ AtomicLong b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rh8(FilterOutputStream filterOutputStream, FilterOutputStream filterOutputStream2, uw1 uw1Var, AtomicLong atomicLong) {
        super(filterOutputStream);
        this.a = uw1Var;
        this.b = atomicLong;
    }

    @Override // defpackage.la6
    public final void a(int i) {
        this.a.a(i, this.b.addAndGet(i));
    }
}
