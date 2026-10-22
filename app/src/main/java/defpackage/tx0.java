package defpackage;

import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tx0 {
    public final ArrayDeque a;

    public tx0(int i) {
        switch (i) {
            case 1:
                this.a = new ArrayDeque(16);
                break;
            default:
                this.a = new ArrayDeque(0);
                break;
        }
    }

    public synchronized void a(ox3 ox3Var) {
        ox3Var.b = null;
        ox3Var.c = null;
        this.a.offer(ox3Var);
    }

    public void b() throws IOException {
        ArrayDeque arrayDeque = this.a;
        if (arrayDeque.isEmpty()) {
            return;
        }
        throw new IOException("data item not completed, stackSize: " + arrayDeque.size() + " scope: " + d());
    }

    public void c(long j) throws IOException {
        long jD = d();
        if (jD != j) {
            if (jD != -1) {
                if (jD != -2) {
                    return;
                } else {
                    jD = -2;
                }
            }
            StringBuilder sbT = dj7.t("expected non-string scope or scope ", " but found ", j);
            sbT.append(jD);
            throw new IOException(sbT.toString());
        }
    }

    public long d() {
        ArrayDeque arrayDeque = this.a;
        if (arrayDeque.isEmpty()) {
            return 0L;
        }
        return ((Long) arrayDeque.peek()).longValue();
    }
}
