package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d84 extends IOException implements Iterable {
    public final List a;

    /* JADX WARN: Illegal instructions before constructor call */
    public d84(String str, List list) {
        if (str == null) {
            str = String.format("%,d exception(s): %s", Integer.valueOf(list != null ? list.size() : 0), list);
        }
        super(str, (list != null ? list.size() : 0) == 0 ? null : (Throwable) list.get(0));
        this.a = list == null ? Collections.EMPTY_LIST : list;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ArrayList(this.a).iterator();
    }
}
