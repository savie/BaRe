package defpackage;

import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class r92 {
    public static ArrayList a(Uri uri, Class cls) {
        uri.getClass();
        ArrayList arrayList = new ArrayList();
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            Cursor cursorQuery = SwiftApp.Companion.c().getContentResolver().query(uri, null, null, null, null);
            try {
                arrayList.addAll(new xf5().b(cursorQuery, cls));
                rs9.c(cursorQuery, null);
                return arrayList;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(cursorQuery, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            Log.e("DaoHelper", "DaoHelper error", e);
            vr6.e$default(vr6.INSTANCE, "DaoHelper", String.valueOf(e), null, 4, null);
            return arrayList;
        }
    }
}
