package defpackage;

import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z14 implements ParameterizedType {
    public final Type a;
    public final Type b;
    public final Type[] c;

    public z14(Type type, Class cls, Type... typeArr) {
        Objects.requireNonNull(cls);
        if (type == null && !Modifier.isStatic(cls.getModifiers()) && cls.getDeclaringClass() != null) {
            c6.f(fz5.k(cls, "Must specify owner type for "));
            throw null;
        }
        this.a = type != null ? x13.g(type) : null;
        this.b = x13.g(cls);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.c = typeArr2;
        int length = typeArr2.length;
        for (int i = 0; i < length; i++) {
            Objects.requireNonNull(this.c[i]);
            x13.h(this.c[i]);
            Type[] typeArr3 = this.c;
            typeArr3[i] = x13.g(typeArr3[i]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && x13.n(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.c.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.a;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.c) ^ this.b.hashCode();
        Type type = this.a;
        return (type != null ? type.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        Type[] typeArr = this.c;
        int length = typeArr.length;
        Type type = this.b;
        if (length == 0) {
            return x13.U(type);
        }
        StringBuilder sb = new StringBuilder((length + 1) * 30);
        sb.append(x13.U(type));
        sb.append("<");
        sb.append(x13.U(typeArr[0]));
        for (int i = 1; i < length; i++) {
            sb.append(", ");
            sb.append(x13.U(typeArr[i]));
        }
        sb.append(">");
        return sb.toString();
    }
}
