package defpackage;

import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dv4 implements Iterator, bo4 {
    public String a;
    public boolean b;
    public final /* synthetic */ ev4 c;

    public dv4(ev4 ev4Var) {
        this.c = ev4Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() throws IOException {
        if (this.a == null && !this.b) {
            String line = this.c.a.readLine();
            this.a = line;
            if (line == null) {
                this.b = true;
            }
        }
        return this.a != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            m0.d();
            return null;
        }
        String str = this.a;
        this.a = null;
        str.getClass();
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
