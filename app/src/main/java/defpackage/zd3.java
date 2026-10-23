package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum zd3 implements nd3 {
    All,
    MultipleBackups,
    ProtectedBackups,
    BackupsWithNotes,
    BackupOld,
    BackupNew,
    InstalledFromGooglePlay,
    NotInstalledFromGooglePlay;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    @Override // defpackage.nd3
    public String getDisplayString() {
        int i;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        switch (yd3.a[ordinal()]) {
            case 1:
                i = R.string.all;
                break;
            case 2:
                i = R.string.apps_with_multiple_backpus;
                break;
            case 3:
                i = R.string.apps_with_protected_backpus;
                break;
            case 4:
                i = R.string.backups_with_notes;
                break;
            case 5:
                i = R.string.installed_apps_with_older_backups;
                break;
            case 6:
                i = R.string.installed_apps_with_newer_backups;
                break;
            case 7:
                i = R.string.installed_from_google_play;
                break;
            case 8:
                i = R.string.not_installed_from_google_play;
                break;
            default:
                q.j();
                return null;
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
        zd3 zd3Var = All;
        zd3Var.getClass();
        String string = zd3Var.toString();
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("key_filter_app_backup_age", string).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }
}
