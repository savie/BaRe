package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tp7 implements v57 {
    public final v57 a;
    public final rp7 b;
    public final /* synthetic */ up7 c;

    public tp7(up7 up7Var, v57 v57Var, rp7 rp7Var) {
        this.c = up7Var;
        this.a = v57Var;
        this.b = rp7Var;
        sp7 sp7Var = up7Var.a;
        sp7Var.getClass();
        sp7Var.a.put(new p5(this, sp7Var), rp7Var);
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        this.b.d = true;
        sp7 sp7Var = this.c.a;
        sp7Var.getClass();
        zp8 zp8Var = new zp8();
        zp8Var.a = this;
        zp8Var.b = System.identityHashCode(this);
        try {
            sp7Var.a.remove(zp8Var);
            zp8Var.a = null;
            zp8Var.b = 0;
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            for (int i = 0; i < stackTrace.length; i++) {
                StackTraceElement stackTraceElement = stackTrace[i];
                if (stackTraceElement.getClassName().equals(tp7.class.getName()) && stackTraceElement.getMethodName().equals("close")) {
                    int i2 = i + 2;
                    int i3 = i + 1;
                    if (i3 < stackTrace.length) {
                        StackTraceElement stackTraceElement2 = stackTrace[i3];
                        if (stackTraceElement2.getClassName().equals("kotlin.jdk7.AutoCloseableKt") && stackTraceElement2.getMethodName().equals("closeFinally") && i2 < stackTrace.length) {
                            i2 = i + 3;
                        }
                    }
                    if (stackTrace[i2].getMethodName().equals("invokeSuspend")) {
                        i2++;
                    }
                    if (i2 < stackTrace.length) {
                        StackTraceElement stackTraceElement3 = stackTrace[i2];
                        if (stackTraceElement3.getClassName().equals("kotlin.coroutines.jvm.internal.BaseContinuationImpl") && stackTraceElement3.getMethodName().equals("resumeWith")) {
                            e6.e("Attempting to close a Scope created by Context.makeCurrent from inside a Kotlin coroutine. This is not allowed. Use Context.asContextElement provided by opentelemetry-extension-kotlin instead of makeCurrent.");
                            return;
                        }
                    } else {
                        continue;
                    }
                }
            }
            long id = Thread.currentThread().getId();
            rp7 rp7Var = this.b;
            if (id == rp7Var.b) {
                this.a.close();
            } else {
                e6.j(eq3.l("Thread [", rp7Var.a, "] opened scope, but thread [", Thread.currentThread().getName(), "] closed it"), this.b);
            }
        } catch (Throwable th) {
            zp8Var.a = null;
            zp8Var.b = 0;
            throw th;
        }
    }

    public final String toString() {
        String message = this.b.getMessage();
        return message != null ? message : super.toString();
    }
}
