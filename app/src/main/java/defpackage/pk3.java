package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pk3 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ qk3 b;
    public final /* synthetic */ List c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pk3(qk3 qk3Var, List list, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = qk3Var;
        this.c = list;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new pk3(this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((pk3) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i;
        int i2 = this.a;
        if (i2 == 0) {
            lg7.H(obj);
            int i3 = qk3.T;
            qk3 qk3Var = this.b;
            List list = this.c;
            int size = 0;
            if (list == null || !list.isEmpty()) {
                Iterator it = list.iterator();
                int i4 = 0;
                while (it.hasNext()) {
                    if (((zk3) it.next()).a.hasBackup(qk3Var.k()) && (i4 = i4 + 1) < 0) {
                        fl1.E0();
                        throw null;
                    }
                }
                i = i4;
            } else {
                i = 0;
            }
            if (qk3Var.k()) {
                ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((zk3) it2.next()).a);
                }
                List listE = pz4.g.e();
                ArrayList arrayList2 = new ArrayList(hl1.G0(listE, 10));
                Iterator it3 = listE.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(((FolderMetadata) it3.next()).getFolderItem());
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    linkedHashSet.add(((FolderItem) it4.next()).getId());
                }
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : arrayList) {
                    if (!linkedHashSet.contains(((FolderItem) obj2).getId())) {
                        arrayList3.add(obj2);
                    }
                }
                size = arrayList3.size();
            }
            int i5 = size;
            int size2 = list.size();
            boolean zK = qk3Var.k();
            ww4 ww4VarP = nc8.p();
            ww4VarP.add(new lk3("New folder setup", R.string.new_folder_setup, null, R.drawable.ic_create_new_folder, 1, zK, R.string.new_folder_setup, R.drawable.ic_create_new_folder));
            if (zK) {
                ww4VarP.add(new lk3("Copy folder setups", R.string.copy_folder_setup_to_device, null, R.drawable.ic_content_copy, i5, true, R.string.copy_folder_setup_to_device, R.drawable.ic_content_copy));
            }
            ww4VarP.add(new lk3("Backup", R.string.backup, null, R.drawable.ic_check_circle_outline, size2, zK, R.string.backup_options, R.drawable.ic_edit_pencil));
            ww4VarP.add(new lk3("Restore", zK ? R.string.restore_from_cloud : R.string.restore, null, R.drawable.ic_restore, i, zK, R.string.restore_options, R.drawable.ic_edit_pencil));
            ww4VarP.add(new lk3("Delete backups", zK ? R.string.delete_cloud_backup : R.string.delete_local_backup, null, R.drawable.ic_delete_sweep, i, zK, R.string.delete_backup, R.drawable.ic_delete_sweep));
            ww4 ww4VarH = nc8.h(ww4VarP);
            zn4 zn4Var = zn4.a;
            lx lxVar = new lx(5, qk3Var, ww4VarH);
            this.a = 1;
            Object objG = zn4.g(lxVar, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
