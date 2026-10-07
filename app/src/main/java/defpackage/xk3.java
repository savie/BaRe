package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

public enum xk3 {
    Name(R.string.name),
    BackupDate(R.string.backup_date),
    SetupDate(R.string.folder_setup_creation_date);

    private final int stringRes;
    private static final jx2 $ENTRIES = ly8.q(values());
    public static final wk3 Companion = new wk3();
    private static final xk3 f4default = Name;

    xk3(int i) {
        this.stringRes = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String displayString() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(this.stringRes);
        string.getClass();
        return string;
    }

    public final int getStringRes() {
        return this.stringRes;
    }
}
