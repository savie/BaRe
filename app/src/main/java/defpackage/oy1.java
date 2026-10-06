package defpackage;

import android.util.Log;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oy1 {
    public final ka2 a;
    public final ny1 b;

    public oy1(ka2 ka2Var, ca3 ca3Var) {
        this.a = ka2Var;
        this.b = new ny1(ca3Var);
    }

    public final String a(String str) {
        String strSubstring;
        ny1 ny1Var = this.b;
        synchronized (ny1Var) {
            if (Objects.equals((String) ny1Var.c, str)) {
                return (String) ny1Var.d;
            }
            ca3 ca3Var = (ca3) ny1Var.b;
            ly1 ly1Var = ny1.e;
            File file = new File((File) ca3Var.d, str);
            file.mkdirs();
            List listL = ca3.l(file.listFiles(ly1Var));
            if (listL.isEmpty()) {
                strSubstring = null;
                Log.w("FirebaseCrashlytics", "Unable to read App Quality Sessions session id.", null);
            } else {
                strSubstring = ((File) Collections.min(listL, ny1.f)).getName().substring(4);
            }
            return strSubstring;
        }
    }

    public final void b(String str) {
        ny1 ny1Var = this.b;
        synchronized (ny1Var) {
            if (!Objects.equals((String) ny1Var.c, str)) {
                ny1.f((ca3) ny1Var.b, str, (String) ny1Var.d);
                ny1Var.c = str;
            }
        }
    }
}
