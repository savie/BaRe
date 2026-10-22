package defpackage;

import java.io.ByteArrayInputStream;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l25 implements Callable {
    public final /* synthetic */ ByteArrayInputStream a;

    public l25(ByteArrayInputStream byteArrayInputStream) {
        this.a = byteArrayInputStream;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return n25.c(this.a, null);
    }
}
