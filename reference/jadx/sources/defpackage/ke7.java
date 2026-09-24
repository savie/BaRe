package defpackage;

import android.content.ComponentName;
import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ke7 {
    public final ComponentName a;
    public int b = 1;
    public String c;
    public String d;

    public ke7(ComponentName componentName) {
        this.a = componentName;
    }

    public static Bundle a(ke7 ke7Var) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("shizuku:user-service-arg-component", ke7Var.a);
        bundle.putBoolean("shizuku:user-service-arg-debuggable", false);
        bundle.putInt("shizuku:user-service-arg-version-code", ke7Var.b);
        bundle.putBoolean("shizuku:user-service-arg-daemon", true);
        bundle.putBoolean("shizuku:user-service-arg-use-32-bit-app-process", false);
        String str = ke7Var.c;
        Objects.requireNonNull(str, "process name suffix must not be null");
        bundle.putString("shizuku:user-service-arg-process-name", str);
        String str2 = ke7Var.d;
        if (str2 != null) {
            bundle.putString("shizuku:user-service-arg-tag", str2);
        }
        return bundle;
    }
}
