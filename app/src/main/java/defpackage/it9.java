package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class it9 {
    public static final d2a b = d2a.a(new byte[0]);
    public final HashMap a;

    public it9(HashMap map) {
        this.a = map;
    }

    public final Iterable a(byte[] bArr) {
        List list;
        d2a d2aVar = b;
        HashMap map = this.a;
        List list2 = (List) map.get(d2aVar);
        if (bArr.length >= 5) {
            list = (List) map.get(new d2a(bArr, 5 > bArr.length ? bArr.length : 5));
        } else {
            list = null;
        }
        if (list2 == null && list == null) {
            return new ArrayList();
        }
        if (list2 == null) {
            return list;
        }
        return list == null ? list2 : new og5(this, list, list2);
    }
}
