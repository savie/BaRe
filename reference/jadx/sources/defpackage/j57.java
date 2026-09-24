package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialSplitButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.b;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SwiftSegmentLinearLayout;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class j57 extends gm7 {
    public final HomeActivity l;
    public final m37 m;
    public cz n;
    public u10 o;
    public v10 p;
    public px q;
    public zs r;
    public ScheduleItem.AppsLabels s;
    public ScheduleItem.Folders t;

    public j57(HomeActivity homeActivity, m37 m37Var) {
        super(null);
        this.l = homeActivity;
        this.m = m37Var;
    }

    public final void A(boolean z, ScheduleItem scheduleItem, mt3 mt3Var) {
        if (z) {
            Set setZ1 = el1.z1(scheduleItem.getRepeatDays());
            ev evVar = new ev(3, mt3Var, this);
            HomeActivity homeActivity = this.l;
            new a47(homeActivity, setZ1, evVar).G(homeActivity, null);
        }
    }

    public final void B(boolean z, SyncOption syncOption, mt3 mt3Var) {
        if (z) {
            lg7.F(this.l, syncOption, new hf(1, mt3Var, this));
        }
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        return ((b) m(i)).q.getItemType().getConstant();
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ((g57) fh6Var).r((b) m(i));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.schedule_card;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        Object next;
        Iterator it = ((z3) ScheduleItem.Type.getEntries()).iterator();
        do {
            w3 w3Var = (w3) it;
            if (!w3Var.hasNext()) {
                next = null;
                break;
            }
            next = w3Var.next();
        } while (((ScheduleItem.Type) next).getConstant() != i);
        ScheduleItem.Type type = (ScheduleItem.Type) next;
        if (type == null) {
            type = ScheduleItem.Type.AppsQuickActions;
        }
        int i2 = R.id.btn_schedule_menu;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_schedule_menu);
        if (materialButton != null) {
            i2 = R.id.btn_toggle_schedule;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(view, R.id.btn_toggle_schedule);
            if (materialButton2 != null) {
                i2 = R.id.card_header;
                if (((ConstraintLayout) ms8.u(view, R.id.card_header)) != null) {
                    i2 = R.id.card_header_segment;
                    if (((SwiftSegmentLinearLayout) ms8.u(view, R.id.card_header_segment)) != null) {
                        i2 = R.id.card_view;
                        if (((SwiftSegmentedCardGroup) ms8.u(view, R.id.card_view)) != null) {
                            i2 = R.id.container_schedule_id;
                            if (((LinearLayout) ms8.u(view, R.id.container_schedule_id)) != null) {
                                i2 = R.id.iv_down;
                                ImageView imageView = (ImageView) ms8.u(view, R.id.iv_down);
                                if (imageView != null) {
                                    i2 = R.id.iv_up;
                                    ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_up);
                                    if (imageView2 != null) {
                                        i2 = R.id.last_run_details;
                                        View viewU = ms8.u(view, R.id.last_run_details);
                                        if (viewU != null) {
                                            int i3 = R.id.bar;
                                            View viewU2 = ms8.u(viewU, R.id.bar);
                                            if (viewU2 != null) {
                                                i3 = R.id.iv_error;
                                                ImageView imageView3 = (ImageView) ms8.u(viewU, R.id.iv_error);
                                                if (imageView3 != null) {
                                                    ConstraintLayout constraintLayout = (ConstraintLayout) viewU;
                                                    TextView textView = (TextView) ms8.u(viewU, R.id.tv_run_details);
                                                    if (textView != null) {
                                                        kb2 kb2Var = new kb2(constraintLayout, viewU2, imageView3, textView);
                                                        i2 = R.id.rv_schedule_props;
                                                        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.rv_schedule_props);
                                                        if (quickRecyclerView != null) {
                                                            i2 = R.id.schedule_action_split_button;
                                                            if (((MaterialSplitButton) ms8.u(view, R.id.schedule_action_split_button)) != null) {
                                                                i2 = R.id.schedule_props_divider;
                                                                View viewU3 = ms8.u(view, R.id.schedule_props_divider);
                                                                if (viewU3 != null) {
                                                                    i2 = R.id.tv_card_subtitle;
                                                                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_card_subtitle);
                                                                    if (textView2 != null) {
                                                                        i2 = R.id.tv_card_title;
                                                                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_card_title);
                                                                        if (textView3 != null) {
                                                                            i2 = R.id.tv_index;
                                                                            TextView textView4 = (TextView) ms8.u(view, R.id.tv_index);
                                                                            if (textView4 != null) {
                                                                                z27 z27Var = new z27((ConstraintLayout) view, materialButton, materialButton2, imageView, imageView2, kb2Var, quickRecyclerView, viewU3, textView2, textView3, textView4);
                                                                                switch (i57.a[type.ordinal()]) {
                                                                                    case 1:
                                                                                        return new e57(this, z27Var);
                                                                                    case 2:
                                                                                        return new e57(this, z27Var);
                                                                                    case 3:
                                                                                        return new e57(this, z27Var);
                                                                                    case 4:
                                                                                        return new h57(this, z27Var);
                                                                                    case 5:
                                                                                        return new h57(this, z27Var);
                                                                                    case 6:
                                                                                        return new h57(this, z27Var);
                                                                                    case 7:
                                                                                        return new h57(this, z27Var);
                                                                                    case 8:
                                                                                        return new h57(this, z27Var);
                                                                                    default:
                                                                                        q.j();
                                                                                        return null;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        i3 = R.id.tv_run_details;
                                                    }
                                                }
                                            }
                                            f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(i3)));
                                            return null;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }

    public final void y(boolean z, List list, mt3 mt3Var) {
        if (z) {
            HomeActivity homeActivity = this.l;
            String string = homeActivity.getString(R.string.app_parts);
            string.getClass();
            ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((iu) it.next()).toString());
            }
            xx3.z(homeActivity, string, el1.z1(arrayList), true, new rf(4, mt3Var, this));
        }
    }

    public final void z(boolean z, List list, mt3 mt3Var) {
        if (z) {
            jh jhVar = new jh(3, mt3Var, this);
            HomeActivity homeActivity = this.l;
            homeActivity.getClass();
            list.getClass();
            ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((q05) it.next()).toString());
            }
            t05.a(homeActivity, el1.z1(arrayList), new ox(jhVar, 18));
        }
    }
}
