package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q95 implements ra2 {
    public static final String[] c = {"_data"};
    public final Context a;
    public final Uri b;

    public q95(Context context, Uri uri) {
        this.a = context;
        this.b = uri;
    }

    @Override // defpackage.ra2
    public final Class a() {
        return File.class;
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        Cursor cursorQuery = this.a.getContentResolver().query(this.b, c, null, null, null);
        String string = null;
        if (cursorQuery != null) {
            try {
                string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                cursorQuery.close();
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        if (!TextUtils.isEmpty(string)) {
            qa2Var.f(new File(string));
            return;
        }
        qa2Var.b(new FileNotFoundException("Failed to find file path for: " + this.b));
    }

    @Override // defpackage.ra2
    public final int e() {
        return 1;
    }

    @Override // defpackage.ra2
    public final void c() {
    }

    @Override // defpackage.ra2
    public final void cancel() {
    }
}
