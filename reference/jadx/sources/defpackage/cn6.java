package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cn6 {
    public final Object a;
    public final Throwable b;

    public cn6(Object obj, Exception exc) {
        this.a = obj;
        this.b = exc;
    }

    public static cn6 a(Exception exc) {
        return new cn6(null, exc);
    }

    public static cn6 c(Callable callable) {
        try {
            return new cn6(callable.call(), null);
        } catch (Exception e) {
            return a(e);
        }
    }

    public final Object b() throws Throwable {
        Object obj = this.a;
        if (obj != null) {
            return obj;
        }
        throw this.b;
    }
}
