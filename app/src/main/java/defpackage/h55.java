package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h55 {
    /* JADX WARN: Code duplicated, block: B:27:0x00a6  */
    public static String a() {
        String string;
        try {
            jr7 jr7Var = new jr7((String) g42.N.getValue());
            if (!jr7Var.b("[ -e @@ ]")) {
                return null;
            }
            SwiftApp.Companion companion = SwiftApp.d;
            File cacheDir = SwiftApp.Companion.c().getCacheDir();
            cacheDir.getClass();
            File fileU = nc3.U(cacheDir, "magisk.tmp");
            if (fileU.exists() && !fileU.delete()) {
                throw new IllegalArgumentException(("Unable to delete existing db file at " + fileU).toString());
            }
            InputStream inputStreamX = xx3.x(jr7Var);
            inputStreamX.getClass();
            FileOutputStream fileOutputStream = new FileOutputStream(fileU);
            try {
                try {
                    cy0.j(inputStreamX, fileOutputStream, 262144);
                    fileOutputStream.close();
                    inputStreamX.close();
                    if (!fileU.exists()) {
                        throw new IllegalArgumentException("Db fetch failed!");
                    }
                    SQLiteDatabase sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileU.getPath(), null, 0);
                    try {
                        Cursor cursorQuery = sQLiteDatabaseOpenDatabase.query("strings", new String[]{"key", "value"}, "key=?", new String[]{"requester"}, null, null, null);
                        cursorQuery.getClass();
                        try {
                            if (cursorQuery.moveToFirst()) {
                                int columnIndex = cursorQuery.getColumnIndex("value");
                                if (cursorQuery.isNull(columnIndex)) {
                                    string = null;
                                } else {
                                    string = cursorQuery.getString(columnIndex);
                                }
                            } else {
                                string = null;
                            }
                            cursorQuery.close();
                            sQLiteDatabaseOpenDatabase.close();
                            f13.b(fileU);
                            f13.b(new File(fileU.getPath() + "-journal"));
                            vr6.d$default(vr6.INSTANCE, "MPD", "Magisk package found = " + string, null, 4, null);
                            return string;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                rs9.c(cursorQuery, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            rs9.c(sQLiteDatabaseOpenDatabase, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        rs9.c(inputStreamX, th5);
                        throw th6;
                    }
                }
            } catch (Throwable th7) {
                try {
                    throw th7;
                } catch (Throwable th8) {
                    rs9.c(fileOutputStream, th7);
                    throw th8;
                }
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "MPD", io4.b(e), null, 4, null);
            return null;
        }
    }
}
