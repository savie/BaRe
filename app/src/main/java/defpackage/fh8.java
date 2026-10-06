package defpackage;

import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fh8 {
    public final AtomicMarkableReference a;
    public final AtomicReference b = new AtomicReference(null);
    public final boolean c;
    public final /* synthetic */ i75 d;

    public fh8(i75 i75Var, boolean z) {
        this.d = i75Var;
        this.c = z;
        this.a = new AtomicMarkableReference(new bp4(z ? 8192 : 1024), false);
    }

    public final void a() {
        AtomicReference atomicReference;
        i41 i41Var = new i41(this, 5);
        do {
            atomicReference = this.b;
            if (atomicReference.compareAndSet(null, i41Var)) {
                ((o02) ((s02) this.d.b).b).a(i41Var);
                return;
            }
        } while (atomicReference.get() == null);
    }

    public final boolean b(String str, String str2) {
        synchronized (this) {
            try {
                if (!((bp4) this.a.getReference()).b(str, str2)) {
                    return false;
                }
                AtomicMarkableReference atomicMarkableReference = this.a;
                atomicMarkableReference.set((bp4) atomicMarkableReference.getReference(), true);
                a();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
