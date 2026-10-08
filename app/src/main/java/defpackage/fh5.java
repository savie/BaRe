package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fh5 extends LinkedHashMap implements Iterable {
    public final ri2 a;

    public fh5(ri2 ri2Var) {
        this.a = ri2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final db8 d(int i, String str) {
        ah5 ah5Var = (ah5) get(str);
        if (ah5Var == null || i > ah5Var.size()) {
            return null;
        }
        return (db8) ah5Var.get(i - 1);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return values().iterator();
    }
}
