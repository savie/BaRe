package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class r28 {
    public static final ThreadLocal a = new ThreadLocal();

    public static uy2 a() {
        ThreadLocal threadLocal = a;
        uy2 uy2Var = (uy2) threadLocal.get();
        if (uy2Var != null) {
            return uy2Var;
        }
        jt0 jt0Var = new jt0(Thread.currentThread());
        threadLocal.set(jt0Var);
        return jt0Var;
    }
}
