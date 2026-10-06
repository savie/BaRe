package defpackage;

import java.io.File;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class na3 extends v3 {
    public final ArrayDeque c;
    public final /* synthetic */ pa3 d;

    public na3(pa3 pa3Var) {
        this.d = pa3Var;
        ArrayDeque arrayDeque = new ArrayDeque();
        this.c = arrayDeque;
        File file = pa3Var.a;
        if (file.isDirectory()) {
            arrayDeque.push(b(file));
        } else if (file.isFile()) {
            arrayDeque.push(new la3(file));
        } else {
            this.a = 2;
        }
    }

    @Override // defpackage.v3
    public final void a() {
        File file;
        while (true) {
            ArrayDeque arrayDeque = this.c;
            oa3 oa3Var = (oa3) arrayDeque.peek();
            if (oa3Var == null) {
                file = null;
                break;
            }
            File fileA = oa3Var.a();
            if (fileA == null) {
                arrayDeque.pop();
            } else {
                if (fileA.equals(oa3Var.a) || !fileA.isDirectory() || arrayDeque.size() >= Integer.MAX_VALUE) {
                    file = fileA;
                    break;
                }
                arrayDeque.push(b(fileA));
            }
        }
        if (file == null) {
            this.a = 2;
        } else {
            this.b = file;
            this.a = 1;
        }
    }

    public final ja3 b(File file) {
        int iOrdinal = this.d.b.ordinal();
        if (iOrdinal == 0) {
            return new ma3(file);
        }
        if (iOrdinal == 1) {
            return new ka3(file);
        }
        q.j();
        return null;
    }
}
