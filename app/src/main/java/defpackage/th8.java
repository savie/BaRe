package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class th8 implements GenericArrayType {
    public final Type a;

    public th8(Type type) {
        this.a = yh8.a(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && wx3.g(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return yh8.j(this.a) + "[]";
    }
}
