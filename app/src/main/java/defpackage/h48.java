package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h48 extends w57 implements Runnable {
    public final long k;

    public h48(long j, kv1 kv1Var) {
        super(kv1Var, kv1Var.getContext());
        this.k = j;
    }

    @Override // defpackage.ci4
    public final String I() {
        return super.I() + "(timeMillis=" + this.k + ')';
    }

    @Override // java.lang.Runnable
    public final void run() {
        ox1 ox1Var = this.e;
        yc9.u(ox1Var);
        tx1 tx1Var = (tx1) ox1Var.get(tx1.c);
        String str = tx1Var != null ? tx1Var.b : null;
        String strM = fz5.m("Timed out waiting for ", " ms", this.k);
        if (str != null) {
            StringBuilder sbU = dj7.u("Coroutine \"", str, "\" ");
            if (strM.length() > 0) {
                strM = Character.toLowerCase(strM.charAt(0)) + strM.substring(1);
            }
            sbU.append(strM);
            strM = sbU.toString();
        }
        l(new g48(strM, this));
    }
}
