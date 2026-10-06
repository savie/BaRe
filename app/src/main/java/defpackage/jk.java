package defpackage;

import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jk {
    public final c40 a;
    public final ArrayList b;
    public gz7 c = gz7.WAITING;

    public jk(c40 c40Var, ArrayList arrayList) {
        this.a = c40Var;
        this.b = arrayList;
    }

    public final void a() {
        this.c = gz7.RUNNING;
        ArrayList<ji> arrayList = this.b;
        int i = 0;
        for (ji jiVar : arrayList) {
            i++;
            if (this.c.isCancelled()) {
                break;
            }
            c40 c40Var = this.a;
            c40Var.p(jiVar);
            String str = i + "/" + arrayList.size();
            if (arrayList.size() > 1) {
                c40Var.d.i(str);
            }
            vr6.i$default(vr6.INSTANCE, "AppBackupDeleteHelper", "Processing ".concat(str), null, 4, null);
            ex6 ex6Var = c40Var.i;
            SwiftApp.Companion companion = SwiftApp.d;
            ex6Var.i(SwiftApp.Companion.c().getString(R.string.delete_backup_files));
            String packageName = jiVar.getPackageName();
            cz7 cz7Var = c40Var.a;
            cz7Var.getClass();
            ik.a(packageName, (oy7) cz7Var);
            c40Var.n(i * 100);
        }
        this.c = gz7.COMPLETE;
    }
}
