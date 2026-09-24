package defpackage;

import org.swiftapps.swiftbackup.appconfigs.data.Config;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sq1 {
    public static final boolean a(Config config, boolean z) {
        if (config == null) {
            if (z) {
                vr6.e$default(vr6.INSTANCE, "Config", "Null config", null, 4, null);
                return false;
            }
        } else if (config.isNameValid()) {
            if (config.isNameTaken()) {
                if (z) {
                    vr6.e$default(vr6.INSTANCE, xs1.j("Config:", config.getName()), xs1.j("Name already taken by other config = ", config.getName()), null, 4, null);
                    return false;
                }
            } else {
                if (config.hasValidSettings()) {
                    return true;
                }
                if (z) {
                    vr6.e$default(vr6.INSTANCE, xs1.j("Config:", config.getName()), "No valid ConfigSettings!", null, 4, null);
                }
            }
        } else if (z) {
            vr6.e$default(vr6.INSTANCE, xs1.j("Config:", config.getName()), xs1.j("Invalid name = ", config.getName()), null, 4, null);
            return false;
        }
        return false;
    }
}
