package defpackage;

import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum bt {
    LOCAL,
    CLOUD;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getToolbarTitle() {
        int i = at.a[ordinal()];
        if (i == 1) {
            return R.string.local_apps;
        }
        if (i == 2) {
            return R.string.cloud_synced_apps;
        }
        q.j();
        return 0;
    }

    public final boolean isCloudSection() {
        return this == CLOUD;
    }

    public final boolean isLocalSection() {
        return this == LOCAL;
    }
}
