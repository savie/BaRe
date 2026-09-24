package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;
import org.swiftapps.swiftbackup.views.PreCachingGridLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rj3 extends u35 {
    public final il0 Q;
    public final int R;
    public final boolean S;
    public final gv7 T;
    public final gv7 U;
    public final gv7 V;
    public final gv7 W;
    public final gv7 X;
    public final oi0 Y;
    public FolderBackupStrategy Z;
    public List a0;
    public qt3 b0;

    public rj3(il0 il0Var, boolean z, FolderBackupStrategy folderBackupStrategy, int i) {
        FolderBackupStrategy folderBackupStrategy2;
        Object next;
        int i2 = (i & 2) != 0 ? R.string.backup : R.string.save;
        List entries = q05.getEntries();
        ArrayList arrayList = new ArrayList();
        z3 z3Var = (z3) entries;
        z3Var.getClass();
        w3 w3Var = new w3(z3Var);
        while (w3Var.hasNext()) {
            Object next2 = w3Var.next();
            if (((q05) next2).isCheckedInExpansion(6)) {
                arrayList.add(next2);
            }
        }
        List listI = arrayList.isEmpty() ? null : arrayList;
        listI = listI == null ? nc8.I(q05.DEVICE) : listI;
        if ((i & 16) != 0) {
            z3 z3Var2 = (z3) FolderBackupStrategy.getEntries();
            z3Var2.getClass();
            w3 w3Var2 = new w3(z3Var2);
            do {
                if (!w3Var2.hasNext()) {
                    next = null;
                    break;
                }
                next = w3Var2.next();
            } while (!((FolderBackupStrategy) next).isCheckedInExpansion());
            folderBackupStrategy2 = (FolderBackupStrategy) next;
            if (folderBackupStrategy2 == null) {
                folderBackupStrategy2 = FolderBackupStrategy.Single;
            }
        } else {
            folderBackupStrategy2 = folderBackupStrategy;
        }
        il0Var.getClass();
        folderBackupStrategy2.getClass();
        View viewInflate = View.inflate(il0Var, R.layout.folder_backup_dialog, null);
        int i3 = R.id.btn_action;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_action);
        if (materialButton != null) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewInflate;
            i3 = R.id.locations_section;
            LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.locations_section);
            if (linearLayout != null) {
                i3 = R.id.rv_locations;
                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_locations);
                if (quickRecyclerView != null) {
                    i3 = R.id.strategy_incremental;
                    View viewU = ms8.u(viewInflate, R.id.strategy_incremental);
                    if (viewU != null) {
                        cp1 cp1VarE = cp1.e(viewU);
                        i3 = R.id.strategy_single;
                        View viewU2 = ms8.u(viewInflate, R.id.strategy_single);
                        if (viewU2 != null) {
                            super(il0Var, new sj3(nestedScrollView, materialButton, linearLayout, quickRecyclerView, cp1VarE, cp1.e(viewU2)), 12);
                            this.Q = il0Var;
                            this.R = i2;
                            this.S = z;
                            this.T = new gv7(new ck(this, 18));
                            this.U = new gv7(new dk(this, 23));
                            this.V = new gv7(new ek(this, 25));
                            this.W = new gv7(new ah(this, 26));
                            this.X = new gv7(new bh(this, 22));
                            this.Y = new oi0(new ArrayList());
                            this.Z = folderBackupStrategy2;
                            this.a0 = listI;
                            return;
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
        throw null;
    }

    public final void j(ao3 ao3Var, FolderBackupStrategy folderBackupStrategy) {
        boolean z = folderBackupStrategy.isPremium() && !V.INSTANCE.getA();
        ao3Var.a(folderBackupStrategy.getTitleStringRes(), folderBackupStrategy.getDescriptionStringRes(), this.Z == folderBackupStrategy, folderBackupStrategy.isPremium(), z, new qj3(z, this, folderBackupStrategy));
    }

    public final void k(qt3 qt3Var) {
        this.b0 = qt3Var;
        LinearLayout linearLayout = (LinearLayout) this.V.getValue();
        boolean z = this.S;
        linearLayout.setVisibility(z ? 0 : 8);
        if (z) {
            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) this.W.getValue();
            il0 il0Var = this.Q;
            quickRecyclerView.setLayoutManager(new PreCachingGridLayoutManager(il0Var, 2));
            quickRecyclerView.setItemAnimator(null);
            oi0 oi0Var = this.Y;
            quickRecyclerView.setAdapter(oi0Var);
            boolean a = V.INSTANCE.getA();
            if (!a) {
                List list = this.a0;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((q05) obj) != q05.CLOUD) {
                        arrayList.add(obj);
                    }
                }
                boolean zIsEmpty = arrayList.isEmpty();
                List listI = arrayList;
                if (zIsEmpty) {
                    listI = nc8.I(q05.DEVICE);
                }
                this.a0 = listI;
            }
            ArrayList arrayList2 = new ArrayList();
            q05 q05Var = q05.DEVICE;
            String string = q05Var.toString();
            String string2 = il0Var.getString(R.string.device);
            string2.getClass();
            arrayList2.add(new li0(string, string2, (String) null, Integer.valueOf(R.drawable.ic_device), (Integer) null, this.a0.contains(q05Var), (ao) null, 212));
            q05 q05Var2 = q05.CLOUD;
            String string3 = q05Var2.toString();
            String string4 = il0Var.getString(R.string.cloud);
            string4.getClass();
            arrayList2.add(new li0(string3, string4, (String) null, Integer.valueOf(!a ? R.drawable.ic_flash_circle : R.drawable.ic_cloud), !a ? Integer.valueOf(R.color.premium) : null, a && this.a0.contains(q05Var2), !a ? new ii0(null, new lf(this, 20), 1) : ki0.c, 132));
            if (this.a0.isEmpty()) {
                ((li0) arrayList2.get(0)).f = true;
                this.a0 = nc8.I(q05Var);
            }
            r35.m(oi0Var, arrayList2);
            oi0Var.g = new hb(this, 3);
        }
        if (this.Z.isPremium() && !V.INSTANCE.getA()) {
            FolderBackupStrategy.Companion.getClass();
            this.Z = FolderBackupStrategy.Single;
        }
        l();
        gv7 gv7Var = this.X;
        ((MaterialButton) gv7Var.getValue()).setEnabled((z && this.a0.isEmpty()) ? false : true);
        MaterialButton materialButton = (MaterialButton) gv7Var.getValue();
        materialButton.setText(this.R);
        materialButton.setOnClickListener(new xd1(this, 5));
        show();
    }

    public final void l() {
        j((ao3) this.T.getValue(), FolderBackupStrategy.Single);
        j((ao3) this.U.getValue(), FolderBackupStrategy.Incremental);
    }
}
