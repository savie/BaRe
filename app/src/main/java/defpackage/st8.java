package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class st8 implements dz7 {
    public qt8 a;

    @Override // defpackage.dz7
    public final String b() {
        int i;
        StringBuilder sb = new StringBuilder();
        qt8 qt8Var = this.a;
        if (qt8Var != null) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            int i2 = rt8.a[qt8Var.ordinal()];
            if (i2 == 1) {
                i = R.string.root_access_or_shizuku_needed;
            } else if (i2 == 2) {
                i = R.string.wifi_device_read_failed;
            } else {
                if (i2 != 3 && i2 != 4) {
                    q.j();
                    return null;
                }
                i = R.string.unknown_error_occured;
            }
            sb.append(contextC.getString(i));
        }
        return sb.toString();
    }

    @Override // defpackage.dz7
    public final boolean c() {
        return this.a != null || "".length() > 0;
    }

    @Override // defpackage.dz7
    public final boolean l() {
        return false;
    }
}
