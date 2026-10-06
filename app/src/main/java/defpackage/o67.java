package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o67 {
    public static final m67 a = new m67(new byte[0], 0, 0, false, false);
    public static final int b;
    public static final AtomicReference[] c;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        b = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i = 0; i < iHighestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        c = atomicReferenceArr;
    }

    public static final void a(m67 m67Var) {
        m67Var.getClass();
        if (m67Var.f != null || m67Var.g != null) {
            c6.f("Failed requirement.");
            return;
        }
        if (m67Var.d) {
            return;
        }
        AtomicReference atomicReference = c[(int) (Thread.currentThread().getId() & (((long) b) - 1))];
        m67 m67Var2 = a;
        m67 m67Var3 = (m67) atomicReference.getAndSet(m67Var2);
        if (m67Var3 == m67Var2) {
            return;
        }
        int i = m67Var3 != null ? m67Var3.c : 0;
        if (i >= 65536) {
            atomicReference.set(m67Var3);
            return;
        }
        m67Var.f = m67Var3;
        m67Var.b = 0;
        m67Var.c = i + 8192;
        atomicReference.set(m67Var);
    }

    public static final m67 b() {
        AtomicReference atomicReference = c[(int) (Thread.currentThread().getId() & (((long) b) - 1))];
        m67 m67Var = a;
        m67 m67Var2 = (m67) atomicReference.getAndSet(m67Var);
        if (m67Var2 == m67Var) {
            return new m67();
        }
        if (m67Var2 == null) {
            atomicReference.set(null);
            return new m67();
        }
        atomicReference.set(m67Var2.f);
        m67Var2.f = null;
        m67Var2.c = 0;
        return m67Var2;
    }
}
