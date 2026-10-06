package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.stream.Collectors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x81 {
    public static final HashMap a;

    static {
        String.valueOf('.');
        String.valueOf('$');
        HashMap map = new HashMap();
        Class cls = Boolean.TYPE;
        map.put(cls.getName(), cls);
        Class cls2 = Byte.TYPE;
        map.put(cls2.getName(), cls2);
        Class cls3 = Character.TYPE;
        map.put(cls3.getName(), cls3);
        Class cls4 = Double.TYPE;
        map.put(cls4.getName(), cls4);
        Class cls5 = Float.TYPE;
        map.put(cls5.getName(), cls5);
        Class cls6 = Integer.TYPE;
        map.put(cls6.getName(), cls6);
        Class cls7 = Long.TYPE;
        map.put(cls7.getName(), cls7);
        Class cls8 = Short.TYPE;
        map.put(cls8.getName(), cls8);
        Class cls9 = Void.TYPE;
        map.put(cls9.getName(), cls9);
        HashMap map2 = new HashMap();
        map2.put(cls, Boolean.class);
        map2.put(cls2, Byte.class);
        map2.put(cls3, Character.class);
        map2.put(cls8, Short.class);
        map2.put(cls6, Integer.class);
        map2.put(cls7, Long.class);
        map2.put(cls4, Double.class);
        map2.put(cls5, Float.class);
        map2.put(cls9, cls9);
        a = new HashMap();
        map2.forEach(new v81());
        HashMap map3 = new HashMap();
        map3.put(cls6.getName(), "I");
        map3.put(cls.getName(), "Z");
        map3.put(cls5.getName(), "F");
        map3.put(cls7.getName(), "J");
        map3.put(cls8.getName(), "S");
        map3.put(cls2.getName(), "B");
        map3.put(cls4.getName(), "D");
        map3.put(cls3.getName(), "C");
        Collections.unmodifiableMap(map3);
        Collections.unmodifiableMap((Map) map3.entrySet().stream().collect(Collectors.toMap(new wm0(1), new w81(0))));
    }

    public static void a(Class cls, LinkedHashSet linkedHashSet) {
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (linkedHashSet.add(cls2)) {
                    a(cls2, linkedHashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }
}
