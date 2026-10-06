package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum iu {
    APP,
    DATA,
    EXTDATA,
    EXPANSION,
    MEDIA;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final gu Companion = new gu();

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ String toDisplayString$default(iu iuVar, boolean z, int i, Object obj) {
        if (obj != null) {
            g84.j("Super calls with default arguments not supported in this target, function: toDisplayString");
            return null;
        }
        if ((i & 1) != 0) {
            z = false;
        }
        return iuVar.toDisplayString(z);
    }

    public final sk0 getBackupReq() {
        int i = hu.a[ordinal()];
        if (i == 1) {
            return sk0.NONE;
        }
        if (i == 2) {
            return sk0.ROOT;
        }
        if (i == 3 || i == 4) {
            return b67.c() ? sk0.ROOT_OR_SHIZUKU : sk0.NONE;
        }
        if (i == 5) {
            return sk0.NONE;
        }
        q.j();
        return null;
    }

    public final int getIconRes() {
        int i = hu.a[ordinal()];
        if (i == 1) {
            return R.drawable.ic_app;
        }
        if (i == 2) {
            return R.drawable.ic_data;
        }
        if (i == 3) {
            return R.drawable.ic_sd;
        }
        if (i == 4) {
            return R.drawable.ic_download;
        }
        if (i == 5) {
            return R.drawable.ic_media;
        }
        q.j();
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    public final boolean isCheckedInExpansion(boolean z) {
        boolean z2;
        String str = (z ? "system_checked_app_part_" : "user_checked_app_part_") + this;
        if (this != APP) {
            if (this == DATA) {
                mp6 mp6Var = mp6.a;
                z2 = mp6.g;
            }
        }
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(str, z2);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return z2;
        }
    }

    public final void setCheckedInExpansion(boolean z, boolean z2) {
        String str = (z ? "system_checked_app_part_" : "user_checked_app_part_") + this;
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putBoolean(str, z2).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public final String toDisplayString(boolean z) {
        Context contextC;
        if (z) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC2 = SwiftApp.Companion.c();
            Locale locale = Locale.ENGLISH;
            locale.getClass();
            contextC = sz8.u(contextC2, locale);
        } else {
            SwiftApp.Companion companion2 = SwiftApp.d;
            contextC = SwiftApp.Companion.c();
        }
        int i = hu.a[ordinal()];
        if (i == 1) {
            return "APKs";
        }
        if (i == 2) {
            String string = contextC.getString(R.string.data);
            string.getClass();
            return string;
        }
        if (i == 3) {
            String string2 = contextC.getString(R.string.external_data);
            string2.getClass();
            return string2;
        }
        if (i == 4) {
            String string3 = contextC.getString(R.string.expansion);
            string3.getClass();
            return string3;
        }
        if (i != 5) {
            q.j();
            return null;
        }
        String string4 = contextC.getString(R.string.media);
        string4.getClass();
        return string4;
    }
}
