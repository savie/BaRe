package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cu2 extends f63 {
    public final uh6 b;

    public cu2(Field field, uh6 uh6Var) {
        super(field);
        this.b = uh6Var;
    }

    @Override // defpackage.f63
    public final String[] a() {
        return (String[]) this.b.d.clone();
    }

    @Override // defpackage.f63
    public final String[] b() {
        return (String[]) this.b.e.clone();
    }

    @Override // defpackage.f63
    public final void c(ContentValues contentValues, Object obj) {
        this.b.c(contentValues, obj);
    }

    @Override // defpackage.f63
    public final void d(Cursor cursor, Object obj) throws IllegalAccessException {
        uh6 uh6Var = this.b;
        Object objA = uh6Var.a();
        uh6Var.b(cursor, objA);
        this.a.set(obj, objA);
    }
}
