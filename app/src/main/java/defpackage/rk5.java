package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rk5 {
    public static final boolean a;

    static {
        a = System.getProperty("org.graalvm.nativeimage.imagecode") != null;
    }

    public static boolean a(Class cls) {
        return a && "runtime".equals(System.getProperty("org.graalvm.nativeimage.imagecode")) && (cls.getDeclaredFields().length == 0 || u81.s(cls)) && cls.getDeclaredMethods().length == 0 && cls.getDeclaredConstructors().length == 0;
    }
}
