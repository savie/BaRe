package defpackage;

import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum j20 {
    SelectThisAndAbove(R.string.select_this_and_all_above),
    SelectThisAndBelow(R.string.select_this_and_all_below);

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final int stringRes;

    j20(int i) {
        this.stringRes = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getStringRes() {
        return this.stringRes;
    }
}
