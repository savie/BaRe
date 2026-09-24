package defpackage;

import java.lang.reflect.Field;
import java.util.EnumMap;
import java.util.EnumSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t81 {
    public static final t81 e = new t81();
    public final Field a;
    public final Field b;
    public final String c;
    public final String d;

    public t81() {
        String string;
        Field fieldA;
        String string2;
        Field fieldA2 = null;
        try {
            fieldA = a(EnumSet.class, "elementType");
            string = null;
        } catch (Exception e2) {
            string = e2.toString();
            fieldA = null;
        }
        this.a = fieldA;
        this.c = string;
        try {
            string2 = null;
            fieldA2 = a(EnumMap.class, "keyType");
        } catch (Exception e3) {
            string2 = e3.toString();
        }
        this.b = fieldA2;
        this.d = string2;
    }

    public static Field a(Class cls, String str) {
        for (Field field : cls.getDeclaredFields()) {
            if (str.equals(field.getName()) && field.getType() == Class.class) {
                field.setAccessible(true);
                return field;
            }
        }
        l0.e(eq3.l("No field named '", str, "' in class '", cls.getName(), "'"));
        return null;
    }
}
