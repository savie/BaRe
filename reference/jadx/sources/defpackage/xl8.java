package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class xl8 implements wl8 {
    public static xl8 a;

    @Override // defpackage.wl8
    public tl8 a(Class cls) {
        return xh8.g(cls);
    }

    @Override // defpackage.wl8
    public tl8 b(Class cls, ej5 ej5Var) {
        return a(cls);
    }

    @Override // defpackage.wl8
    public final tl8 c(n81 n81Var, ej5 ej5Var) {
        Class cls = n81Var.a;
        cls.getClass();
        return b(cls, ej5Var);
    }
}
