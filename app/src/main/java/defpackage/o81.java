package defpackage;

import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o81 {
    public oe a;
    public xt1 b;
    public wo1 c;
    public wo1 d;
    public wo1 e;
    public wo1 f;
    public wo1 g;
    public wo1 h;
    public x44 i;
    public no6 j;
    public pu5 k;

    public static wo1 a(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        boolean zEquals = parameterTypes.length == 1 ? Map.class.equals(parameterTypes[0]) : false;
        if (!method.isAccessible()) {
            method.setAccessible(true);
        }
        return new wo1(method, zEquals);
    }
}
