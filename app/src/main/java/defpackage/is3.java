package defpackage;

import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class is3 implements Closeable {
    public static final String[] b = new String[0];
    public static final os4 c;
    public static final os4 d;
    public final SQLiteDatabase a;

    static {
        qm qmVar = new qm(12);
        ys4 ys4Var = ys4.b;
        c = jd4.x(ys4Var, qmVar);
        d = jd4.x(ys4Var, new pu(8));
    }

    public is3(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    public final void a() {
        this.a.beginTransaction();
    }

    public final boolean a0() {
        return this.a.inTransaction();
    }

    public final void b() {
        this.a.endTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }

    public final boolean isOpen() {
        return this.a.isOpen();
    }
}
