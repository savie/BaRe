package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xk4 implements Serializable {
    public transient Object a;
    public final String b;
    public int c = -1;
    public String d;

    public xk4(Object obj, String str) {
        this.a = obj;
        if (str != null) {
            this.b = str;
        } else {
            f6.n("Cannot pass null fieldName");
            throw null;
        }
    }

    public final String toString() {
        if (this.d == null) {
            StringBuilder sb = new StringBuilder();
            Object obj = this.a;
            if (obj != null) {
                Class<?> componentType = obj instanceof Class ? (Class) obj : obj.getClass();
                int i = 0;
                while (componentType.isArray()) {
                    componentType = componentType.getComponentType();
                    i++;
                }
                sb.append(componentType.getName());
                while (true) {
                    i--;
                    if (i < 0) {
                        break;
                    }
                    sb.append("[]");
                }
            } else {
                sb.append("UNKNOWN");
            }
            sb.append('[');
            String str = this.b;
            if (str != null) {
                sb.append('\"');
                sb.append(str);
                sb.append('\"');
            } else {
                int i2 = this.c;
                if (i2 >= 0) {
                    sb.append(i2);
                } else {
                    sb.append('?');
                }
            }
            sb.append(']');
            this.d = sb.toString();
        }
        return this.d;
    }
}
