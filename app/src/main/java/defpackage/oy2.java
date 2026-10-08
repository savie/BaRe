package defpackage;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oy2 implements rr7, rb6 {
    public final HashMap a;
    public ArrayDeque b;

    public oy2() {
        kd8 kd8Var = kd8.a;
        this.a = new HashMap();
        this.b = new ArrayDeque();
    }

    @Override // defpackage.rb6
    public final void a(gy2 gy2Var) {
        Set<Map.Entry> setEntrySet;
        gy2Var.getClass();
        synchronized (this) {
            try {
                ArrayDeque arrayDeque = this.b;
                if (arrayDeque != null) {
                    arrayDeque.add(gy2Var);
                    return;
                }
                synchronized (this) {
                    try {
                        Map map = (Map) this.a.get(ma2.class);
                        setEntrySet = map == null ? Collections.EMPTY_SET : map.entrySet();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                for (Map.Entry entry : setEntrySet) {
                    ((Executor) entry.getValue()).execute(new jy2(entry, gy2Var));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
