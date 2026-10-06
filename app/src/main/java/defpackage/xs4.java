package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.ServiceLoader;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xs4 {
    public static final Logger a;
    public static final ev1 b;

    static {
        ArrayList arrayList;
        ev1 up7Var = p28.a;
        a = Logger.getLogger(xs4.class.getName());
        AtomicReference atomicReference = new AtomicReference();
        String property = System.getProperty("io.opentelemetry.context.contextStorageProvider", "");
        if (!"default".equals(property)) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ServiceLoader.load(fv1.class).iterator();
            if (it.hasNext()) {
                throw eq3.h(it);
            }
            if (!arrayList2.isEmpty()) {
                if (!property.isEmpty()) {
                    Iterator it2 = arrayList2.iterator();
                    if (it2.hasNext()) {
                        throw eq3.h(it2);
                    }
                    atomicReference.set(new IllegalStateException("io.opentelemetry.context.ContextStorageProvider property set but no matching class could be found, requested: " + property + " but found providers: " + arrayList2));
                } else if (arrayList2.size() == 1) {
                    arrayList2.get(0).getClass();
                    e6.d();
                    return;
                } else {
                    atomicReference.set(new IllegalStateException("Found multiple ContextStorageProvider. Set the io.opentelemetry.context.ContextStorageProvider property to the fully qualified class name of the provider to use. Falling back to default ContextStorage. Found providers: " + arrayList2));
                }
            }
        }
        if (Boolean.getBoolean("io.opentelemetry.context.enableStrictContext")) {
            up7Var = new up7();
        }
        synchronized (gv1.b) {
            arrayList = gv1.a;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            up7Var = (ev1) ((Function) it3.next()).apply(up7Var);
        }
        b = up7Var;
        synchronized (gv1.b) {
        }
        Throwable th = (Throwable) atomicReference.get();
        if (th != null) {
            a.log(Level.WARNING, "ContextStorageProvider initialized failed. Using default", th);
        }
    }
}
