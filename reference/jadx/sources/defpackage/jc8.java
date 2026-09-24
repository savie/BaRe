package defpackage;

import java.io.Serializable;
import java.lang.reflect.TypeVariable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jc8 implements Serializable {
    public static final String[] e;
    public static final gc8[] f;
    public static final jc8 k;
    public final String[] a;
    public final gc8[] b;
    public final String[] c;
    public final int d;

    static {
        String[] strArr = new String[0];
        e = strArr;
        gc8[] gc8VarArr = new gc8[0];
        f = gc8VarArr;
        k = new jc8(strArr, gc8VarArr, null);
    }

    public jc8(String[] strArr, gc8[] gc8VarArr, String[] strArr2) {
        strArr = strArr == null ? e : strArr;
        this.a = strArr;
        gc8VarArr = gc8VarArr == null ? f : gc8VarArr;
        this.b = gc8VarArr;
        if (strArr.length == gc8VarArr.length) {
            this.c = strArr2;
            this.d = Arrays.hashCode(gc8VarArr);
        } else {
            StringBuilder sb = new StringBuilder("Mismatching names (");
            sb.append(strArr.length);
            sb.append("), types (");
            c6.f(xs1.m(sb, gc8VarArr.length, ")"));
            throw null;
        }
    }

    public static jc8 a(gc8 gc8Var, Class cls) {
        TypeVariable[] typeParameters;
        if (cls == Collection.class) {
            typeParameters = ic8.b;
        } else if (cls == List.class) {
            typeParameters = ic8.d;
        } else if (cls == ArrayList.class) {
            typeParameters = ic8.e;
        } else if (cls == AbstractList.class) {
            typeParameters = ic8.a;
        } else if (cls == Iterable.class) {
            typeParameters = ic8.c;
        } else {
            TypeVariable[] typeVariableArr = ic8.a;
            typeParameters = cls.getTypeParameters();
        }
        int length = typeParameters == null ? 0 : typeParameters.length;
        if (length == 1) {
            return new jc8(new String[]{typeParameters[0].getName()}, new gc8[]{gc8Var}, null);
        }
        y5.d(length, cls.getName(), " with 1 type parameter: class expects ");
        return null;
    }

    public static jc8 b(Class cls, gc8 gc8Var, gc8 gc8Var2) {
        TypeVariable[] typeParameters;
        if (cls == Map.class) {
            typeParameters = ic8.f;
        } else if (cls == HashMap.class) {
            typeParameters = ic8.g;
        } else if (cls == LinkedHashMap.class) {
            typeParameters = ic8.h;
        } else {
            TypeVariable[] typeVariableArr = ic8.a;
            typeParameters = cls.getTypeParameters();
        }
        int length = typeParameters == null ? 0 : typeParameters.length;
        if (length == 2) {
            return new jc8(new String[]{typeParameters[0].getName(), typeParameters[1].getName()}, new gc8[]{gc8Var, gc8Var2}, null);
        }
        y5.d(length, cls.getName(), " with 2 type parameters: class expects ");
        return null;
    }

    public static jc8 c(Class cls, gc8[] gc8VarArr) {
        String[] strArr;
        int length = gc8VarArr.length;
        if (length == 1) {
            return a(gc8VarArr[0], cls);
        }
        if (length == 2) {
            return b(cls, gc8VarArr[0], gc8VarArr[1]);
        }
        TypeVariable[] typeParameters = cls.getTypeParameters();
        if (typeParameters == null || typeParameters.length == 0) {
            strArr = e;
        } else {
            int length2 = typeParameters.length;
            strArr = new String[length2];
            for (int i = 0; i < length2; i++) {
                strArr[i] = typeParameters[i].getName();
            }
        }
        if (strArr.length == gc8VarArr.length) {
            return new jc8(strArr, gc8VarArr, null);
        }
        StringBuilder sb = new StringBuilder("Cannot create TypeBindings for class ");
        sb.append(cls.getName());
        sb.append(" with ");
        sb.append(gc8VarArr.length);
        sb.append(" type parameter");
        sb.append(gc8VarArr.length == 1 ? "" : "s");
        sb.append(": class expects ");
        sb.append(strArr.length);
        throw new IllegalArgumentException(sb.toString());
    }

    public final gc8 d(int i) {
        if (i < 0) {
            return null;
        }
        gc8[] gc8VarArr = this.b;
        if (i >= gc8VarArr.length) {
            return null;
        }
        gc8 gc8Var = gc8VarArr[i];
        return gc8Var == null ? lc8.K : gc8Var;
    }

    public final List e() {
        gc8[] gc8VarArr = this.b;
        if (gc8VarArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        List listAsList = Arrays.asList(gc8VarArr);
        if (!listAsList.contains(null)) {
            return listAsList;
        }
        ArrayList arrayList = new ArrayList(listAsList);
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) == null) {
                arrayList.set(i, lc8.K);
            }
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!u81.n(jc8.class, obj)) {
            return false;
        }
        jc8 jc8Var = (jc8) obj;
        return this.d == jc8Var.d && Arrays.equals(this.b, jc8Var.b);
    }

    public final boolean f() {
        return this.b.length == 0;
    }

    public final int hashCode() {
        return this.d;
    }

    public final String toString() {
        gc8[] gc8VarArr = this.b;
        if (gc8VarArr.length == 0) {
            return "<>";
        }
        StringBuilder sb = new StringBuilder("<");
        int length = gc8VarArr.length;
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            gc8 gc8Var = gc8VarArr[i];
            if (gc8Var == null) {
                sb.append("?");
            } else {
                StringBuilder sb2 = new StringBuilder(40);
                gc8Var.q0(sb2);
                sb.append(sb2.toString());
            }
        }
        sb.append('>');
        return sb.toString();
    }
}
