package defpackage;

import android.content.ContentValues;
import android.database.Cursor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yb8 implements wb8 {
    @Override // defpackage.wb8
    public final Object a(Cursor cursor, String str) {
        return Boolean.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str)) == 1);
    }

    @Override // defpackage.wb8
    public final void b(ContentValues contentValues, String str, Object obj) {
        contentValues.put(str, (Boolean) obj);
    }
}
