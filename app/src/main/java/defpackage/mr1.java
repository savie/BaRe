package defpackage;

import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mr1 extends qo0 {
    public boolean e;
    public final ex6 f = new ex6();

    public final ConfigSettings j() {
        Object objD = this.f.d();
        objD.getClass();
        return (ConfigSettings) objD;
    }

    public final void k(ConfigSettings configSettings) {
        configSettings.getClass();
        boolean zIsLegacyArchiveBackupEnabled = configSettings.isLegacyArchiveBackupEnabled();
        ex6 ex6Var = this.f;
        if (!zIsLegacyArchiveBackupEnabled) {
            ex6Var.k(configSettings);
        } else {
            MultipleBackupStrategy.Companion.getClass();
            ex6Var.k(ConfigSettings.copy$default(configSettings, 0, null, null, null, null, null, null, null, b.b(), null, null, null, null, null, null, null, 65151, null));
        }
    }
}
