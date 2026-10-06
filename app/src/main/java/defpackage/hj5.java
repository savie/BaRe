package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hj5 extends gs4 implements mt3 {
    public static final hj5 a = new hj5(1);

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        Object value = entry.getValue();
        return eq3.n(new StringBuilder("  "), ((l46) entry.getKey()).a, " = ", value instanceof byte[] ? x50.t0((byte[]) value, ", ", null, 56) : String.valueOf(entry.getValue()));
    }
}
