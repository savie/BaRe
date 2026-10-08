package defpackage;

import android.content.Context;
import java.io.Closeable;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f13 {
    public static final gv7 a = new gv7(new pu(7));

    public static final void a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable unused) {
        }
    }

    public static final boolean b(File file) {
        if (file == null) {
            return false;
        }
        try {
            return c(file, true);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x006c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x006d A[RETURN] */
    public static final boolean c(File file, boolean z) {
        File canonicalFile;
        if (file.isDirectory()) {
            File parentFile = file.getParentFile();
            File file2 = (parentFile == null || (canonicalFile = parentFile.getCanonicalFile()) == null) ? file : new File(canonicalFile, file.getName());
            if (pe4.d(file2.getCanonicalFile(), file2.getAbsoluteFile())) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    if (z || file.exists()) {
                        return false;
                    }
                    return true;
                }
                boolean z2 = true;
                for (File file3 : fileArrListFiles) {
                    file3.getClass();
                    z2 = c(file3, false) && z2;
                }
                if (file.delete() && z2) {
                    return true;
                }
                return false;
            }
        }
        if (file.delete() || !(z || file.exists())) {
            return true;
        }
        return false;
    }

    public static final Context d() {
        return (Context) a.getValue();
    }
}
