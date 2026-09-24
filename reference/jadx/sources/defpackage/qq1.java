package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qq1 extends qo0 {
    public boolean e;
    public Config f;
    public final gv7 g = new gv7(new b7(11));
    public final gv7 h = new gv7(new ov(3));

    public final Config j() {
        Config config = (Config) ((ex6) this.g.getValue()).d();
        if (config != null) {
            return config;
        }
        Config config2 = this.f;
        return config2 == null ? new Config(0, null, null, null, null, 31, null) : config2;
    }

    public final void k(ConfigSettings configSettings, int i) {
        configSettings.getClass();
        List<ConfigSettings> validSettings = j().getValidSettings();
        if (validSettings == null || validSettings.isEmpty()) {
            validSettings = null;
        }
        if (validSettings != null) {
            ArrayList arrayList = new ArrayList(validSettings);
            int iIndexOf = arrayList.indexOf(configSettings);
            Collections.swap(arrayList, iIndexOf, i + iIndexOf);
            l(Config.copy$default(j(), 0, null, null, arrayList, null, 23, null), false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006f  */
    public final void l(Config config, boolean z) {
        String string;
        config.getClass();
        Config configCopy$default = Config.copy$default(config, 0, j().getId(), null, null, null, 29, null);
        if (z) {
            this.f = configCopy$default;
        }
        ((ex6) this.g.getValue()).k(configCopy$default);
        if (configCopy$default.isNameValid()) {
            string = null;
        } else {
            SwiftApp.Companion companion = SwiftApp.d;
            string = SwiftApp.Companion.c().getString(R.string.invalid_config_name);
        }
        if (string == null || string.length() == 0) {
            br1 br1Var = br1.a;
            if (br1.c(configCopy$default)) {
                if (this.f != null) {
                    String str = configCopy$default.get_name();
                    Config config2 = this.f;
                    config2.getClass();
                    String str2 = config2.get_name();
                    if (!uq7.P(str, str2 != null ? nq7.H0(str2).toString() : null, true)) {
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        string = SwiftApp.Companion.c().getString(R.string.config_already_exists);
                    }
                } else {
                    SwiftApp.Companion companion3 = SwiftApp.d;
                    string = SwiftApp.Companion.c().getString(R.string.config_already_exists);
                }
            }
        }
        ((ex6) this.h.getValue()).k(string);
    }
}
