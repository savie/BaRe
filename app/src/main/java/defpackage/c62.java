package defpackage;

import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c62 implements Closeable {
    public final bt3 a;
    public boolean b;
    public final ArrayList c = new ArrayList();

    public c62(bt3 bt3Var) {
        this.a = bt3Var;
    }

    public final BufferedInputStream a() throws b62 {
        if (this.b) {
            throw new b62("Can't provide InputStream. Provider closed!");
        }
        InputStream inputStream = (InputStream) this.a.invoke();
        BufferedInputStream bufferedInputStream = inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, 262144);
        this.c.add(bufferedInputStream);
        return bufferedInputStream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.b = true;
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            f13.a((InputStream) it.next());
        }
    }
}
