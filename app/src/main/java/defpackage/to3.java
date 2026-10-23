package defpackage;

import android.os.Bundle;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum to3 {
    LOCAL,
    CLOUD;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final CharSequence getToolbarTitle(il0 il0Var) {
        il0Var.getClass();
        int i = so3.a[ordinal()];
        if (i == 1) {
            return il0Var.getString(R.string.local_folder_setups);
        }
        if (i == 2) {
            return il0Var.getString(R.string.cloud_backups);
        }
        q.j();
        return null;
    }

    public final boolean isCloudSection() {
        return this == CLOUD;
    }

    public final boolean isLocalSection() {
        return this == LOCAL;
    }

    public final kp3 newFragment() {
        kp3 kp3Var = new kp3();
        Bundle bundle = new Bundle();
        bundle.putSerializable("KEY_SECTION", this);
        kp3Var.setArguments(bundle);
        return kp3Var;
    }
}
