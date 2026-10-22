package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum is0 {
    Hide(R.string.blacklist_hide),
    NoData(R.string.blacklist_no_data);

    private final int displayStringRes;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final hs0 Companion = new hs0();

    is0(int i) {
        this.displayStringRes = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String getDisplayString() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(this.displayStringRes);
        string.getClass();
        return string;
    }
}
