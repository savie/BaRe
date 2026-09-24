package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bo3 extends eo3 {
    public final FolderItem a;
    public final List b;
    public final kj3 c;
    public kj3 d;
    public final FolderBackupStrategy e;
    public final xp1 f;
    public final FolderBackupStrategy g;
    public final List h;

    public bo3(FolderItem folderItem, List list, kj3 kj3Var, FolderBackupStrategy folderBackupStrategy, xp1 xp1Var) {
        folderItem.getClass();
        list.getClass();
        folderBackupStrategy.getClass();
        xp1Var.getClass();
        this.a = folderItem;
        this.b = list;
        this.c = kj3Var;
        this.d = null;
        this.e = folderBackupStrategy;
        this.f = xp1Var;
        if (folderBackupStrategy.isPremium() && !V.INSTANCE.getA()) {
            FolderBackupStrategy.Companion.getClass();
            folderBackupStrategy = FolderBackupStrategy.Single;
        }
        this.g = folderBackupStrategy;
        if (!V.INSTANCE.getA() && kj3Var == null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((q05) obj) != q05.CLOUD) {
                    arrayList.add(obj);
                }
            }
            list = arrayList.isEmpty() ? nc8.I(q05.DEVICE) : arrayList;
        }
        this.h = list;
        if (list.isEmpty()) {
            l0.e("Locations empty!");
            throw null;
        }
    }

    @Override // defpackage.eo3
    public final FolderItem a() {
        return this.a;
    }

    @Override // defpackage.eo3
    public final boolean b() {
        return ji8.r(this.h) || this.c != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bo3)) {
            return false;
        }
        bo3 bo3Var = (bo3) obj;
        return pe4.d(this.a, bo3Var.a) && pe4.d(this.b, bo3Var.b) && pe4.d(this.c, bo3Var.c) && pe4.d(this.d, bo3Var.d) && this.e == bo3Var.e && this.f == bo3Var.f;
    }

    public final int hashCode() {
        int i = fz5.i(this.b, this.a.hashCode() * 31, 31);
        kj3 kj3Var = this.c;
        int iHashCode = (i + (kj3Var == null ? 0 : kj3Var.hashCode())) * 31;
        kj3 kj3Var2 = this.d;
        return Boolean.hashCode(false) + ((this.f.hashCode() + ((this.e.hashCode() + ((iHashCode + (kj3Var2 == null ? 0 : kj3Var2.hashCode())) * 31)) * 31)) * 961);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Backup(");
        sb.append("folderItem=" + this.a);
        sb.append(", locations=" + this.h);
        kj3 kj3Var = this.c;
        if (kj3Var != null) {
            sb.append(", backupToSync=" + kj3Var);
        }
        kj3 kj3Var2 = this.d;
        if (kj3Var2 != null) {
            sb.append(", backupToUpload=" + kj3Var2);
        }
        sb.append(", backupStrategy=" + this.g);
        sb.append(", compressionLevel=" + this.f);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public bo3(FolderItem folderItem, List list, kj3 kj3Var, FolderBackupStrategy folderBackupStrategy) {
        xp1 xp1Var = null;
        int i = -1;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i = sharedPreferences.getInt("compression_level_folders", -1);
            xp1.Companion.getClass();
            xp1[] xp1VarArrA = wp1.a();
            for (int i2 = 0; i2 < 2; i2++) {
                xp1 xp1Var2 = xp1VarArrA[i2];
                if (xp1Var2.getLevel() == i) {
                    xp1Var = xp1Var2;
                    break;
                }
            }
            if (xp1Var == null) {
                xp1.Companion.getClass();
                xp1Var = xp1.DEFAULT;
            }
            this(folderItem, list, kj3Var, folderBackupStrategy, xp1Var);
        } catch (ClassCastException unused) {
        }
    }
}
