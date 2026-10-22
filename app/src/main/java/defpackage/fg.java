package defpackage;

import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fg extends ig {
    public final int a;
    public final bg b;

    public fg(int i, bg bgVar) {
        this.a = i;
        this.b = bgVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fg)) {
            return false;
        }
        fg fgVar = (fg) obj;
        return this.a == fgVar.a && pe4.d(this.b, fgVar.b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        bg bgVar = this.b;
        return iHashCode + (bgVar == null ? 0 : bgVar.hashCode());
    }

    public final String toString() {
        return "Processing(statusRes=" + this.a + ", packageInfo=" + this.b + ")";
    }

    public /* synthetic */ fg() {
        this(R.string.apk_import_status_preparing, null);
    }
}
