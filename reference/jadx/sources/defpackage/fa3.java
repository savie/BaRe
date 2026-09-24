package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fa3 implements Closeable {
    public static final pn4 a;

    static {
        pn4 pn4Var;
        try {
            Class.forName("java.nio.file.Files");
            pn4Var = new wm5();
        } catch (ClassNotFoundException unused) {
            pn4Var = new pn4();
        }
        a = pn4Var;
        String str = ey5.b;
        String property = System.getProperty("java.io.tmpdir");
        property.getClass();
        ma2.r(property);
        ClassLoader classLoader = vl6.class.getClassLoader();
        classLoader.getClass();
        new vl6(classLoader);
    }

    public abstract on4 a(ey5 ey5Var);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
