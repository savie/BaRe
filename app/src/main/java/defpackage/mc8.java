package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mc8 {
    public final lc8 a;
    public final gc8 b;

    public mc8(gc8 gc8Var, lc8 lc8Var) {
        this.b = gc8Var;
        this.a = lc8Var;
    }

    public static Class a(Class cls) {
        Annotation[] annotationArr = u81.a;
        return (!Enum.class.isAssignableFrom(cls) || cls.isEnum()) ? cls : cls.getSuperclass();
    }

    public abstract String b(Object obj);

    public abstract String c(Class cls, Object obj);

    public mc8() {
        this(null, null);
    }
}
