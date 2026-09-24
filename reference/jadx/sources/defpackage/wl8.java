package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public interface wl8 {
    default tl8 a(Class cls) {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }

    default tl8 b(Class cls, ej5 ej5Var) {
        return a(cls);
    }

    default tl8 c(n81 n81Var, ej5 ej5Var) {
        Class cls = n81Var.a;
        cls.getClass();
        return b(cls, ej5Var);
    }
}
