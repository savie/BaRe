package defpackage;

import java.io.InterruptedIOException;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jv0 {
    public final ConcurrentHashMap.KeySetView a = ConcurrentHashMap.newKeySet();
    public volatile boolean b;

    public final void a() throws InterruptedIOException {
        if (this.b) {
            throw new InterruptedIOException("Box transfer cancelled");
        }
    }
}
