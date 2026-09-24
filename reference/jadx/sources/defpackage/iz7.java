package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class iz7 extends r35 {
    public final TaskActivity f;

    public iz7(TaskActivity taskActivity) {
        this.f = taskActivity;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        hz7 hz7Var = (hz7) fh6Var;
        rw6 rw6Var = (rw6) this.d.get(i);
        cy7 cy7Var = hz7Var.u;
        TaskActivity taskActivity = hz7Var.v.f;
        rw6Var.getClass();
        ex6 ex6Var = rw6Var.b;
        Class cls = rw6Var.a;
        int i2 = 0;
        int i3 = 1;
        if (cls.equals(c40.class)) {
            ex6Var.e(taskActivity, new ez(i2, new jf(i3, new fz(taskActivity, cy7Var), rw6Var)));
            return;
        }
        int i4 = 4;
        if (cls.equals(ff5.class)) {
            ex6Var.e(taskActivity, new tf(i4, new ox(new if5(taskActivity, cy7Var), 19)));
            return;
        }
        if (cls.equals(z11.class)) {
            ex6Var.e(taskActivity, new s30(i3, new v10(new b21(taskActivity, cy7Var), i3)));
            return;
        }
        if (cls.equals(wp8.class)) {
            ex6Var.e(taskActivity, new ur0(3, new k3(new yp8(taskActivity, cy7Var, 0), 22)));
        } else if (cls.equals(tt8.class)) {
            ex6Var.e(taskActivity, new ur0(i4, new k3(new yp8(taskActivity, cy7Var, 1), 23)));
        } else if (cls.equals(qp3.class)) {
            ex6Var.e(taskActivity, new s30(i4, new hq0(i3, new tp3(taskActivity, cy7Var), rw6Var)));
        } else {
            g84.i(rw6Var, "No binder for task=");
        }
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.task_card;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        int i2 = R.id.current_task_progress;
        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(view, R.id.current_task_progress);
        if (circularProgressIndicator != null) {
            i2 = R.id.details_container;
            ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(view, R.id.details_container);
            if (constraintLayout != null) {
                i2 = R.id.divider_traffic;
                View viewU = ms8.u(view, R.id.divider_traffic);
                if (viewU != null) {
                    i2 = R.id.header_container;
                    if (((ConstraintLayout) ms8.u(view, R.id.header_container)) != null) {
                        i2 = R.id.iv_icon;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) ms8.u(view, R.id.iv_icon);
                        if (shapeableImageView != null) {
                            i2 = R.id.middle;
                            if (((ConstraintLayout) ms8.u(view, R.id.middle)) != null) {
                                i2 = R.id.progress_bar;
                                LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ms8.u(view, R.id.progress_bar);
                                if (linearProgressIndicator != null) {
                                    i2 = R.id.rv_labels;
                                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.rv_labels);
                                    if (quickRecyclerView != null) {
                                        i2 = R.id.tv_card_title;
                                        TextView textView = (TextView) ms8.u(view, R.id.tv_card_title);
                                        if (textView != null) {
                                            i2 = R.id.tv_current_task_progress;
                                            TextView textView2 = (TextView) ms8.u(view, R.id.tv_current_task_progress);
                                            if (textView2 != null) {
                                                i2 = R.id.tv_header;
                                                TextView textView3 = (TextView) ms8.u(view, R.id.tv_header);
                                                if (textView3 != null) {
                                                    i2 = R.id.tv_header_subtitle;
                                                    TextView textView4 = (TextView) ms8.u(view, R.id.tv_header_subtitle);
                                                    if (textView4 != null) {
                                                        i2 = R.id.tv_percent;
                                                        TextView textView5 = (TextView) ms8.u(view, R.id.tv_percent);
                                                        if (textView5 != null) {
                                                            i2 = R.id.tv_progress_message;
                                                            TextView textView6 = (TextView) ms8.u(view, R.id.tv_progress_message);
                                                            if (textView6 != null) {
                                                                i2 = R.id.tv_traffic_progress_master;
                                                                TextView textView7 = (TextView) ms8.u(view, R.id.tv_traffic_progress_master);
                                                                if (textView7 != null) {
                                                                    i2 = R.id.tv_traffic_speed;
                                                                    TextView textView8 = (TextView) ms8.u(view, R.id.tv_traffic_speed);
                                                                    if (textView8 != null) {
                                                                        hz7 hz7Var = new hz7(this, new cy7((MaterialCardView) view, circularProgressIndicator, constraintLayout, viewU, shapeableImageView, linearProgressIndicator, quickRecyclerView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8));
                                                                        hz7Var.o(false);
                                                                        return hz7Var;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
}
