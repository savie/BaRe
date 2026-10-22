package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ss7 extends us7 {
    public int[] d;
    public long[] e;
    public double[] f;
    public String[] k;
    public byte[][] n;
    public Cursor p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ss7(is3 is3Var, String str) {
        super(is3Var, str);
        is3Var.getClass();
        str.getClass();
        this.d = new int[0];
        this.e = new long[0];
        this.f = new double[0];
        this.k = new String[0];
        this.n = new byte[0][];
    }

    public static void h(Cursor cursor, int i) {
        if (i < 0 || i >= cursor.getColumnCount()) {
            ly8.P(25, "column index out of range");
            throw null;
        }
    }

    @Override // defpackage.nw6
    public final void C(int i, String str) {
        str.getClass();
        a();
        b(3, i);
        this.d[i] = 3;
        this.k[i] = str;
    }

    @Override // defpackage.nw6
    public final String R(int i) {
        a();
        Cursor cursor = this.p;
        if (cursor == null) {
            ly8.P(21, "no row");
            throw null;
        }
        h(cursor, i);
        String string = cursor.getString(i);
        string.getClass();
        return string;
    }

    public final void b(int i, int i2) {
        int i3 = i2 + 1;
        int[] iArr = this.d;
        if (iArr.length < i3) {
            this.d = Arrays.copyOf(iArr, i3);
        }
        if (i == 1) {
            long[] jArr = this.e;
            if (jArr.length < i3) {
                this.e = Arrays.copyOf(jArr, i3);
                return;
            }
            return;
        }
        if (i == 2) {
            double[] dArr = this.f;
            if (dArr.length < i3) {
                this.f = Arrays.copyOf(dArr, i3);
                return;
            }
            return;
        }
        if (i == 3) {
            String[] strArr = this.k;
            if (strArr.length < i3) {
                this.k = (String[]) Arrays.copyOf(strArr, i3);
                return;
            }
            return;
        }
        if (i != 4) {
            return;
        }
        byte[][] bArr = this.n;
        if (bArr.length < i3) {
            this.n = (byte[][]) Arrays.copyOf(bArr, i3);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (!this.c) {
            i();
            reset();
        }
        this.c = true;
    }

    @Override // defpackage.nw6
    public final void e(int i, long j) {
        a();
        b(1, i);
        this.d[i] = 1;
        this.e[i] = j;
    }

    @Override // defpackage.nw6
    public final void f(int i) {
        a();
        b(5, i);
        this.d[i] = 5;
    }

    public final void g() {
        if (this.p == null) {
            km8 km8Var = new km8(this);
            is3 is3Var = this.a;
            is3Var.getClass();
            final gs3 gs3Var = new gs3(km8Var);
            Cursor cursorRawQueryWithFactory = is3Var.a.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: hs3
                @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
                public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                    return (Cursor) gs3Var.d(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
                }
            }, ((ss7) km8Var.a).b, is3.b, null);
            cursorRawQueryWithFactory.getClass();
            this.p = cursorRawQueryWithFactory;
        }
    }

    @Override // defpackage.nw6
    public final int getColumnCount() {
        a();
        g();
        Cursor cursor = this.p;
        if (cursor != null) {
            return cursor.getColumnCount();
        }
        return 0;
    }

    @Override // defpackage.nw6
    public final String getColumnName(int i) {
        a();
        g();
        Cursor cursor = this.p;
        if (cursor == null) {
            l0.e("Required value was null.");
            return null;
        }
        h(cursor, i);
        String columnName = cursor.getColumnName(i);
        columnName.getClass();
        return columnName;
    }

    @Override // defpackage.nw6
    public final long getLong(int i) {
        a();
        Cursor cursor = this.p;
        if (cursor != null) {
            h(cursor, i);
            return cursor.getLong(i);
        }
        ly8.P(21, "no row");
        throw null;
    }

    @Override // defpackage.us7, defpackage.nw6
    public final void i() {
        a();
        this.d = new int[0];
        this.e = new long[0];
        this.f = new double[0];
        this.k = new String[0];
        this.n = new byte[0][];
    }

    @Override // defpackage.nw6
    public final boolean i0() {
        a();
        g();
        Cursor cursor = this.p;
        if (cursor != null) {
            return cursor.moveToNext();
        }
        l0.e("Required value was null.");
        return false;
    }

    @Override // defpackage.nw6
    public final boolean isNull(int i) {
        a();
        Cursor cursor = this.p;
        if (cursor != null) {
            h(cursor, i);
            return cursor.isNull(i);
        }
        ly8.P(21, "no row");
        throw null;
    }

    @Override // defpackage.us7, defpackage.nw6
    public final void reset() {
        a();
        Cursor cursor = this.p;
        if (cursor != null) {
            cursor.close();
        }
        this.p = null;
    }
}
