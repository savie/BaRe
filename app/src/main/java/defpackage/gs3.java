package defpackage;

import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteQuery;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gs3 implements st3 {
    public final /* synthetic */ km8 a;

    public /* synthetic */ gs3(km8 km8Var) {
        this.a = km8Var;
    }

    @Override // defpackage.st3
    public final Object d(Object obj, Object obj2, Object obj3, Object obj4) {
        SQLiteCursorDriver sQLiteCursorDriver = (SQLiteCursorDriver) obj2;
        String str = (String) obj3;
        SQLiteQuery sQLiteQuery = (SQLiteQuery) obj4;
        sQLiteQuery.getClass();
        os3 os3Var = new os3(sQLiteQuery);
        ss7 ss7Var = (ss7) this.a.a;
        int length = ss7Var.d.length;
        for (int i = 1; i < length; i++) {
            int i2 = ss7Var.d[i];
            if (i2 == 1) {
                os3Var.e(i, ss7Var.e[i]);
            } else if (i2 == 2) {
                os3Var.s(i, ss7Var.f[i]);
            } else if (i2 == 3) {
                String str2 = ss7Var.k[i];
                str2.getClass();
                os3Var.p(i, str2);
            } else if (i2 == 4) {
                byte[] bArr = ss7Var.n[i];
                bArr.getClass();
                os3Var.N(bArr, i);
            } else if (i2 == 5) {
                os3Var.f(i);
            }
        }
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
