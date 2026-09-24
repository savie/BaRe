package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class am1 extends f63 {
    public static final String[] g = new String[0];
    public final String b;
    public final String[] c;
    public final wb8 d;
    public final boolean e;
    public final boolean f;

    public am1(Field field, wb8 wb8Var) {
        super(field);
        this.d = wb8Var;
        zl1 zl1Var = (zl1) field.getAnnotation(zl1.class);
        String strValue = zl1Var.value();
        this.b = strValue;
        this.c = new String[]{strValue};
        this.e = zl1Var.treatNullAsDefault();
        this.f = zl1Var.readonly();
    }

    @Override // defpackage.f63
    public final String[] a() {
        return this.c;
    }

    @Override // defpackage.f63
    public final String[] b() {
        return this.f ? g : this.c;
    }

    @Override // defpackage.f63
    public final void c(ContentValues contentValues, Object obj) {
        if (this.f) {
            return;
        }
        if (this.e && obj == null) {
            return;
        }
        this.d.b(contentValues, this.b, obj);
    }

    @Override // defpackage.f63
    public final void d(Cursor cursor, Object obj) throws IllegalAccessException {
        this.a.set(obj, this.d.a(cursor, this.b));
    }
}
