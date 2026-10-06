package defpackage;

import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class hm1 {
    public static final Map a;

    static {
        Map map;
        try {
            Field declaredField = g64.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            map = (Map) declaredField.get(null);
        } catch (Throwable th) {
            Map map2 = Collections.EMPTY_MAP;
            th.printStackTrace();
            map = map2;
        }
        a = map;
    }
}
