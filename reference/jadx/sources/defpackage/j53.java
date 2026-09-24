package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j53 extends bx6 {
    public final HashMap e = new HashMap();

    @Override // defpackage.bx6
    public final xw6 c(Object obj) {
        return (xw6) this.e.get(obj);
    }

    @Override // defpackage.bx6
    public final Object d(Object obj) {
        Object objD = super.d(obj);
        this.e.remove(obj);
        return objD;
    }
}
