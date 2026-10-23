package defpackage;

import java.io.Serializable;
import java.util.HashMap;
import org.w3c.dom.Node;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ju5 implements Serializable {
    public static final Class b = Node.class;
    public static final ge c;
    public static final ju5 d;
    public final HashMap a;

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    static {
        ge geVar = null;
        try {
            geVar = ge.d;
        } catch (Throwable th) {
            jb9.a0(th);
        }
        c = geVar;
        d = new ju5();
    }

    public ju5() {
        HashMap map = new HashMap();
        map.put("java.sql.Date", "com.fasterxml.jackson.databind.deser.std.DateDeserializers$SqlDateDeserializer");
        map.put("java.sql.Timestamp", "com.fasterxml.jackson.databind.deser.std.DateDeserializers$TimestampDeserializer");
        HashMap map2 = new HashMap();
        this.a = map2;
        map2.put("java.sql.Timestamp", dd2.k);
        map2.put("java.sql.Date", "com.fasterxml.jackson.databind.ser.std.SqlDateSerializer");
        map2.put("java.sql.Time", "com.fasterxml.jackson.databind.ser.std.SqlTimeSerializer");
        map2.put("java.sql.Blob", "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
        map2.put("javax.sql.rowset.serial.SerialBlob", "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
    }

    public static Object a(gc8 gc8Var, Class cls) {
        try {
            return u81.f(cls, false);
        } catch (Throwable th) {
            jb9.a0(th);
            throw new IllegalStateException("Failed to create instance of `" + cls.getName() + "` for handling values of type " + u81.m(gc8Var) + ", problem: (" + th.getClass().getName() + ") " + th.getMessage());
        }
    }

    public static Object b(gc8 gc8Var, String str) {
        try {
            return a(gc8Var, Class.forName(str));
        } catch (Throwable th) {
            jb9.a0(th);
            StringBuilder sbU = dj7.u("Failed to find class `", str, "` for handling values of type ");
            sbU.append(u81.m(gc8Var));
            sbU.append(", problem: (");
            sbU.append(th.getClass().getName());
            sbU.append(") ");
            f6.l(sbU, th.getMessage());
            return null;
        }
    }
}
