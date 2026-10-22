package defpackage;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ms3 extends SQLiteOpenHelper {
    public static final /* synthetic */ int k = 0;
    public final Context a;
    public final tr9 b;
    public final kh5 c;
    public boolean d;
    public final o76 e;
    public boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ms3(Context context, String str, final tr9 tr9Var, final kh5 kh5Var) {
        String string;
        super(context, str, null, kh5Var.a, new DatabaseErrorHandler() { // from class: js3
            @Override // android.database.DatabaseErrorHandler
            public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                int i = ms3.k;
                sQLiteDatabase.getClass();
                tr9 tr9Var2 = tr9Var;
                is3 is3Var = (is3) tr9Var2.b;
                if (is3Var == null || !is3Var.a.equals(sQLiteDatabase)) {
                    is3Var = new is3(sQLiteDatabase);
                    tr9Var2.b = is3Var;
                }
                SQLiteDatabase sQLiteDatabase2 = is3Var.a;
                kh5Var.getClass();
                Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + is3Var + ".path");
                if (!sQLiteDatabase2.isOpen()) {
                    String path = sQLiteDatabase2.getPath();
                    if (path != null) {
                        kh5.a(path);
                        return;
                    }
                    return;
                }
                List<Pair<String, String>> attachedDbs = null;
                try {
                    try {
                        attachedDbs = sQLiteDatabase2.getAttachedDbs();
                    } finally {
                        if (attachedDbs != null) {
                            Iterator<T> it = attachedDbs.iterator();
                            while (it.hasNext()) {
                                Object obj = ((Pair) it.next()).second;
                                obj.getClass();
                                kh5.a((String) obj);
                            }
                        } else {
                            String path2 = sQLiteDatabase2.getPath();
                            if (path2 != null) {
                                kh5.a(path2);
                            }
                        }
                    }
                } catch (SQLiteException unused) {
                }
                try {
                    is3Var.close();
                } catch (IOException unused2) {
                }
                if (attachedDbs != null) {
                    return;
                }
            }
        });
        context.getClass();
        kh5Var.getClass();
        this.a = context;
        this.b = tr9Var;
        this.c = kh5Var;
        if (str == null) {
            string = UUID.randomUUID().toString();
            string.getClass();
        } else {
            string = str;
        }
        this.e = new o76(string, context.getCacheDir(), false);
    }

    public final is3 a(boolean z) {
        o76 o76Var = this.e;
        try {
            o76Var.a((this.f || getDatabaseName() == null) ? false : true);
            this.d = false;
            SQLiteDatabase sQLiteDatabaseG = g(z);
            if (!this.d) {
                return b(sQLiteDatabaseG);
            }
            close();
            return a(z);
        } finally {
            o76Var.b();
        }
    }

    public final is3 b(SQLiteDatabase sQLiteDatabase) {
        tr9 tr9Var = this.b;
        tr9Var.getClass();
        is3 is3Var = (is3) tr9Var.b;
        if (is3Var != null && is3Var.a.equals(sQLiteDatabase)) {
            return is3Var;
        }
        is3 is3Var2 = new is3(sQLiteDatabase);
        tr9Var.b = is3Var2;
        return is3Var2;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public final void close() {
        o76 o76Var = this.e;
        try {
            o76Var.a(o76Var.a);
            super.close();
            this.b.b = null;
            this.f = false;
        } finally {
            o76Var.b();
        }
    }

    public final SQLiteDatabase g(boolean z) throws Throwable {
        SQLiteDatabase readableDatabase;
        File parentFile;
        String databaseName = getDatabaseName();
        boolean z2 = this.f;
        if (databaseName != null && !z2 && (parentFile = this.a.getDatabasePath(databaseName).getParentFile()) != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
            }
        }
        try {
            if (z) {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                writableDatabase.getClass();
                return writableDatabase;
            }
            SQLiteDatabase readableDatabase2 = getReadableDatabase();
            readableDatabase2.getClass();
            return readableDatabase2;
        } catch (Throwable unused) {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused2) {
            }
            try {
                if (z) {
                    readableDatabase = getWritableDatabase();
                    readableDatabase.getClass();
                } else {
                    readableDatabase = getReadableDatabase();
                    readableDatabase.getClass();
                }
                return readableDatabase;
            } catch (Throwable th) {
                th = th;
                if (th instanceof ks3) {
                    ks3 ks3Var = (ks3) th;
                    int iOrdinal = ks3Var.a.ordinal();
                    th = ks3Var.b;
                    if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) {
                        throw th;
                    }
                    if (iOrdinal != 4) {
                        q.j();
                        return null;
                    }
                    if (!(th instanceof SQLiteException)) {
                        throw th;
                    }
                }
                throw th;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        boolean z = this.d;
        kh5 kh5Var = this.c;
        if (!z && kh5Var.a != sQLiteDatabase.getVersion()) {
            sQLiteDatabase.setMaxSqlCacheSize(1);
        }
        try {
            b(sQLiteDatabase);
            kh5Var.getClass();
        } catch (Throwable th) {
            throw new ks3(ls3.a, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        try {
            ((mi2) this.c.b).j(new ms7(b(sQLiteDatabase)));
        } catch (Throwable th) {
            throw new ks3(ls3.b, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.getClass();
        this.d = true;
        try {
            this.c.b(b(sQLiteDatabase), i, i2);
        } catch (Throwable th) {
            throw new ks3(ls3.d, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        if (!this.d) {
            try {
                kh5 kh5Var = this.c;
                is3 is3VarB = b(sQLiteDatabase);
                mi2 mi2Var = (mi2) kh5Var.b;
                mi2Var.l(new ms7(is3VarB));
                mi2Var.h = is3VarB;
            } catch (Throwable th) {
                throw new ks3(ls3.e, th);
            }
        }
        this.f = true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.getClass();
        this.d = true;
        try {
            this.c.b(b(sQLiteDatabase), i, i2);
        } catch (Throwable th) {
            throw new ks3(ls3.c, th);
        }
    }
}
