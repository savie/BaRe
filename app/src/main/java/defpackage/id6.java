package defpackage;

import android.os.Parcelable;
import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class id6 extends ol1 {
    public final Set e;
    public final eh2 f;
    public final jd6 k;
    public final QuickRecyclerView n;
    public final gd6 p;
    public final MaterialButton q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public id6(HomeActivity homeActivity, Set set, eh2 eh2Var) {
        super(11, false);
        homeActivity.getClass();
        set.getClass();
        this.e = set;
        this.f = eh2Var;
        View viewInflate = View.inflate(homeActivity, R.layout.quick_actions_dialog, null);
        int i = R.id.btn_action;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_action);
        if (materialButton != null) {
            i = R.id.recycler_view;
            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.recycler_view);
            if (quickRecyclerView != null) {
                i = R.id.tv_title;
                if (((TextView) ms8.u(viewInflate, R.id.tv_title)) != null) {
                    this.k = new jd6((NestedScrollView) viewInflate, materialButton, quickRecyclerView);
                    this.n = quickRecyclerView;
                    this.p = new gd6(null);
                    this.q = materialButton;
                    return;
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    public final void H(Set set) {
        Parcelable.Creator<zc6> creator = zc6.CREATOR;
        ArrayList arrayListA = yc6.a();
        ArrayList arrayList = new ArrayList(hl1.G0(arrayListA, 10));
        Iterator it = arrayListA.iterator();
        while (it.hasNext()) {
            arrayList.add(new hd6((zc6) it.next()));
        }
        if (set.contains("ID_BACKUP_ALL_APPS")) {
            set = sz8.Y("ID_BACKUP_ALL_APPS");
        } else if (set.contains("ID_BACKUP_SYNC_APPS")) {
            set = sz8.Y("ID_BACKUP_SYNC_APPS");
        }
        this.p.w(new fm7((List) arrayList, set, false, (String) null, 28), false);
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        QuickRecyclerView quickRecyclerView = this.n;
        quickRecyclerView.setItemAnimator(null);
        gd6 gd6Var = this.p;
        quickRecyclerView.setAdapter(gd6Var);
        gd6Var.g = new b30(this, 4);
        gd6Var.j = new lj2(3, gd6Var, this);
        Parcelable.Creator<zc6> creator = zc6.CREATOR;
        ArrayList arrayListA = yc6.a();
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListA) {
            if (this.e.contains(Integer.valueOf(((zc6) obj).b))) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((zc6) it.next()).a);
        }
        H(el1.z1(arrayList2));
        this.q.setOnClickListener(new es(this, 13));
        return this.k;
    }
}
