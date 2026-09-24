package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y14 implements GenericArrayType {
    public final Type a;

    public y14(Type type) {
        Objects.requireNonNull(type);
        this.a = x13.g(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && x13.n(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return x13.U(this.a) + "[]";
    }
}
