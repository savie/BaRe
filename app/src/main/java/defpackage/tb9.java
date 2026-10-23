package defpackage;

import android.content.ContentResolver;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tb9 {
    public static final k50 g = new k50(0);
    public static final String[] h = {"key", "value"};
    public final ContentResolver a;
    public final Uri b;
    public final sb9 c;
    public final Object d;
    public volatile Map e;
    public final ArrayList f;

    public tb9(ContentResolver contentResolver, Uri uri) {
        sb9 sb9Var = new sb9(this);
        this.c = sb9Var;
        this.d = new Object();
        this.f = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.a = contentResolver;
        this.b = uri;
        contentResolver.registerContentObserver(uri, false, sb9Var);
    }

    public static synchronized void b() {
        try {
            for (tb9 tb9Var : (i50) g.values()) {
                tb9Var.a.unregisterContentObserver(tb9Var.c);
            }
            g.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.StrictMode$ThreadPolicy, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final Object a(String str) {
        Map map;
        ?? r0;
        Object objH;
        Map map2 = this.e;
        ?? r1 = map2;
        if (map2 == null) {
            synchronized (this.d) {
                ?? r2 = this.e;
                if (r2 != 0) {
                    r0 = r2;
                } else {
                    try {
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            ty3 ty3Var = new ty3(this);
                            try {
                                objH = ty3Var.h();
                            } catch (SecurityException unused) {
                                long jClearCallingIdentity = Binder.clearCallingIdentity();
                                try {
                                    objH = ty3Var.h();
                                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                                } catch (Throwable th) {
                                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                                    throw th;
                                }
                            }
                            map = (Map) objH;
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        } catch (SQLiteException | IllegalStateException | SecurityException unused2) {
                            Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            map = null;
                        }
                        this.e = map;
                        r0 = map;
                    } catch (Throwable th2) {
                        StrictMode.setThreadPolicy(r2);
                        throw th2;
                    }
                }
            }
            r1 = r0;
        }
        if (r1 == 0) {
            r1 = Collections.EMPTY_MAP;
        }
        return (String) r1.get(str);
    }
}
