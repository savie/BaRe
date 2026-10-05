package org.swiftapps.swiftbackup.settings;

import android.content.SharedPreferences;
import defpackage.cz4;
import defpackage.fk3;
import defpackage.jx2;
import defpackage.ly8;
import defpackage.pe4;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum FolderBackupStrategy {
    Single(R.string.folder_backups_strategy_single_title, R.string.folder_backups_strategy_single_description, false),
    Incremental(R.string.folder_backups_strategy_incremental_title, R.string.folder_backups_strategy_incremental_description, true);

    private final int descriptionStringRes;
    private final boolean isPremium;
    private final int titleStringRes;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final fk3 Companion = new fk3();

    FolderBackupStrategy(int i, int i2, boolean z) {
        this.titleStringRes = i;
        this.descriptionStringRes = i2;
        this.isPremium = z;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getDescriptionStringRes() {
        return this.descriptionStringRes;
    }

    public final int getTitleStringRes() {
        return this.titleStringRes;
    }

    public final boolean isCheckedInExpansion() {
        String str = "checked_backup_strategy_6_" + this;
        Companion.getClass();
        boolean z = this == Single;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(str, z);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return z;
        }
    }

    public final boolean isPremium() {
        return this.isPremium;
    }

    public final boolean isSingleBackup() {
        return this == Single;
    }

    public final void setCheckedInExpansion(boolean z) {
        String str = "checked_backup_strategy_6_" + this;
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putBoolean(str, z).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }
}
