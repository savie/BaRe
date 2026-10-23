package defpackage;

import android.content.SharedPreferences;
import android.os.Looper;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class q02 extends cu3 implements bt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q02(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        switch (this.a) {
            case 0:
                ((r02) this.receiver).getClass();
                return Boolean.valueOf(!Looper.getMainLooper().isCurrentThread());
            case 1:
                fu3 fu3Var = (fu3) this.receiver;
                fu3Var.getClass();
                if (!V.INSTANCE.getG()) {
                    lz3 lz3Var = lz3.d;
                    SwiftApp.Companion companion = SwiftApp.d;
                    if (lz3Var.c(SwiftApp.Companion.c(), mz3.a) == 0) {
                        return fu3Var.i;
                    }
                }
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences != null) {
                        return sharedPreferences.getString("nogms_access_token", null);
                    }
                    pe4.F("prefs");
                    throw null;
                } catch (ClassCastException unused) {
                    return null;
                }
            default:
                ((IntroActivity) this.receiver).finishAffinity();
                return be8.a;
        }
    }
}
