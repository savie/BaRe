package defpackage;

import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class jj3 {
    public static final DateTimeFormatter a;

    static {
        DateTimeFormatter dateTimeFormatterWithZone = DateTimeFormatter.ofPattern("yyyyMMdd-HHmmss-SSS").withZone(ZoneId.systemDefault());
        dateTimeFormatterWithZone.getClass();
        a = dateTimeFormatterWithZone;
    }

    public static String a(q63 q63Var) {
        q63Var.getClass();
        FolderBackup$IncrementalBackup.Companion.getClass();
        if ((!uq7.V(q63Var.p(), "folder-inc-", false) || !uq7.O(q63Var.p(), "fld", false)) && !ij3.a(q63Var)) {
            g84.f(xs1.i(q63Var, "Invalid filename for parsing timestamp: "));
            return null;
        }
        String strQ = q63Var.q();
        String strZ0 = nq7.z0(strQ, "folder-inc-", strQ);
        if (strZ0.length() != 0) {
            return strZ0;
        }
        g84.f(dj7.l("Invalid timestamp in filename: ", q63Var.p(), ". timestamp: ", strZ0));
        return null;
    }
}
