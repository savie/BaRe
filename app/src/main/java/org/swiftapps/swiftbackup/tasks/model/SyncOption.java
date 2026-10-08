package org.swiftapps.swiftbackup.tasks.model;

import defpackage.dj7;
import defpackage.g84;
import defpackage.jx2;
import defpackage.ku7;
import defpackage.ly8;
import defpackage.q;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum SyncOption {
    WIFI,
    ANY;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ int getIconRes$default(SyncOption syncOption, boolean z, int i, Object obj) {
        if (obj != null) {
            g84.j("Super calls with default arguments not supported in this target, function: getIconRes");
            return 0;
        }
        if ((i & 1) != 0) {
            z = false;
        }
        return syncOption.getIconRes(z);
    }

    public final int getIconRes(boolean z) {
        if (z) {
            int i = ku7.a[ordinal()];
            if (i == 1) {
                return R.drawable.ic_wifi;
            }
            if (i == 2) {
                return R.drawable.ic_any_network_two_tone;
            }
            q.j();
            return 0;
        }
        int i2 = ku7.a[ordinal()];
        if (i2 == 1) {
            return R.drawable.ic_wifi;
        }
        if (i2 == 2) {
            return R.drawable.ic_any_network_filled;
        }
        q.j();
        return 0;
    }

    public final String toDisplayString() {
        int i = ku7.a[ordinal()];
        if (i == 1) {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.wifi);
        }
        if (i == 2) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            return dj7.g(R.string.wifi_or_mobile_data);
        }
        q.j();
        return null;
    }
}
