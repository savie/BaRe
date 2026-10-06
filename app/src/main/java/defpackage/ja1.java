package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ja1 implements Closeable {
    public final Object a = new Object();
    public final LinkedHashSet b = new LinkedHashSet();
    public volatile boolean c;

    public final void a(OutputStream outputStream) {
        synchronized (this.a) {
            if (this.c) {
                throw new IOException("Downloader is closed.");
            }
            this.b.add(outputStream);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        List list;
        synchronized (this.a) {
            try {
                if (this.c) {
                    list = ov2.a;
                } else {
                    this.c = true;
                    List listV1 = el1.v1(this.b);
                    this.b.clear();
                    list = listV1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f13.a((Closeable) it.next());
        }
    }
}
