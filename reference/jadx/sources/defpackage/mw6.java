package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mw6 implements Closeable {
    public static final dw2 f = new dw2("proto");
    public final t57 a;
    public final ba1 b;
    public final ba1 c;
    public final ld0 d;
    public final ea6 e;

    public mw6(ba1 ba1Var, ba1 ba1Var2, ld0 ld0Var, t57 t57Var, ea6 ea6Var) {
        this.a = t57Var;
        this.b = ba1Var;
        this.c = ba1Var2;
        this.d = ld0Var;
        this.e = ea6Var;
    }

    public static Long b(SQLiteDatabase sQLiteDatabase, oe0 oe0Var) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(oe0Var.a, String.valueOf(h66.a(oe0Var.c))));
        byte[] bArr = oe0Var.b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    public static String n(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((ce0) it.next()).a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object q(Cursor cursor, kw6 kw6Var) {
        try {
            return kw6Var.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public final SQLiteDatabase a() {
        t57 t57Var = this.a;
        Objects.requireNonNull(t57Var);
        ba1 ba1Var = this.c;
        long jE = ba1Var.e();
        while (true) {
            try {
                return t57Var.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (ba1Var.e() >= ((long) this.d.c) + jE) {
                    throw new cv7("Timed out while trying to open db.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }

    public final Object g(kw6 kw6Var) {
        SQLiteDatabase sQLiteDatabaseA = a();
        sQLiteDatabaseA.beginTransaction();
        try {
            Object objApply = kw6Var.apply(sQLiteDatabaseA);
            sQLiteDatabaseA.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseA.endTransaction();
        }
    }

    public final ArrayList h(SQLiteDatabase sQLiteDatabase, oe0 oe0Var, int i) {
        ArrayList arrayList = new ArrayList();
        Long lB = b(sQLiteDatabase, oe0Var);
        if (lB == null) {
            return arrayList;
        }
        q(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline", "product_id", "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{lB.toString()}, null, null, null, String.valueOf(i)), new jw6(this, arrayList, oe0Var));
        return arrayList;
    }

    public final void j(long j, c15 c15Var, String str) {
        g(new iw6(str, j, c15Var));
    }

    public final Object m(dv7 dv7Var) {
        SQLiteDatabase sQLiteDatabaseA = a();
        ba1 ba1Var = this.c;
        long jE = ba1Var.e();
        while (true) {
            try {
                sQLiteDatabaseA.beginTransaction();
                try {
                    Object objG = dv7Var.g();
                    sQLiteDatabaseA.setTransactionSuccessful();
                    return objG;
                } finally {
                    sQLiteDatabaseA.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (ba1Var.e() >= ((long) this.d.c) + jE) {
                    throw new cv7("Timed out while trying to acquire the lock.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }
}
