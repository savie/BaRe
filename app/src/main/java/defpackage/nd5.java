package defpackage;

import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nd5 {
    public final Method a;
    public final y74[] b;
    public final String c;
    public final int d;
    public final Class e;
    public final lg4 f;
    public final boolean g;
    public final Class[] h;
    public final boolean i;
    public final pd5 j;
    public final boolean k;

    public nd5(HashMap map) {
        Object[][] objArr = {new Object[]{"handler", Method.class}, new Object[]{"priority", Integer.class}, new Object[]{"invocation", Class.class}, new Object[]{"filter", y74[].class}, new Object[]{"condition", String.class}, new Object[]{"envelope", Boolean.class}, new Object[]{"messages", Class[].class}, new Object[]{"synchronized", Boolean.class}, new Object[]{"listener", pd5.class}, new Object[]{"subtypes", Boolean.class}};
        for (int i = 0; i < 10; i++) {
            Object[] objArr2 = objArr[i];
            if (map.get(objArr2[0]) == null || !((Class) objArr2[1]).isAssignableFrom(map.get(objArr2[0]).getClass())) {
                StringBuilder sb = new StringBuilder("Property ");
                sb.append(objArr2[0]);
                sb.append(" was expected to be not null and of type ");
                sb.append(objArr2[1]);
                d6.l(sb, " but was: ", map.get(objArr2[0]));
                throw null;
            }
        }
        this.a = (Method) map.get("handler");
        this.b = (y74[]) map.get("filter");
        this.c = (String) map.get("condition");
        this.d = ((Integer) map.get("priority")).intValue();
        this.e = (Class) map.get("invocation");
        this.f = (lg4) map.get("invocationMode");
        this.g = ((Boolean) map.get("envelope")).booleanValue();
        this.i = ((Boolean) map.get("subtypes")).booleanValue();
        this.j = (pd5) map.get("listener");
        this.k = ((Boolean) map.get("synchronized")).booleanValue();
        this.h = (Class[]) map.get("messages");
    }
}
