package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b41 extends ol1 {
    public final sa1 e;
    public final ArrayList f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b41(sa1 sa1Var, ArrayList arrayList) {
        super(11, false);
        arrayList.getClass();
        this.e = sa1Var;
        this.f = arrayList;
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        sa1 sa1Var = this.e;
        View viewInflate = View.inflate(sa1Var, R.layout.changelog_dialog, null);
        int i = R.id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.recycler_view);
        if (recyclerView != null) {
            i = R.id.tv_title;
            if (((TextView) ms8.u(viewInflate, R.id.tv_title)) != null) {
                km8 km8Var = new km8((NestedScrollView) viewInflate, recyclerView);
                recyclerView.setLayoutManager(new LinearLayoutManager(sa1Var));
                recyclerView.setItemViewCacheSize(10);
                recyclerView.setAdapter(new z31(sa1Var, this.f));
                return km8Var;
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }
}
