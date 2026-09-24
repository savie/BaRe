package org.swiftapps.swiftbackup.settings;

import android.content.SharedPreferences;
import defpackage.cz4;
import defpackage.gv7;
import defpackage.io4;
import defpackage.pe4;
import defpackage.w14;
import defpackage.wi5;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static MultipleBackupStrategy a() {
        return (MultipleBackupStrategy) MultipleBackupStrategy.defaultStrategy$delegate.getValue();
    }

    public static MultipleBackupStrategy b() {
        return (MultipleBackupStrategy) MultipleBackupStrategy.legacyArchiveStrategy$delegate.getValue();
    }

    public static MultipleBackupStrategy c() {
        boolean z;
        gv7 gv7Var = w14.a;
        MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) io4.j("GsonHelper", "fromPrefs", false, new wi5(), 12);
        if (multipleBackupStrategy != null) {
            return (V.INSTANCE.getA() || !f.a(multipleBackupStrategy).isPremium()) ? multipleBackupStrategy : a();
        }
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("app_backup_archiving", false);
            if (!z) {
                return a();
            }
            w14.h(b(), "apps_multiple_backups_strategy");
            SharedPreferences.Editor editor = cz4.k;
            if (editor != null) {
                editor.putBoolean("app_backup_archiving", false).apply();
                return b();
            }
            pe4.F("editor");
            throw null;
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    public static int d(Integer num) {
        if (num != null && num.intValue() >= 2) {
            int iIntValue = num.intValue();
            if (2 <= iIntValue && iIntValue < 11) {
                return num.intValue();
            }
            if (num.intValue() > 10) {
                return 10;
            }
        }
        return 2;
    }
}
