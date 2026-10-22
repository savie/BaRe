package defpackage;

import android.database.sqlite.SQLiteProgram;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class os3 implements os7 {
    public final SQLiteProgram a;

    public os3(SQLiteProgram sQLiteProgram) {
        sQLiteProgram.getClass();
        this.a = sQLiteProgram;
    }

    @Override // defpackage.os7
    public final void N(byte[] bArr, int i) {
        this.a.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }

    @Override // defpackage.os7
    public final void e(int i, long j) {
        this.a.bindLong(i, j);
    }

    @Override // defpackage.os7
    public final void f(int i) {
        this.a.bindNull(i);
    }

    @Override // defpackage.os7
    public final void i() {
        this.a.clearBindings();
    }

    @Override // defpackage.os7
    public final void p(int i, String str) {
        str.getClass();
        this.a.bindString(i, str);
    }

    @Override // defpackage.os7
    public final void s(int i, double d) {
        this.a.bindDouble(i, d);
    }
}
