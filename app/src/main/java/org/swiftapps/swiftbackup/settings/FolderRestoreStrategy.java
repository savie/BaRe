package org.swiftapps.swiftbackup.settings;

import android.content.SharedPreferences;
import defpackage.cz4;
import defpackage.jx2;
import defpackage.ly8;
import defpackage.pe4;
import defpackage.tn3;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum FolderRestoreStrategy {
    MISSING_ONLY(R.string.folder_restore_strategy_missing, R.string.folder_restore_strategy_missing_description),
    OVERWRITE(R.string.folder_restore_strategy_overwrite, R.string.folder_restore_strategy_overwrite_description),
    FULL_RESTORE(R.string.folder_restore_strategy_full_restore, R.string.folder_restore_strategy_full_restore_description);

    private final int descriptionStringRes;
    private final int titleStringRes;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final tn3 Companion = new tn3();

    FolderRestoreStrategy(int i, int i2) {
        this.titleStringRes = i;
        this.descriptionStringRes = i2;
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
        String str = "checked_restore_strategy_6_" + this;
        Companion.getClass();
        boolean z = this == MISSING_ONLY;
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

    public final void setCheckedInExpansion(boolean z) {
        String str = "checked_restore_strategy_6_" + this;
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putBoolean(str, z).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }
}
