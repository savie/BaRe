package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class py7 extends ty7 {
    public final boolean f;

    public py7(boolean z) {
        super(3, 0);
        this.f = z;
    }

    @Override // defpackage.cz7
    public final String a() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(this.f ? R.string.enable_apps : R.string.disable_apps);
        string.getClass();
        return string;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof py7) && this.f == ((py7) obj).f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f);
    }

    @Override // defpackage.cz7
    public final String toString() {
        return "EnableDisableApps(enable=" + this.f + ")";
    }
}
