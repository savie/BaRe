package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qs7 extends us7 {
    public final ss7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qs7(is3 is3Var, String str, ss7 ss7Var) {
        super(is3Var, str);
        is3Var.getClass();
        str.getClass();
        this.d = ss7Var;
    }

    @Override // defpackage.nw6
    public final void C(int i, String str) {
        str.getClass();
        this.d.C(i, str);
    }

    @Override // defpackage.nw6
    public final boolean F() {
        return this.d.F();
    }

    @Override // defpackage.nw6
    public final String R(int i) {
        return this.d.R(i);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.d.close();
    }

    @Override // defpackage.nw6
    public final void e(int i, long j) {
        this.d.e(i, j);
    }

    @Override // defpackage.nw6
    public final void f(int i) {
        this.d.f(i);
    }

    @Override // defpackage.nw6
    public final int getColumnCount() {
        return this.d.getColumnCount();
    }

    @Override // defpackage.nw6
    public final String getColumnName(int i) {
        return this.d.getColumnName(i);
    }

    @Override // defpackage.nw6
    public final long getLong(int i) {
        return this.d.getLong(i);
    }

    @Override // defpackage.us7, defpackage.nw6
    public final void i() {
        this.d.i();
    }

    @Override // defpackage.nw6
    public final boolean i0() {
        ss7 ss7Var = this.d;
        boolean zI0 = ss7Var.i0();
        boolean zEqualsIgnoreCase = ss7Var.R(0).equalsIgnoreCase("wal");
        is3 is3Var = this.a;
        if (zEqualsIgnoreCase) {
            is3Var.a.enableWriteAheadLogging();
            return zI0;
        }
        is3Var.a.disableWriteAheadLogging();
        return zI0;
    }

    @Override // defpackage.nw6
    public final boolean isNull(int i) {
        return this.d.isNull(i);
    }

    @Override // defpackage.us7, defpackage.nw6
    public final void reset() {
        this.d.reset();
    }
}
