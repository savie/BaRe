package defpackage;

import android.database.sqlite.SQLiteStatement;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rs7 extends us7 {
    public final ps3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rs7(is3 is3Var, String str) {
        super(is3Var, str);
        is3Var.getClass();
        str.getClass();
        str.getClass();
        SQLiteStatement sQLiteStatementCompileStatement = is3Var.a.compileStatement(str);
        sQLiteStatementCompileStatement.getClass();
        this.d = new ps3(sQLiteStatementCompileStatement);
    }

    @Override // defpackage.nw6
    public final void C(int i, String str) {
        str.getClass();
        a();
        this.d.p(i, str);
    }

    @Override // defpackage.nw6
    public final String R(int i) {
        a();
        ly8.P(21, "no row");
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.d.close();
        this.c = true;
    }

    @Override // defpackage.nw6
    public final void e(int i, long j) {
        a();
        this.d.e(i, j);
    }

    @Override // defpackage.nw6
    public final void f(int i) {
        a();
        this.d.f(i);
    }

    @Override // defpackage.nw6
    public final int getColumnCount() {
        a();
        return 0;
    }

    @Override // defpackage.nw6
    public final String getColumnName(int i) {
        a();
        ly8.P(21, "no row");
        throw null;
    }

    @Override // defpackage.nw6
    public final long getLong(int i) {
        a();
        ly8.P(21, "no row");
        throw null;
    }

    @Override // defpackage.us7, defpackage.nw6
    public final void i() {
        a();
        this.d.i();
    }

    @Override // defpackage.nw6
    public final boolean i0() {
        a();
        this.d.b.execute();
        return false;
    }

    @Override // defpackage.nw6
    public final boolean isNull(int i) {
        a();
        ly8.P(21, "no row");
        throw null;
    }
}
