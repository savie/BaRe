package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum yu {
    Granted(0),
    All(1),
    None(2);

    private final int id;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final wu Companion = new wu();

    yu(int i) {
        this.id = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String asDisplayString() {
        int i;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        int i2 = xu.a[ordinal()];
        if (i2 == 1) {
            i = R.string.restore_permission_option_granted;
        } else if (i2 == 2) {
            i = R.string.restore_permission_option_all;
        } else {
            if (i2 != 3) {
                q.j();
                return null;
            }
            i = R.string.restore_permission_option_none;
        }
        String string = contextC.getString(i);
        string.getClass();
        return string;
    }

    public final boolean getGrantsAllSupportedPermissions() {
        return this == All;
    }

    public final int getId() {
        return this.id;
    }

    public final boolean getRestoresAnyPermissions() {
        return this != None;
    }

    public final boolean getRestoresBackedUpPermissionChoices() {
        return this == Granted;
    }

    public final boolean getRestoresDeniedRuntimePermissionStates() {
        return getRestoresBackedUpPermissionChoices();
    }
}
