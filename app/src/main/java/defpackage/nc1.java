package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum nc1 {
    USERNAME_PASSWORD,
    KEY_BASED;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    private final int getDisplayNameRes() {
        int i = mc1.a[ordinal()];
        if (i == 1) {
            return R.string.authentication_type_username_password;
        }
        if (i == 2) {
            return R.string.authentication_type_private_key;
        }
        q.j();
        return 0;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String getDisplayName() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(getDisplayNameRes());
        string.getClass();
        return string;
    }
}
