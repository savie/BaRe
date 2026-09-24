package defpackage;

import android.net.Uri;
import androidx.core.content.FileProvider;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f93 {
    public static Uri a(q63 q63Var) {
        q63Var.getClass();
        return b(new File(q63Var.v()));
    }

    public static Uri b(File file) {
        SwiftApp.Companion companion = SwiftApp.d;
        e93 e93VarC = FileProvider.c(0, SwiftApp.Companion.c(), "org.swiftapps.swiftbackup.fileprovider");
        try {
            String canonicalPath = file.getCanonicalPath();
            Map.Entry entry = null;
            for (Map.Entry entry2 : e93VarC.b.entrySet()) {
                String path = ((File) entry2.getValue()).getPath();
                if (FileProvider.a(canonicalPath).startsWith(FileProvider.a(path).concat("/")) && (entry == null || path.length() > ((File) entry.getValue()).getPath().length())) {
                    entry = entry2;
                }
            }
            if (entry == null) {
                c6.f(xs1.j("Failed to find configured root that contains ", canonicalPath));
                return null;
            }
            String path2 = ((File) entry.getValue()).getPath();
            Uri uriBuild = new Uri.Builder().scheme("content").authority(e93VarC.a).encodedPath(Uri.encode((String) entry.getKey()) + '/' + Uri.encode(path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), "/")).build();
            uriBuild.getClass();
            return uriBuild;
        } catch (IOException unused) {
            g84.k(file, "Failed to resolve canonical path for ");
            return null;
        }
    }
}
