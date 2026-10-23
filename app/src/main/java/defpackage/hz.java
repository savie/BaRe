package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.swiftapps.swiftbackup.settings.f;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hz extends kz {
    public final ji b;
    public final List c;
    public final List d;
    public final hk e;
    public final SyncOption f;
    public final boolean g;
    public final xp1 h;
    public final MultipleBackupStrategy i;
    public final List j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hz(ji jiVar, List list, List list2, hk hkVar, SyncOption syncOption, boolean z, xp1 xp1Var, MultipleBackupStrategy multipleBackupStrategy, List list3) {
        super(jiVar);
        jiVar.getClass();
        list.getClass();
        list2.getClass();
        xp1Var.getClass();
        multipleBackupStrategy.getClass();
        this.b = jiVar;
        this.c = list;
        this.d = list2;
        this.e = hkVar;
        this.f = syncOption;
        this.g = z;
        this.h = xp1Var;
        this.i = multipleBackupStrategy;
        this.j = list3;
        if (list.isEmpty()) {
            l0.e("AppParts empty!");
            throw null;
        }
        if (list2.isEmpty()) {
            l0.e("Locations empty!");
            throw null;
        }
    }

    @Override // defpackage.kz
    public final ji a() {
        return this.b;
    }

    @Override // defpackage.kz
    public final boolean b() {
        return ji8.r(this.d) || d();
    }

    public final ArrayList c() {
        List list = this.j;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((AppBackupLimitItem) obj).isValid()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final boolean d() {
        return this.e != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hz)) {
            return false;
        }
        hz hzVar = (hz) obj;
        return pe4.d(this.b, hzVar.b) && pe4.d(this.c, hzVar.c) && pe4.d(this.d, hzVar.d) && pe4.d(this.e, hzVar.e) && this.f == hzVar.f && this.g == hzVar.g && this.h == hzVar.h && pe4.d(this.i, hzVar.i) && pe4.d(this.j, hzVar.j);
    }

    public final int hashCode() {
        int i = fz5.i(this.d, fz5.i(this.c, this.b.hashCode() * 31, 31), 31);
        hk hkVar = this.e;
        int iHashCode = (i + (hkVar == null ? 0 : hkVar.hashCode())) * 31;
        SyncOption syncOption = this.f;
        int iHashCode2 = (this.i.hashCode() + ((this.h.hashCode() + fz5.h((iHashCode + (syncOption == null ? 0 : syncOption.hashCode())) * 31, 31, this.g)) * 31)) * 31;
        List list = this.j;
        return Boolean.hashCode(false) + ((iHashCode2 + (list == null ? 0 : list.hashCode())) * 31);
    }

    public final String toString() {
        boolean zD = d();
        hk hkVar = this.e;
        return "Backup(appParts=" + this.c + ", locations=" + this.d + ", isSyncOnly=" + zD + ", syncBackupId=" + (hkVar != null ? hkVar.a : null) + ", syncOption=" + this.f + ", backupCache=" + this.g + ", compressionLevel=" + this.h + ", multipleBackupStrategy=" + f.a(this.i) + ", backupLimits=" + c() + ", isForceRedo=false)";
    }
}
