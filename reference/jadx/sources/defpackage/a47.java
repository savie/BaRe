package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import com.google.android.flexbox.FlexboxLayoutManager;
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
public final class a47 extends ol1 {
    public final Set e;
    public final ev f;
    public final tr9 k;
    public final QuickRecyclerView n;
    public final MaterialButton p;
    public final id2 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a47(HomeActivity homeActivity, Set set, ev evVar) {
        super(11, false);
        homeActivity.getClass();
        this.e = set;
        this.f = evVar;
        View viewInflate = View.inflate(homeActivity, R.layout.schedule_repeat_dialog, null);
        int i = R.id.btn_done;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_done);
        if (materialButton != null) {
            i = R.id.rv_days;
            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_days);
            if (quickRecyclerView != null) {
                this.k = new tr9((LinearLayout) viewInflate, materialButton, quickRecyclerView);
                this.n = quickRecyclerView;
                this.p = materialButton;
                this.q = new id2(homeActivity);
                return;
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        QuickRecyclerView quickRecyclerView = this.n;
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(quickRecyclerView.getContext());
        flexboxLayoutManager.i1(2);
        quickRecyclerView.setLayoutManager(flexboxLayoutManager);
        quickRecyclerView.setItemAnimator(null);
        ArrayList arrayListL = sz8.l();
        ArrayList arrayListL2 = sz8.l();
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListL2) {
            if (this.e.contains(Integer.valueOf(((jd2) obj).a))) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(String.valueOf(((jd2) it.next()).a));
        }
        fm7 fm7Var = new fm7((List) arrayListL, el1.z1(arrayList2), false, (String) null, 28);
        id2 id2Var = this.q;
        id2Var.w(fm7Var, false);
        id2Var.g = new f7(this, 6);
        quickRecyclerView.setAdapter(id2Var);
        this.p.setOnClickListener(new mf(this, 12));
        return this.k;
    }
}
