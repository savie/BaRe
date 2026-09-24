package defpackage;

import java.util.function.BiConsumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v81 implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        Class cls = (Class) obj;
        Class cls2 = (Class) obj2;
        if (cls.equals(cls2)) {
            return;
        }
        x81.a.put(cls2, cls);
    }
}
