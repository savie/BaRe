package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.database.MDatabase;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y35 {
    public static MDatabase a() {
        if (MDatabase.k == null) {
            synchronized (MDatabase.class) {
                try {
                    if (MDatabase.k == null) {
                        SwiftApp.Companion companion = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        if (nq7.j0("swiftbackup-db")) {
                            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
                        }
                        bo6 bo6Var = new bo6(contextC);
                        bo6Var.n = false;
                        bo6Var.o = true;
                        bo6Var.p = true;
                        MDatabase.k = (MDatabase) bo6Var.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        MDatabase mDatabase = MDatabase.k;
        mDatabase.getClass();
        return mDatabase;
    }
}
