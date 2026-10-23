package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sf1 extends dv {
    public static zc2 h;
    public static final sf1 g = new sf1(1);
    public static final rf1 i = new rf1();

    @Override // defpackage.dv
    public final ik6 a() {
        zc2 zc2Var = re3.a;
        zc2 zc2Var2 = h;
        rf1 rf1Var = i;
        if (zc2Var2 != null && rf1Var != null) {
            zc2Var2.h(new f61(zc2Var2.a, rf1Var, zc2Var2.f()));
        }
        ai8.b();
        tb1 tb1Var = tb1.a;
        if (!qb1.m()) {
            return new ik6(hk6.DriveNotConnected, null, false, 14);
        }
        if (!ai8.h()) {
            return new ik6(hk6.NetworkError, null, false, 14);
        }
        ArrayList arrayList = new ArrayList();
        zc2 zc2VarH = re3.h();
        h = zc2VarH;
        l73 l73VarA = cf3.a(zc2VarH, true);
        boolean z = l73VarA instanceof xe3;
        if (z) {
            db2 db2VarB = ((xe3) l73VarA).n.b();
            Iterator it = (Iterator) db2VarB.b;
            while (it.hasNext()) {
                hk5 hk5Var = (hk5) it.next();
                ((eb2) db2VarB.c).b.d(hk5Var.a.a);
                FolderMetadata folderMetadata = (FolderMetadata) t62.b(FolderMetadata.class, sb4.d(hk5Var.b).a.getValue());
                if (folderMetadata != null) {
                    arrayList.add(folderMetadata);
                }
            }
            zc2VarH.a(new f61(zc2VarH.a, rf1Var, zc2VarH.f()));
        }
        if (z) {
            this.b = true;
            if (arrayList.isEmpty()) {
                return new ik6(hk6.Empty, null, false, 14);
            }
            return new ik6(hk6.Success, el1.n1(arrayList, nm3.a(FolderItem.Companion, new sl(4))), false, 12);
        }
        if (!(l73VarA instanceof we3)) {
            q.j();
            return null;
        }
        Log.e(this.a, ((we3) l73VarA).n.b);
        return new ik6(hk6.CloudError, null, false, 14);
    }
}
