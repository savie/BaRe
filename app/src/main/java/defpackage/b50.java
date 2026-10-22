package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b50 implements pi4 {
    @Override // defpackage.pi4
    public final qi4 a(Type type, Set set, nh5 nh5Var) {
        Type componentType;
        if (type instanceof GenericArrayType) {
            componentType = ((GenericArrayType) type).getGenericComponentType();
        } else {
            componentType = type instanceof Class ? ((Class) type).getComponentType() : null;
        }
        if (componentType != null && set.isEmpty()) {
            return new c50(wx3.l(componentType), nh5Var.b(componentType, yh8.a, null)).c();
        }
        return null;
    }
}
