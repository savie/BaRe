package defpackage;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zq7 extends n3 {
    public zq7() {
        super(new HashMap());
    }

    @Override
    public final m3 c(Object obj, m3 previous) {
        yq7 node = new yq7(previous);
        node.c = obj;
        if (previous != null) {
            previous.b = node;
        }
        return node;
    }

    @Override
    public final Iterator iterator() {
        return new xq7(this);
    }
}
