package defpackage;

import androidx.fragment.app.b0;
import androidx.fragment.app.o;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uo3 extends b0 {
    public final ArrayList g;
    public final /* synthetic */ FoldersDashActivity h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uo3(FoldersDashActivity foldersDashActivity, ur3 ur3Var) {
        super(ur3Var);
        this.h = foldersDashActivity;
        List entries = to3.getEntries();
        ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
        w3 w3Var = new w3((z3) entries);
        while (w3Var.hasNext()) {
            arrayList.add(((to3) w3Var.next()).newFragment());
        }
        this.g = arrayList;
    }

    @Override // defpackage.ow5
    public final int c() {
        return this.g.size();
    }

    @Override // defpackage.ow5
    public final CharSequence d(int i) {
        return ((to3) ((kx2) to3.getEntries()).get(i)).getToolbarTitle(this.h);
    }

    @Override // androidx.fragment.app.b0
    public final o g(int i) {
        return (kp3) this.g.get(i);
    }
}
