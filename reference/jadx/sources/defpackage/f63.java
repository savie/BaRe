package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f63 {
    public final Field a;

    public f63(Field field) {
        this.a = field;
    }

    public abstract String[] a();

    public abstract String[] b();

    public abstract void c(ContentValues contentValues, Object obj);

    public abstract void d(Cursor cursor, Object obj);
}
