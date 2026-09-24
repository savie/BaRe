package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum xi6 {
    Dev,
    TestOnly,
    Experimental,
    ToBeRemoved,
    Beta,
    Production;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String getDisplayString() {
        switch (wi6.a[ordinal()]) {
            case 1:
                return "Dev";
            case 2:
                return "Testing only";
            case 3:
                return "Experimental";
            case 4:
                return "To be removed";
            case 5:
                SwiftApp.Companion companion = SwiftApp.d;
                return dj7.g(R.string.beta);
            case 6:
                return "";
            default:
                q.j();
                return null;
        }
    }
}
