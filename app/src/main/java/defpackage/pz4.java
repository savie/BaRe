package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pz4 extends dv {
    public static final pz4 g;

    static {
        pz4 pz4Var = new pz4(1);
        g = pz4Var;
        hx0.b.i(pz4Var);
        pz4Var.e = false;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    @Override // defpackage.dv
    public final ik6 a() {
        List listN1;
        String str = ry5.u;
        ArrayList<q63> arrayListB = new q63(qy5.f(false, null).s, 2).B();
        if (arrayListB == null) {
            listN1 = null;
        } else {
            if (arrayListB.isEmpty()) {
                arrayListB = null;
            }
            if (arrayListB == null) {
                listN1 = null;
            } else {
                ArrayList arrayList = new ArrayList();
                for (q63 q63Var : arrayListB) {
                    if (q63Var.x()) {
                        q63 q63Var2 = new q63(2, q63Var, "metadata.json");
                        FolderMetadata.Companion.getClass();
                        FolderMetadata folderMetadata = (FolderMetadata) w14.b(q63Var2, FolderMetadata.class, true);
                        if (folderMetadata == null || !folderMetadata.isValid()) {
                            folderMetadata = null;
                        }
                        if (folderMetadata != null) {
                            arrayList.add(folderMetadata);
                        }
                    }
                }
                listN1 = el1.n1(arrayList, nm3.a(FolderItem.Companion, new ou(7)));
                if (listN1.isEmpty()) {
                    listN1 = null;
                }
            }
        }
        if (listN1 == null || listN1.isEmpty()) {
            return new ik6(hk6.Empty, null, false, 14);
        }
        this.b = true;
        return new ik6(hk6.Success, listN1, false, 12);
    }

    @qr7(threadMode = ThreadMode.BACKGROUND)
    public final void onFolderEvent(mm3 mm3Var) {
        mm3Var.getClass();
        String str = mm3Var.a;
        Log.i(this.a, "onFolderEvent: Updating item [" + str + "]");
        FolderMetadata folderMetadata = (FolderMetadata) b(str);
        if (folderMetadata == null) {
            return;
        }
        FolderMetadata folderMetadataH = a.a(folderMetadata.getFolderItem(), false, false).h();
        if (folderMetadataH != null) {
            l(folderMetadataH);
        } else {
            o(str);
        }
    }
}
