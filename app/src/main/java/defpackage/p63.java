package defpackage;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p63 {
    public final gv7 a = new gv7(new b7(this, 16));
    public final LinkedHashSet b = new LinkedHashSet();
    public final LinkedHashSet c = new LinkedHashSet();

    public static boolean c(File file) {
        boolean Z;
        if (Build.VERSION.SDK_INT >= 30) {
            String path = file.getPath();
            path.getClass();
            if (nq7.Z(path, "/Android/data/", false)) {
                String path2 = file.getPath();
                path2.getClass();
                Z = nq7.Z(path2, "/Android/data/" + f13.d().getPackageName(), false);
            } else {
                String path3 = file.getPath();
                path3.getClass();
                if (nq7.Z(path3, "/Android/obb/", false)) {
                    String path4 = file.getPath();
                    path4.getClass();
                    Z = nq7.Z(path4, "/Android/obb/" + f13.d().getPackageName(), false);
                }
            }
            return !Z;
        }
        return false;
    }

    public final void a(File file) {
        if (file == null || d(file) || !file.isDirectory() || c(file)) {
            return;
        }
        Log.d("JAM", "addReadableDir: " + file);
        this.c.add(file);
    }

    public final void b(File file) {
        if (file == null || e(file) || !file.isDirectory() || c(file)) {
            return;
        }
        Log.d("JAM", "addWritableDir: " + file);
        this.b.add(file);
    }

    public final boolean d(File file) {
        if (!file.isDirectory()) {
            file = file.getParentFile();
        }
        if (file == null) {
            return false;
        }
        List list = (List) this.a.getValue();
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (nc3.V(file, (File) it.next())) {
                    return true;
                }
            }
        }
        return this.b.contains(file) || this.c.contains(file);
    }

    public final boolean e(File file) {
        if (!file.isDirectory()) {
            file = file.getParentFile();
        }
        if (file == null) {
            return false;
        }
        List list = (List) this.a.getValue();
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (nc3.V(file, (File) it.next())) {
                    return true;
                }
            }
        }
        return this.b.contains(file);
    }
}
