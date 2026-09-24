package defpackage;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wh8 implements WildcardType {
    public final Type a;
    public final Type b;

    public wh8(Type[] typeArr, Type[] typeArr2) {
        if (typeArr2.length > 1) {
            c6.b();
            throw null;
        }
        if (typeArr.length != 1) {
            c6.b();
            throw null;
        }
        if (typeArr2.length != 1) {
            typeArr[0].getClass();
            yh8.b(typeArr[0]);
            this.b = null;
            this.a = yh8.a(typeArr[0]);
            return;
        }
        typeArr2[0].getClass();
        yh8.b(typeArr2[0]);
        if (typeArr[0] != Object.class) {
            c6.b();
            throw null;
        }
        this.b = yh8.a(typeArr2[0]);
        this.a = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && wx3.g(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.b;
        return type != null ? new Type[]{type} : yh8.b;
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
            return "? super " + yh8.j(type);
        }
        Type type2 = this.a;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + yh8.j(type2);
    }
}
