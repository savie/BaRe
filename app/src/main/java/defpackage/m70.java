package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m70 {
    public static final gv7 a = new gv7(new b7(6));
    public static g70 b;

    public static String a(String str, o93 o93Var) {
        int i = k70.a[o93Var.ordinal()];
        if (i == 1) {
            return zv1.r(str);
        }
        if (i != 2 && i != 3) {
            q.j();
            return null;
        }
        if (!uq7.V(str, "/storage/emulated/", false) || uq7.V(str, "/storage/emulated/0/", false)) {
            return str;
        }
        String path = new File(uq7.T(str, "/storage/emulated/", "/data/media/")).getPath();
        path.getClass();
        return path;
    }
}
