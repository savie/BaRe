package defpackage;

import android.content.SharedPreferences;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cn5 {
    public final /* synthetic */ ih6 a;
    public final /* synthetic */ f80 b;
    public final /* synthetic */ CountDownLatch c;

    public /* synthetic */ cn5(ih6 ih6Var, f80 f80Var, CountDownLatch countDownLatch) {
        this.a = ih6Var;
        this.b = f80Var;
        this.c = countDownLatch;
    }

    public final void a(String str, String str2, z80 z80Var) {
        boolean z = false;
        if (z80Var != null) {
            vr6.e$default(vr6.INSTANCE, "NoGmsClient", "refreshToken: ".concat(io4.b(z80Var)), null, 4, null);
        } else {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.i$default(vr6Var, "NoGmsClient", "Refresh token successful", null, 4, null);
            boolean z2 = !(str == null || nq7.j0(str));
            z = str2 == null || nq7.j0(str2);
            StringBuilder sb = new StringBuilder("accessToken=");
            sb.append(z2);
            sb.append(", idToken=");
            sb.append(!z);
            vr6.d$default(vr6Var, "NoGmsClient", sb.toString(), null, 4, null);
            hz3.b(this.b);
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.putString("nogms_access_token", str).apply();
            z = true;
        }
        this.a.a = z;
        this.c.countDown();
    }
}
