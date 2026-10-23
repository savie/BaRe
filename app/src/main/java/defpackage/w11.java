package defpackage;

import android.text.TextUtils;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class w11 implements dz7 {
    public String a = "";
    public zf8 b;

    public final void a(String str) {
        SwiftApp.Companion companion = SwiftApp.d;
        this.a = dj7.k(dj7.g(R.string.local_backup_failed), ": ", str);
    }

    @Override // defpackage.dz7
    public final String b() {
        StringBuilder sb = new StringBuilder();
        zf8 zf8Var = this.b;
        if (zf8Var != null && zf8Var.c()) {
            zf8 zf8Var2 = this.b;
            zf8Var2.getClass();
            sb.append(zf8Var2.b());
        }
        if (!TextUtils.isEmpty(this.a)) {
            sb.append(this.a);
        }
        return sb.toString();
    }

    @Override // defpackage.dz7
    public final boolean c() {
        if (!TextUtils.isEmpty(this.a)) {
            return true;
        }
        zf8 zf8Var = this.b;
        return zf8Var != null && zf8Var.c();
    }

    @Override // defpackage.dz7
    public final boolean l() {
        return false;
    }
}
