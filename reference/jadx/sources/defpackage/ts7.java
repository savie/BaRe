package defpackage;

import android.database.sqlite.SQLiteDatabase;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ts7 extends us7 {
    public final ps7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ts7(is3 is3Var, String str, ps7 ps7Var) {
        super(is3Var, str);
        is3Var.getClass();
        str.getClass();
        this.d = ps7Var;
    }

    @Override // defpackage.nw6
    public final void C(int i, String str) {
        str.getClass();
        a();
        ly8.P(25, "column index out of range");
        throw null;
    }

    @Override // defpackage.nw6
    public final String R(int i) {
        a();
        ly8.P(21, "no row");
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.c = true;
    }

    @Override // defpackage.nw6
    public final void e(int i, long j) {
        a();
        ly8.P(25, "column index out of range");
        throw null;
    }

    @Override // defpackage.nw6
    public final void f(int i) {
        a();
        ly8.P(25, "column index out of range");
        throw null;
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

    /* JADX WARN: Code duplicated, block: B:20:0x0058  */
    @Override // defpackage.nw6
    public final boolean i0() throws IllegalAccessException, InvocationTargetException {
        int iOrdinal = this.d.ordinal();
        is3 is3Var = this.a;
        if (iOrdinal == 0) {
            is3Var.a.setTransactionSuccessful();
            is3Var.b();
        } else if (iOrdinal == 1) {
            is3Var.b();
        } else if (iOrdinal == 2) {
            is3Var.a();
        } else if (iOrdinal == 3) {
            is3Var.a.beginTransactionNonExclusive();
        } else {
            if (iOrdinal != 4) {
                q.j();
                return false;
            }
            SQLiteDatabase sQLiteDatabase = is3Var.a;
            os4 os4Var = is3.d;
            if (((Method) os4Var.getValue()) != null) {
                os4 os4Var2 = is3.c;
                if (((Method) os4Var2.getValue()) != null) {
                    Method method = (Method) os4Var.getValue();
                    method.getClass();
                    Method method2 = (Method) os4Var2.getValue();
                    method2.getClass();
                    Object objInvoke = method2.invoke(sQLiteDatabase, null);
                    if (objInvoke != null) {
                        method.invoke(objInvoke, 0, null, 0, null);
                    } else {
                        l0.e("Required value was null.");
                    }
                } else {
                    is3Var.a();
                }
            } else {
                is3Var.a();
            }
        }
        return false;
    }

    @Override // defpackage.nw6
    public final boolean isNull(int i) {
        a();
        ly8.P(21, "no row");
        throw null;
    }
}
