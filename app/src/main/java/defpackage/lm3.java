package defpackage;

import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lm3 extends qo0 {
    public boolean e;
    public FolderItem f;
    public FolderItem g;
    public final ex6 h = new ex6();
    public final ex6 i = new ex6();
    public final ex6 j = new ex6();

    public final void j(FolderItem folderItem) {
        Boolean boolValueOf;
        om3 om3VarValidateDisplayName;
        om3 om3VarValidateSourceFolder;
        this.g = folderItem;
        if (folderItem != null && (om3VarValidateSourceFolder = folderItem.validateSourceFolder()) != null) {
            this.i.k(om3VarValidateSourceFolder.c);
        }
        if (folderItem != null && (om3VarValidateDisplayName = folderItem.validateDisplayName()) != null) {
            this.h.k(om3VarValidateDisplayName.c);
        }
        boolean z = false;
        if (this.f == null || folderItem == null) {
            if (folderItem != null && folderItem.isValid()) {
                z = true;
            }
            boolValueOf = Boolean.valueOf(z);
        } else {
            if (folderItem.isValid() && !pe4.d(this.f, folderItem)) {
                z = true;
            }
            boolValueOf = Boolean.valueOf(z);
        }
        this.j.k(boolValueOf);
    }
}
