package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y27 {
    public final ScheduleData a;
    public final hj b;
    public wa c;
    public final gh2 d;
    public final MaterialButton e;
    public final w27 f;

    public y27(HomeActivity homeActivity, ScheduleData scheduleData, hj hjVar) {
        this.a = scheduleData;
        this.b = hjVar;
        Object obj = null;
        View viewInflate = View.inflate(homeActivity, R.layout.schedule_battery_req_dialog, null);
        int i = R.id.btn_done;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_done);
        if (materialButton != null) {
            i = R.id.rvItems;
            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rvItems);
            if (quickRecyclerView != null) {
                this.d = new gh2((LinearLayout) viewInflate, materialButton, quickRecyclerView);
                this.e = materialButton;
                w27 w27Var = new w27(null);
                this.f = w27Var;
                quickRecyclerView.setItemAnimator(null);
                int i2 = QuickRecyclerView.c1;
                quickRecyclerView.setLinearLayoutManager(1);
                w27Var.j = new f7(w27Var, 4);
                w27Var.l = new hq0(3, this, w27Var);
                quickRecyclerView.setAdapter(w27Var);
                int batteryPercentReq = scheduleData.getBatteryPercentReq();
                List entries = ScheduleData.a.getEntries();
                ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
                w3 w3Var = new w3((z3) entries);
                while (w3Var.hasNext()) {
                    ScheduleData.a aVar = (ScheduleData.a) w3Var.next();
                    arrayList.add(new x27(aVar, aVar == ScheduleData.a.MINIMUM_PERCENT ? batteryPercentReq : 50));
                }
                for (Object obj2 : arrayList) {
                    if (((x27) obj2).a == this.a.getBatteryReqEnum()) {
                        obj = obj2;
                        break;
                    }
                }
                x27 x27Var = (x27) obj;
                this.f.w(new fm7((List) arrayList, sz8.Y((x27Var == null ? (x27) el1.S0(arrayList) : x27Var).a.toString()), false, (String) null, 28), false);
                this.e.setOnClickListener(new h7(this, 13));
                return;
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }
}
