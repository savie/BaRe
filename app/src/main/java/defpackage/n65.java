package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n65 implements pi4 {
    @Override // defpackage.pi4
    public final qi4 a(Type type, Set set, nh5 nh5Var) {
        Class clsL;
        Type[] actualTypeArguments;
        if (!set.isEmpty() || (clsL = wx3.l(type)) != Map.class) {
            return null;
        }
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            if (!Map.class.isAssignableFrom(clsL)) {
                c6.b();
                return null;
            }
            Type typeG = yh8.g(type, clsL, yh8.c(type, clsL, Map.class), new LinkedHashSet());
            actualTypeArguments = typeG instanceof ParameterizedType ? ((ParameterizedType) typeG).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        return new o65(nh5Var, actualTypeArguments[0], actualTypeArguments[1]).c();
    }
}
