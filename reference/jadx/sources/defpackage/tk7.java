package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tk7 {
    public static final /* synthetic */ int a = 0;

    static {
        Object bn6Var;
        Object bn6Var2;
        Exception exc = new Exception();
        String simpleName = sz8.class.getSimpleName();
        StackTraceElement stackTraceElement = exc.getStackTrace()[0];
        new StackTraceElement("_COROUTINE.".concat(simpleName), "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
        try {
            bn6Var = ml0.class.getCanonicalName();
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (en6.a(bn6Var) != null) {
            bn6Var = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            bn6Var2 = tk7.class.getCanonicalName();
        } catch (Throwable th2) {
            bn6Var2 = new bn6(th2);
        }
        if (en6.a(bn6Var2) != null) {
            bn6Var2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }
}
