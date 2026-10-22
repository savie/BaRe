package defpackage;

import android.content.ContentValues;
import android.database.Cursor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mu5 implements wb8 {
    public final wb8 a;

    public mu5(wb8 wb8Var) {
        this.a = wb8Var;
    }

    @Override // defpackage.wb8
    public final Object a(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return null;
        }
        return this.a.a(cursor, str);
    }

    @Override // defpackage.wb8
    public final void b(ContentValues contentValues, String str, Object obj) {
        if (obj != null) {
            this.a.b(contentValues, str, obj);
        } else {
            contentValues.putNull(str);
        }
    }
}
