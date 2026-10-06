package defpackage;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a24 implements WildcardType {
    public final Type a;
    public final Type b;

    public a24(Type[] typeArr, Type[] typeArr2) {
        if (typeArr2.length > 1) {
            c6.f("At most one lower bound is supported");
            throw null;
        }
        if (typeArr.length != 1) {
            c6.f("Exactly one upper bound must be specified");
            throw null;
        }
        if (typeArr2.length != 1) {
            Objects.requireNonNull(typeArr[0]);
            x13.h(typeArr[0]);
            this.b = null;
            this.a = x13.g(typeArr[0]);
            return;
        }
        Objects.requireNonNull(typeArr2[0]);
        x13.h(typeArr2[0]);
        if (typeArr[0] != Object.class) {
            c6.f("When lower bound is specified, upper bound must be Object");
            throw null;
        }
        this.b = x13.g(typeArr2[0]);
        this.a = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && x13.n(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.b;
        return type != null ? new Type[]{type} : x13.b;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.a};
    }

    public final int hashCode() {
        Type type = this.b;
        return (this.a.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
    }

    public final String toString() {
        Type type = this.b;
        if (type != null) {
            return "? super " + x13.U(type);
        }
        Type type2 = this.a;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + x13.U(type2);
    }
}
