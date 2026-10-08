package defpackage;

import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class hs5 {
    public static final gv7 a = new gv7(new cl(12));
    public static final gv7 b = new gv7(new dl(16));
    public static final gv7 c;

    static {
        new gv7(new el(17));
        c = new gv7(new zk(14));
    }

    public static boolean a(String... strArr) {
        for (String str : strArr) {
            str.getClass();
            String[] strArr2 = {"getprop ".concat(str)};
            int i = Shell.UNKNOWN;
            String strFastCmd = ShellUtils.fastCmd(k55.j(), strArr2);
            strFastCmd.getClass();
            if (strFastCmd.length() > 0) {
                return true;
            }
        }
        return false;
    }
}
