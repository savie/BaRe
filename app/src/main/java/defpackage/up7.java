package defpackage;

import java.lang.ref.Reference;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class up7 implements ev1, AutoCloseable {
    public static final Logger b = Logger.getLogger(up7.class.getName());
    public final sp7 a;

    public up7() {
        p28 p28Var = p28.a;
        this.a = new sp7(new ConcurrentHashMap());
    }

    public static AssertionError b(rp7 rp7Var) {
        AssertionError assertionError = new AssertionError("Thread [" + rp7Var.a + "] opened a scope of " + rp7Var.c + " here:");
        assertionError.setStackTrace(rp7Var.getStackTrace());
        return assertionError;
    }

    @Override // defpackage.ev1
    public final v57 a(t40 t40Var) {
        int i;
        v57 v57VarA = p28.a.a(t40Var);
        rp7 rp7Var = new rp7(t40Var);
        StackTraceElement[] stackTrace = rp7Var.getStackTrace();
        for (int i2 = 0; i2 < stackTrace.length; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            if (stackTraceElement.getClassName().equals(t40.class.getName()) && stackTraceElement.getMethodName().equals("makeCurrent") && (i = i2 + 2) < stackTrace.length) {
                StackTraceElement stackTraceElement2 = stackTrace[i];
                if (stackTraceElement2.getClassName().equals("kotlin.coroutines.jvm.internal.BaseContinuationImpl") && stackTraceElement2.getMethodName().equals("resumeWith")) {
                    e6.e("Attempting to call Context.makeCurrent from inside a Kotlin coroutine. This is not allowed. Use Context.asContextElement provided by opentelemetry-extension-kotlin instead of makeCurrent.");
                    return null;
                }
            }
        }
        int i3 = 1;
        while (i3 < stackTrace.length) {
            String className = stackTrace[i3].getClassName();
            if (!className.startsWith("io.opentelemetry.api.") && !className.startsWith("io.opentelemetry.sdk.testing.context.SettableContextStorageProvider") && !className.startsWith("io.opentelemetry.context.")) {
                break;
            }
            i3++;
        }
        rp7Var.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i3, stackTrace.length));
        return new tp7(this, v57VarA, rp7Var);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        sp7 sp7Var;
        while (true) {
            sp7Var = this.a;
            Reference referencePoll = sp7Var.poll();
            if (referencePoll == null) {
                break;
            } else {
                sp7Var.a.remove(referencePoll);
            }
        }
        ConcurrentHashMap concurrentHashMap = sp7Var.b;
        List list = (List) concurrentHashMap.values().stream().filter(new qp0(1)).collect(Collectors.toList());
        concurrentHashMap.clear();
        if (list.isEmpty()) {
            return;
        }
        if (list.size() > 1) {
            Level level = Level.SEVERE;
            Logger logger = b;
            logger.log(level, "Multiple scopes leaked - first will be thrown as an error.");
            Iterator it = list.iterator();
            while (it.hasNext()) {
                logger.log(Level.SEVERE, "Scope leaked", (Throwable) b((rp7) it.next()));
            }
        }
        throw b((rp7) list.get(0));
    }

    @Override // defpackage.ev1
    public final t40 current() {
        return p28.a.current();
    }
}
