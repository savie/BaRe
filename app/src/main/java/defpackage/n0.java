package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 implements Iterator {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ n0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                try {
                    return ((p0) obj).available() > 0;
                } catch (IOException unused) {
                }
                break;
            default:
                return ((Iterator) obj).hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                try {
                    return ((p0) obj).g();
                } catch (Exception e) {
                    throw new NoSuchElementException(e.getMessage());
                }
            default:
                Map.Entry entry = (Map.Entry) ((Iterator) obj).next();
                return new hk5((m61) entry.getKey(), (qn5) entry.getValue());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException("Remove not supported on ASN.1 InputStream iterator");
            default:
                ((Iterator) this.b).remove();
                return;
        }
    }
}
