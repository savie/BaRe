package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class az7 extends cz7 {
    public final List c;
    public final ArrayList d;
    public final ArrayList e;

    public az7(List list, ArrayList arrayList) {
        this.c = list;
        this.d = arrayList;
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (hashSet.add(((rv7) obj).a.v())) {
                arrayList2.add(obj);
            }
        }
        this.e = arrayList2;
    }

    @Override // defpackage.cz7
    public final String a() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.g(R.string.backup);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof az7)) {
            return false;
        }
        az7 az7Var = (az7) obj;
        return this.c.equals(az7Var.c) && this.d.equals(az7Var.d);
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + ((this.d.hashCode() + (this.c.hashCode() * 31)) * 31);
    }

    @Override // defpackage.cz7
    public final String toString() {
        return "WallsBackup(walls=" + this.e.size() + ", locations=" + this.d + ", isSyncOnly=false)";
    }
}
