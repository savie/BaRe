package defpackage;

import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum q05 {
    DEVICE,
    CLOUD;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final o05 Companion = new o05();

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ int getIconRes$default(q05 q05Var, boolean z, int i, Object obj) {
        if (obj != null) {
            g84.j("Super calls with default arguments not supported in this target, function: getIconRes");
            return 0;
        }
        if ((i & 1) != 0) {
            z = false;
        }
        return q05Var.getIconRes(z);
    }

    public final int getIconRes(boolean z) {
        if (z) {
            int i = p05.a[ordinal()];
            if (i == 1) {
                return R.drawable.ic_device;
            }
            if (i == 2) {
                return R.drawable.ic_cloud;
            }
            q.j();
            return 0;
        }
        int i2 = p05.a[ordinal()];
        if (i2 == 1) {
            return R.drawable.ic_device;
        }
        if (i2 == 2) {
            return R.drawable.ic_cloud;
        }
        q.j();
        return 0;
    }

    public final boolean isCheckedInExpansion(int i) {
        String str = fz5.j(i, "checked_location_") + this;
        boolean zIsDevice = isDevice();
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(str, zIsDevice);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return zIsDevice;
        }
    }

    public final boolean isCloud() {
        return this == CLOUD;
    }

    public final boolean isDevice() {
        return this == DEVICE;
    }

    public final void setCheckedInExpansion(int i, boolean z) {
        String str = fz5.j(i, "checked_location_") + this;
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putBoolean(str, z).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public final String toDisplayString() {
        int i = p05.a[ordinal()];
        if (i == 1) {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.device);
        }
        if (i == 2) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            return dj7.g(R.string.cloud);
        }
        q.j();
        return null;
    }
}
