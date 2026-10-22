package defpackage;

import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class cq8 extends n3 {
    public cq8() {
        super(new java.util.HashMap());
    }

    @Override
    public final m3 c(Object obj, m3 previous) {
        bq8 node = new bq8(previous);
        node.c = new WeakReference(obj);
        if (previous != null) {
            previous.b = node;
        }
        return node;
    }

    @Override
    public final Iterator iterator() {
        return new aq8(this);
    }
}
