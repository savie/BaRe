package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jc6 implements ra2 {
    public static final String[] r = {"_data"};
    public final Context a;
    public final ch5 b;
    public final ch5 c;
    public final Uri d;
    public final int e;
    public final int f;
    public final ou5 k;
    public final Class n;
    public volatile boolean p;
    public volatile ra2 q;

    public jc6(Context context, ch5 ch5Var, ch5 ch5Var2, Uri uri, int i, int i2, ou5 ou5Var, Class cls) {
        this.a = context.getApplicationContext();
        this.b = ch5Var;
        this.c = ch5Var2;
        this.d = uri;
        this.e = i;
        this.f = i2;
        this.k = ou5Var;
        this.n = cls;
    }

    @Override // defpackage.ra2
    public final Class a() {
        return this.n;
    }

    public final ra2 b() throws Throwable {
        bh5 bh5VarB;
        Throwable th;
        boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
        Cursor cursor = null;
        Context context = this.a;
        ou5 ou5Var = this.k;
        int i = this.f;
        int i2 = this.e;
        if (zIsExternalStorageLegacy) {
            Uri uri = this.d;
            try {
                Cursor cursorQuery = context.getContentResolver().query(uri, r, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            cursorQuery.close();
                            bh5VarB = this.b.b(file, i2, i, ou5Var);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursorQuery;
                        if (cursor == null) {
                            throw th;
                        }
                        cursor.close();
                        throw th;
                    }
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            Uri requireOriginal = this.d;
            boolean zQ = od2.q(requireOriginal);
            ch5 ch5Var = this.c;
            if (zQ && requireOriginal.getPathSegments().contains("picker")) {
                bh5VarB = ch5Var.b(requireOriginal, i2, i, ou5Var);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                }
                bh5VarB = ch5Var.b(requireOriginal, i2, i, ou5Var);
            }
        }
        if (bh5VarB != null) {
            return bh5VarB.c;
        }
        return null;
    }

    @Override // defpackage.ra2
    public final void c() {
        ra2 ra2Var = this.q;
        if (ra2Var != null) {
            ra2Var.c();
        }
    }

    @Override // defpackage.ra2
    public final void cancel() {
        this.p = true;
        ra2 ra2Var = this.q;
        if (ra2Var != null) {
            ra2Var.cancel();
        }
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) throws Throwable {
        try {
            ra2 ra2VarB = b();
            if (ra2VarB == null) {
                qa2Var.b(new IllegalArgumentException("Failed to build fetcher for: " + this.d));
            } else {
                this.q = ra2VarB;
                if (this.p) {
                    cancel();
                } else {
                    ra2VarB.d(e66Var, qa2Var);
                }
            }
        } catch (FileNotFoundException e) {
            qa2Var.b(e);
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        return 1;
    }
}
