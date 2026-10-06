package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum cd3 implements nd3 {
    All,
    User,
    System;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    @Override // defpackage.nd3
    public String getDisplayString() {
        int i;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        int i2 = bd3.a[ordinal()];
        if (i2 == 1) {
            i = R.string.user;
        } else if (i2 == 2) {
            i = R.string.system;
        } else {
            if (i2 != 3) {
                q.j();
                return null;
            }
            i = R.string.user_plus_system;
        }
        String string = contextC.getString(i);
        string.getClass();
        return string;
    }

    public final boolean hasSystem() {
        boolean z;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            if (z) {
                return this == All || this == System;
            }
            return false;
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    @Override // defpackage.nd3
    public boolean isApplied() {
        boolean z;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            if (z) {
                if (super.isApplied()) {
                    return true;
                }
                if (hasSystem() && ge3.e().isApplied()) {
                    return true;
                }
            }
            return false;
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    @Override // defpackage.nd3
    public boolean isDefault() {
        boolean z;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                z = sharedPreferences.getBoolean("show_system_apps", false);
                return !z || this == All;
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    @Override // defpackage.nd3
    public void reset() {
        cd3 cd3Var = All;
        cd3Var.getClass();
        String string = cd3Var.toString();
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString("key_user_apps_pref", string).apply();
        ge3.a.reset();
    }
}
