package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ph6 {
    public static final qh6 a;

    static {
        qh6 qh6Var = null;
        try {
            qh6Var = (qh6) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (qh6Var == null) {
            qh6Var = new qh6();
        }
        a = qh6Var;
    }

    public static n81 a(Class cls) {
        a.getClass();
        return new n81(cls);
    }
}
