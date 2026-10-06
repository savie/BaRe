package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum ce3 implements nd3 {
    All,
    NotSynced,
    Synced;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    @Override // defpackage.nd3
    public String getDisplayString() {
        int i;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        int i2 = be3.a[ordinal()];
        if (i2 == 1) {
            i = R.string.all;
        } else if (i2 == 2) {
            i = R.string.see_synced_apps;
        } else {
            if (i2 != 3) {
                q.j();
                return null;
            }
            i = R.string.not_synced;
        }
        String string = contextC.getString(i);
        string.getClass();
        return string;
    }

    @Override // defpackage.nd3
    public /* bridge */ boolean isApplied() {
        return super.isApplied();
    }

    @Override // defpackage.nd3
    public boolean isDefault() {
        return this == All;
    }

    @Override // defpackage.nd3
    public void reset() {
        ce3 ce3Var = All;
        ce3Var.getClass();
        String string = ce3Var.toString();
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("key_filter_app_synced", string).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }
}
